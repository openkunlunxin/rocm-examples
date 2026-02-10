#include <iostream>
// hip header file
#include "hip/hip_runtime.h"

#define DIV 1
#define INTV 1//intervals between threads
#define NUM_ADD 10
#define DIM_GRID 1//1D, how many thread block in a grid
#define DIM_BLOCK 1  // 1D, how many threads in a thread block
#define NUM     (INTV*DIM_GRID * DIM_BLOCK)
#define M       DIM_GRID
#define N       DIM_BLOCK

__global__ void k1(int * output,
                   int n)
{
        int block_idx = blockIdx.x;
        int lid = threadIdx.x;
        int WGS = blockDim.x;
        if((block_idx < M) && (lid<N)){
                for(int i = 0;i < n ; i++){
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
                        atomicAdd(&output[block_idx*WGS+(lid/DIV)*INTV],1);
        }
        }
}


int main(int argc,char*argv[]) {
    int* sum_h;
    int* sum_d;

    hipDeviceProp_t devProp;
    hipGetDeviceProperties(&devProp, 0);

    printf("\n\n===================\nresult from %s\n",argv[0]);
    std::cout << "Device name " << devProp.name << std::endl;

    hipEvent_t start, stop;
    hipEventCreate(&start);
    hipEventCreate(&stop);
    float eventMs = 1.0f;

    int i;
    int errors;

    //
    sum_h = (int*)malloc(NUM * sizeof(int));

    for( i = 0;i< NUM;i++){
            sum_h[i] = 0;
    }

    // allocate the memory on the device side
    hipMalloc((void**)&sum_d, NUM * sizeof(int));

    // Record the start event
    hipEventRecord(start, NULL);

    // Memory transfer from host to device
    hipMemcpy(sum_d, sum_h, NUM * sizeof(int), hipMemcpyHostToDevice);

    // Record the stop event
    hipEventRecord(stop, NULL);
    hipEventSynchronize(stop);

    hipEventElapsedTime(&eventMs, start, stop);

    printf("hipMemcpyHostToDevice time taken  = %6.3fms\n", eventMs);

    // Record the start event
    hipEventRecord(start, NULL);

    // Lauching kernel from host
    hipLaunchKernelGGL(k1,dim3(DIM_GRID),dim3(DIM_BLOCK),0,0,sum_d,NUM_ADD);

    // Record the stop event
    hipEventRecord(stop, NULL);
    hipEventSynchronize(stop);

    hipEventElapsedTime(&eventMs, start, stop);

    printf("kernel Execution time             = %6.3fms\n", eventMs);

    // Record the start event
    hipEventRecord(start, NULL);

    // Memory transfer from device to host
    hipMemcpy(sum_h, sum_d ,NUM * sizeof(int), hipMemcpyDeviceToHost);

    // Record the stop event
    hipEventRecord(stop, NULL);
    hipEventSynchronize(stop);

    hipEventElapsedTime(&eventMs, start, stop);

    printf("hipMemcpyDeviceToHost time taken  = %6.3fms\n", eventMs);

    for(i=0;i<NUM;i=i+INTV){
        printf("sum_h[%2d] = %0d\n",i,sum_h[i]);
    }

    // free the resources on device side
    hipFree(sum_d);

    // free the resources on host side
    free(sum_h);

    return 0;
}
