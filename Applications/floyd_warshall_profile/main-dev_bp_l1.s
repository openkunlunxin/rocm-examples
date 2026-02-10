	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z21floyd_warshall_kernelPjS_jj ; -- Begin function _Z21floyd_warshall_kernelPjS_jj
	.globl	_Z21floyd_warshall_kernelPjS_jj
	.p2align	8
	.type	_Z21floyd_warshall_kernelPjS_jj,@function
_Z21floyd_warshall_kernelPjS_jj:        ; @_Z21floyd_warshall_kernelPjS_jj
; %bb.0:
	s_load_dword s10, s[0:1], 0x24 glc
	s_load_dwordx4 s[4:7], s[0:1], 0x0 glc
	s_load_dwordx2 s[8:9], s[0:1], 0x10 glc
	v_and_b32_e32 v1, 0x3ff, v0
	v_bfe_u32 v0, v0, 10, 10
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s0, s10, 16
	s_and_b32 s1, s10, 0xffff
	s_mul_i32 s3, s3, s0
	s_mul_i32 s2, s2, s1
	v_add_u32_e32 v0, s3, v0
	v_add_u32_e32 v6, s2, v1
	v_mul_lo_u32 v4, v0, s8
	v_mov_b32_e32 v1, 0
	v_add_u32_e32 v0, v4, v6
	v_add_u32_e32 v4, s9, v4
	v_mov_b32_e32 v5, v1
	s_mul_i32 s0, s9, s8
	v_lshl_add_u64 v[4:5], v[4:5], 2, s[4:5]
	v_add_u32_e32 v6, s0, v6
	v_mov_b32_e32 v7, v1
	v_lshl_add_u64 v[2:3], v[0:1], 2, s[4:5]
	v_lshl_add_u64 v[6:7], v[6:7], 2, s[4:5]
	global_load_dword v8, v[4:5], off sc0 nt
	global_load_dword v9, v[6:7], off sc0 nt
	global_load_dword v10, v[2:3], off sc0 nt
	s_waitcnt vmcnt(1)
	v_add_u32_e32 v4, v9, v8
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc, v4, v10
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_2
; %bb.1:
	v_mov_b32_e32 v6, s6
	v_mov_b32_e32 v7, s7
	v_lshl_add_u64 v[0:1], v[0:1], 2, v[6:7]
	global_store_dword v[2:3], v4, off sc0 nt
	v_mov_b32_e32 v2, s9
	global_store_dword v[0:1], v2, off sc0 nt
.LBB0_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z21floyd_warshall_kernelPjS_jj
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 280
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_kernarg_preload_length 0
		.amdhsa_user_sgpr_kernarg_preload_offset 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 1
		.amdhsa_next_free_vgpr 11
		.amdhsa_next_free_sgpr 11
		.amdhsa_accum_offset 12
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_tg_split 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z21floyd_warshall_kernelPjS_jj, .Lfunc_end0-_Z21floyd_warshall_kernelPjS_jj
                                        ; -- End function
	.set _Z21floyd_warshall_kernelPjS_jj.num_vgpr, 11
	.set _Z21floyd_warshall_kernelPjS_jj.num_agpr, 0
	.set _Z21floyd_warshall_kernelPjS_jj.numbered_sgpr, 11
	.set _Z21floyd_warshall_kernelPjS_jj.num_named_barrier, 0
	.set _Z21floyd_warshall_kernelPjS_jj.private_seg_size, 0
	.set _Z21floyd_warshall_kernelPjS_jj.uses_vcc, 1
	.set _Z21floyd_warshall_kernelPjS_jj.uses_flat_scratch, 0
	.set _Z21floyd_warshall_kernelPjS_jj.has_dyn_sized_stack, 0
	.set _Z21floyd_warshall_kernelPjS_jj.has_recursion, 0
	.set _Z21floyd_warshall_kernelPjS_jj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 220
; TotalNumSgprs: 17
; NumVgprs: 11
; NumAgprs: 0
; TotalNumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 17
; NumVGPRsForWavesPerEU: 11
; AccumOffset: 12
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 2
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.p2alignl 6, 3212836864
	.fill 256, 4, 3212836864
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.text
	.type	__hip_cuid_ce19e40f823d82de,@object ; @__hip_cuid_ce19e40f823d82de
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_ce19e40f823d82de
__hip_cuid_ce19e40f823d82de:
	.byte	0                               ; 0x0
	.size	__hip_cuid_ce19e40f823d82de, 1

	.ident	"AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.0 26014 7b800a19466229b8479a78de19143dc33c3ab9b5)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_ce19e40f823d82de
	.amdgpu_metadata
---
amdhsa.kernels:
  - .agpr_count:     0
    .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
      - .offset:         20
        .size:           4
        .value_kind:     by_value
      - .offset:         24
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         28
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         36
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         38
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         40
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         42
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         44
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         46
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         88
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 280
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z21floyd_warshall_kernelPjS_jj
    .private_segment_fixed_size: 0
    .sgpr_count:     17
    .sgpr_spill_count: 0
    .symbol:         _Z21floyd_warshall_kernelPjS_jj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     11
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
