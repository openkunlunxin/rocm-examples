	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.section	.text._Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,"axG",@progbits,_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,comdat
	.protected	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE ; -- Begin function _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
	.globl	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
	.p2align	8
	.type	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,@function
_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE: ; @_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
; %bb.0:
	s_load_dword s6, s[0:1], 0x24 glc
	s_load_dwordx2 s[4:5], s[0:1], 0x10 glc
	v_and_b32_e32 v1, 0x3ff, v0
	v_bfe_u32 v0, v0, 10, 10
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	s_mul_i32 s3, s3, s7
	v_add_u32_e32 v2, s2, v1
	v_add_u32_e32 v6, s3, v0
	v_cmp_gt_u32_e32 vcc, s4, v2
	v_cmp_gt_u32_e64 s[2:3], s5, v6
	s_and_b64 s[2:3], vcc, s[2:3]
	s_and_saveexec_b64 s[6:7], s[2:3]
	s_cbranch_execz .LBB0_2
; %bb.1:
	s_load_dwordx4 s[0:3], s[0:1], 0x0 glc
	s_add_u32 s6, s4, 4
	s_addc_u32 s7, 0, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s5, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s0
	v_mov_b32_e32 v1, s1
	v_mad_u64_u32 v[4:5], s[0:1], s6, v6, 0
	v_mov_b32_e32 v8, v5
	v_mad_u64_u32 v[8:9], s[0:1], s7, v6, v[8:9]
	v_mov_b32_e32 v5, v8
	v_lshl_add_u64 v[0:1], v[4:5], 2, v[0:1]
	v_lshlrev_b64 v[4:5], 2, v[2:3]
	v_lshl_add_u64 v[20:21], v[0:1], 0, v[4:5]
	global_load_dwordx4 v[0:3], v[20:21], off sc0 nt
	v_lshl_add_u64 v[12:13], s[6:7], 3, v[20:21]
	s_lshl_b64 s[0:1], s[6:7], 2
	v_lshl_add_u64 v[22:23], v[12:13], 0, s[0:1]
	v_lshl_add_u64 v[24:25], v[22:23], 0, s[0:1]
	global_load_dwordx4 v[8:11], v[12:13], off sc0 nt
	global_load_dword v7, v[12:13], off offset:16 sc0 nt
	v_lshl_add_u64 v[28:29], s[4:5], 2, v[20:21]
	global_load_dwordx4 v[12:15], v[22:23], off sc0 nt
	global_load_dwordx4 v[16:19], v[24:25], off sc0 nt
	global_load_dword v32, v[20:21], off offset:16 sc0 nt
	global_load_dword v26, v[22:23], off offset:16 sc0 nt
	global_load_dword v31, v[24:25], off offset:16 sc0 nt
	s_nop 0
	global_load_dwordx4 v[20:23], v[28:29], off offset:16 sc0 nt
	global_load_dword v33, v[28:29], off offset:32 sc0 nt
	v_mad_u64_u32 v[24:25], s[0:1], v6, s4, 0
	s_getpc_b64 s[0:1]
	s_add_u32 s0, s0, d_mask@rel32@lo+52
	s_addc_u32 s1, s1, d_mask@rel32@hi+60
	s_getpc_b64 s[28:29]
	s_add_u32 s28, s28, d_mask@rel32@lo+36
	s_addc_u32 s29, s29, d_mask@rel32@hi+44
	s_getpc_b64 s[30:31]
	s_add_u32 s30, s30, d_mask@rel32@lo+4
	s_addc_u32 s31, s31, d_mask@rel32@hi+12
	s_getpc_b64 s[34:35]
	s_add_u32 s34, s34, d_mask@rel32@lo+64
	s_addc_u32 s35, s35, d_mask@rel32@hi+72
	s_load_dwordx4 s[20:23], s[0:1], 0x0 glc
	s_load_dwordx4 s[24:27], s[28:29], 0x0 glc
	s_load_dwordx8 s[4:11], s[30:31], 0x0 glc
	s_load_dwordx8 s[12:19], s[34:35], 0x0 glc
	s_load_dwordx2 s[36:37], s[34:35], 0x20 glc
	v_mov_b32_e32 v28, s2
	v_mov_b32_e32 v29, s3
	v_lshl_add_u64 v[24:25], v[24:25], 2, v[28:29]
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s0, s21
	s_mov_b32 s1, s22
	s_waitcnt vmcnt(9)
	v_fma_f32 v28, v0, s4, 0
	v_fmac_f32_e32 v28, s5, v1
	v_fmac_f32_e32 v28, s6, v2
	v_fmac_f32_e32 v28, s7, v3
	s_waitcnt vmcnt(8)
	v_mov_b32_e32 v6, v11
	s_waitcnt vmcnt(7)
	v_pk_mul_f32 v[0:1], v[6:7], s[0:1]
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v27, v16
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v28, s8, v32
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v28, s9, v20
	v_fmac_f32_e32 v28, s10, v21
	v_fmac_f32_e32 v28, s11, v22
	v_fmac_f32_e32 v28, s24, v23
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v28, s25, v33
	v_fmac_f32_e32 v28, s26, v8
	v_fmac_f32_e32 v28, s27, v9
	v_fmac_f32_e32 v28, s20, v10
	v_add_f32_e32 v0, v28, v0
	v_pk_mul_f32 v[6:7], v[12:13], s[12:13]
	v_add_f32_e32 v0, v0, v1
	v_add_f32_e32 v0, v0, v6
	v_pk_mul_f32 v[12:13], v[14:15], s[14:15]
	v_add_f32_e32 v0, v0, v7
	v_add_f32_e32 v0, v0, v12
	v_pk_mul_f32 v[14:15], v[26:27], s[16:17]
	v_add_f32_e32 v0, v0, v13
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v3, v18
	v_add_f32_e32 v0, v0, v14
	v_pk_mul_f32 v[2:3], v[2:3], s[18:19]
	v_add_f32_e32 v0, v0, v15
	v_mov_b32_e32 v30, v19
	v_add_f32_e32 v0, v0, v2
	v_pk_mul_f32 v[16:17], v[30:31], s[36:37]
	v_add_f32_e32 v0, v0, v3
	v_add_f32_e32 v0, v0, v16
	v_add_f32_e32 v2, v0, v17
	v_lshl_add_u64 v[0:1], v[24:25], 0, v[4:5]
	global_store_dword v[0:1], v2, off sc0 nt
