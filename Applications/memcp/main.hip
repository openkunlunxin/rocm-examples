#include "hip/hip_runtime.h"
#include <iostream>
#include <hip/hip_runtime.h>

#define CHECK_CUDA(call) \
    do { \
        hipError_t err = call; \
        if (err != hipSuccess) { \
            std::cerr << "CUDA error at " << __FILE__ << ":" << __LINE__ << ": " \
                      << hipGetErrorString(err) << std::endl; \
            exit(EXIT_FAILURE); \
        } \
    } while (0)


__device__ __forceinline__ int load_global_glc(int* ptr) {
    int ret;
    asm volatile ("global_load_dword %0, %1, off sc0 nt sc1\n\t"
                  "s_waitcnt vmcnt(0)" 
                  : "=v"(ret) : "v"(ptr));
    return ret;
}

__device__ __forceinline__ int load_global(int* ptr) {
    int ret;
    asm volatile ("global_load_dword %0, %1, off\n\t"
                  "s_waitcnt vmcnt(0)"
                  : "=v"(ret) : "v"(ptr));
    return ret;
}

// device kernel: use global load and store
__global__ void device_memcpy_kernel(int* __restrict__ dst, int* __restrict__ src, size_t N) {
    size_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < N) {
        // global load from src, global store to dst
        // dst[idx] = __atomic_load_n(&src[idx],__ATOMIC_ACQUIRE) + 1;
	dst[idx] = src[idx] + 1;

	// dst[idx] = load_global(&src[0]) + 1;
    }
}


int main() {
    const size_t N = 1 << 30; // 1M ints, about 4MB
    int *h_src = nullptr;
    int *h_dst = nullptr;
    int *d_src = nullptr;
    int *d_dst = nullptr;

    // host memory alloc
    h_src = (int*)malloc(N * sizeof(int));
    h_dst = (int*)malloc(N * sizeof(int));

    for (size_t i = 0; i < N; ++i)
        h_src[i] = static_cast<int>(i);

    // device memory alloc
    CHECK_CUDA(hipMalloc(&d_src, N * sizeof(int)));
    CHECK_CUDA(hipMalloc(&d_dst, N * sizeof(int)));

    // host2device: init src
    CHECK_CUDA(hipMemcpy(d_src, h_src, N * sizeof(int), hipMemcpyHostToDevice));

    // launch kernel: device-to-device copy
    int threads = 256;
    int blocks = (N + threads - 1) / threads;
    device_memcpy_kernel<<<blocks, threads>>>(d_dst, d_src, N);

    CHECK_CUDA(hipGetLastError());
    CHECK_CUDA(hipDeviceSynchronize());

    // device2host: copy result back to host
    CHECK_CUDA(hipMemcpy(h_dst, d_dst, N * sizeof(int), hipMemcpyDeviceToHost));
    CHECK_CUDA(hipMemcpy(h_src, d_src, N * sizeof(int), hipMemcpyDeviceToHost));

    // verify
    bool correct = true;
    for (size_t i = 0; i < 10; ++i) {
        std::cout << h_src[i] << " \t:\t " << h_dst[i] << std::endl;
    }

    for (size_t i = 0; i < N; ++i) {
        if (h_src[i] + 1 != h_dst[i]) {
            std::cerr << "Mismatch at " << i << ": " << h_src[i] << " != " << h_dst[i] << std::endl;
            correct = false;
            break;
        }
    }
    if (correct)
        std::cout << "Device-to-device memcpy (global load/store) success!" << std::endl;

    // clean up
    free(h_src);
    free(h_dst);
    CHECK_CUDA(hipFree(d_src));
    CHECK_CUDA(hipFree(d_dst));

    return 0;
}
