# MIT License
#
# Copyright (c) 2024 Advanced Micro Devices, Inc. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

EXAMPLE := main
COMMON_INCLUDE_DIR := ../../Common
EXTERNAL_DIR := ../../External
GPU_RUNTIME ?= HIP

# HIP variables
ROCM_INSTALL_DIR ?= /opt/rocm
HIP_INCLUDE_DIR  := $(ROCM_INSTALL_DIR)/include

HIPCXX ?= $(ROCM_INSTALL_DIR)/bin/hipcc

# Common variables and flags
CXX_STD   := c++17
ICXXFLAGS := -std=$(CXX_STD)
ICPPFLAGS := -I $(COMMON_INCLUDE_DIR) -I $(EXTERNAL_DIR)
ILDFLAGS  :=
ILDLIBS   :=

ifeq ($(GPU_RUNTIME), CUDA)
  ICXXFLAGS += -x cu
  ICPPFLAGS += -isystem $(HIP_INCLUDE_DIR)
else ifeq ($(GPU_RUNTIME), HIP)
  CXXFLAGS ?= -Wall -Wextra
else
  $(error GPU_RUNTIME is set to "$(GPU_RUNTIME)". GPU_RUNTIME must be either CUDA or HIP)
endif

ICXXFLAGS += $(CXXFLAGS)
ICPPFLAGS += $(CPPFLAGS)
ICPPFLAGS += -save-temps
ILDFLAGS  += $(LDFLAGS)
ILDLIBS   += $(LDLIBS)

ASM_BP:  $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.s

DEV_BP: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.o

DEV_EM_BP: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_em_bp.o

HIPFB_BP: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.hipfb

BIN_BP: $(EXAMPLE)_bp

BIN: $(EXAMPLE)

$(EXAMPLE).hip: $(EXAMPLE).cu
	hipify-perl $< > $@

$(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.s: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942.s
	python3 add_bypass_l1.py

#$(EXAMPLE).s: main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
#	$(HIPCXX) -S --cuda-device-only --offload-arch=gfx942 $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

#$(EXAMPLE)_host.o: main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
#	$(HIPCXX) -c --cuda-host-only $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

$(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.o: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.s $(EXAMPLE)
	clang -target amdgcn-amd-amdhsa -mcpu=gfx942 $< -o $@

$(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.hipfb: $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.o
	clang-offload-bundler -type=o -bundle-align=4096 -targets=host-x86_64-unknown-linux-gnu,hipv4-amdgcn-amd-amdhsa--gfx942 -input=/dev/null -input=$<  -output=$@

$(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_em_bp.o: hip_obj_gen.mcin $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_bp.hipfb
	llvm-mc -triple x86_64-unknown-linux-gnu -o $@ $< --filetype=obj

$(EXAMPLE)_bp: $(EXAMPLE)-host-x86_64-unknown-linux-gnu.o $(EXAMPLE)-hip-amdgcn-amd-amdhsa-gfx942_em_bp.o
	hipcc $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $^ $(ILDLIBS)


$(EXAMPLE): main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
	$(HIPCXX) $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

clean:
	$(RM) $(EXAMPLE) main-hip* *.hipfb main-host* application* $(EXAMPLE)_bp

profile: 
	rocprof-compute profile -n main -- ./main
	rocprof-compute profile -n main_bp -- ./main_bp
	rocprof-compute analyze -p workloads/main/MI300X_A1/ -b 3
	rocprof-compute analyze -p workloads/main_bp/MI300X_A1/ -b 3

.PHONY: clean