.LBB0_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
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
		.amdhsa_next_free_vgpr 34
		.amdhsa_next_free_sgpr 38
		.amdhsa_accum_offset 36
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
	.section	.text._Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,"axG",@progbits,_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE,comdat
.Lfunc_end0:
	.size	_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE, .Lfunc_end0-_Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
                                        ; -- End function
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.num_vgpr, 34
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.num_agpr, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.numbered_sgpr, 38
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.num_named_barrier, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.private_seg_size, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.uses_vcc, 1
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.uses_flat_scratch, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.has_dyn_sized_stack, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.has_recursion, 0
	.set _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 668
; TotalNumSgprs: 44
; NumVgprs: 34
; NumAgprs: 0
; TotalNumVgprs: 34
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 34
; AccumOffset: 36
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 1
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 8
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.section	.AMDGPU.csdata,"",@progbits
	.protected	d_mask                  ; @d_mask
	.type	d_mask,@object
	.section	.rodata,"a",@progbits
	.globl	d_mask
	.p2align	4, 0x0
d_mask:
	.zero	100
	.size	d_mask, 100

	.type	__hip_cuid_ce19e40f823d82de,@object ; @__hip_cuid_ce19e40f823d82de
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_ce19e40f823d82de
__hip_cuid_ce19e40f823d82de:
	.byte	0                               ; 0x0
	.size	__hip_cuid_ce19e40f823d82de, 1

	.ident	"AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.0 26014 7b800a19466229b8479a78de19143dc33c3ab9b5)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym d_mask
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
        .size:           8
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
    .name:           _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         _Z11convolutionILm5EEvPKfPf15HIP_vector_typeIjLj2EE.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     34
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
