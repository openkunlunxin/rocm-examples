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

EXAMPLE := atomic_test
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
ILDFLAGS  += $(LDFLAGS)
ILDLIBS   += $(LDLIBS)

ASM: $(EXAMPLE).s

HOSTBIN: $(EXAMPLE)_host.o

DEV_BP: $(EXAMPLE)_dev_bp.o

DEV_EM_BP: $(EXAMPLE)_dev_em_bp.o

HIPFB_BP: $(EXAMPLE)_dev_bp.hipfb

BIN_BP: $(EXAMPLE)_bp

BIN: $(EXAMPLE)

$(EXAMPLE).s: main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
	$(HIPCXX) -S --cuda-device-only --offload-arch=gfx942 $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

$(EXAMPLE)_host.o: main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
	$(HIPCXX) -c --cuda-host-only $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

$(EXAMPLE)_dev_bp.o: $(EXAMPLE)_bp.s
	clang -target amdgcn-amd-amdhsa -mcpu=gfx942 $< -o $@

$(EXAMPLE)_dev_bp.hipfb: $(EXAMPLE)_dev_bp.o
	clang-offload-bundler -type=o -bundle-align=4096 -targets=host-x86_64-unknown-linux-gnu,hipv4-amdgcn-amd-amdhsa--gfx942 -input=/dev/null -input=$<  -output=$@

$(EXAMPLE)_dev_em_bp.o: hip_obj_gen.mcin
	llvm-mc -triple x86_64-unknown-linux-gnu -o $@ hip_obj_gen.mcin --filetype=obj

$(EXAMPLE)_bp: $(EXAMPLE)_host.o $(EXAMPLE)_dev_em_bp.o
	hipcc $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $^ $(ILDLIBS)


$(EXAMPLE): main.hip $(COMMON_INCLUDE_DIR)/example_utils.hpp $(EXTERNAL_DIR)/CmdParser/cmdparser.hpp
	$(HIPCXX) $(ICXXFLAGS) $(ICPPFLAGS) $(ILDFLAGS) -o $@ $< $(ILDLIBS)

clean:
	$(RM) $(EXAMPLE)

.PHONY: clean
