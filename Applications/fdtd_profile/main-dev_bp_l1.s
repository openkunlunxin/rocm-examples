	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z19apply_source_kernel10FDTD_SetupPff ; -- Begin function _Z19apply_source_kernel10FDTD_SetupPff
	.globl	_Z19apply_source_kernel10FDTD_SetupPff
	.p2align	8
	.type	_Z19apply_source_kernel10FDTD_SetupPff,@function
_Z19apply_source_kernel10FDTD_SetupPff: ; @_Z19apply_source_kernel10FDTD_SetupPff
; %bb.0:
	v_or_b32_e32 v0, s2, v0
	s_mov_b32 s3, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB0_2
; %bb.1:
	s_load_dwordx2 s[4:5], s[0:1], 0x0 glc
	s_load_dword s2, s[0:1], 0x28 glc
	s_load_dwordx2 s[6:7], s[0:1], 0x20 glc
	s_load_dwordx2 s[8:9], s[0:1], 0x40 glc
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s2, s5, s2
	s_add_i32 s2, s2, s7
	s_mul_i32 s2, s2, s4
	s_add_i32 s2, s2, s6
	s_lshl_b64 s[2:3], s[2:3], 2
	s_add_u32 s2, s8, s2
	s_addc_u32 s3, s9, s3
	s_load_dword s4, s[2:3], 0x0 glc
	s_load_dword s5, s[0:1], 0x48 glc
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s4
	v_add_f32_e32 v1, s5, v1
	global_store_dword v0, v1, s[2:3] sc0 nt
.LBB0_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z19apply_source_kernel10FDTD_SetupPff
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 76
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 2
		.amdhsa_next_free_sgpr 10
		.amdhsa_accum_offset 4
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
	.size	_Z19apply_source_kernel10FDTD_SetupPff, .Lfunc_end0-_Z19apply_source_kernel10FDTD_SetupPff
                                        ; -- End function
	.set _Z19apply_source_kernel10FDTD_SetupPff.num_vgpr, 2
	.set _Z19apply_source_kernel10FDTD_SetupPff.num_agpr, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.numbered_sgpr, 10
	.set _Z19apply_source_kernel10FDTD_SetupPff.num_named_barrier, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.private_seg_size, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.uses_vcc, 1
	.set _Z19apply_source_kernel10FDTD_SetupPff.uses_flat_scratch, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.has_dyn_sized_stack, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.has_recursion, 0
	.set _Z19apply_source_kernel10FDTD_SetupPff.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 128
; TotalNumSgprs: 16
; NumVgprs: 2
; NumAgprs: 0
; TotalNumVgprs: 2
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 16
; NumVGPRsForWavesPerEU: 2
; AccumOffset: 4
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 0
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_ ; -- Begin function _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.globl	_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.p2align	8
	.type	_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_,@function
_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_: ; @_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
; %bb.0:
	s_load_dwordx2 s[6:7], s[0:1], 0xc4 glc
	s_load_dwordx4 s[8:11], s[0:1], 0x0 glc
	v_and_b32_e32 v1, 0x3ff, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s7, 0xffff
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	v_add_u32_e32 v2, s2, v1
	s_mul_i32 s3, s3, s7
	v_bfe_u32 v1, v0, 10, 10
	v_add_u32_e32 v4, s3, v1
	s_mul_i32 s4, s4, s5
	v_bfe_u32 v0, v0, 20, 10
	s_add_i32 s2, s9, -1
	v_add_u32_e32 v0, s4, v0
	v_cmp_gt_u32_e32 vcc, s8, v2
	v_cmp_gt_u32_e64 s[2:3], s2, v4
	s_add_i32 s4, s10, -1
	s_and_b64 s[2:3], vcc, s[2:3]
	v_cmp_gt_u32_e32 vcc, s4, v0
	s_and_b64 s[2:3], s[2:3], vcc
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB1_2
; %bb.1:
	s_load_dwordx2 s[2:3], s[0:1], 0xb0 glc
	s_load_dwordx4 s[4:7], s[0:1], 0xa0 glc
	s_load_dwordx2 s[10:11], s[0:1], 0x40 glc
	v_mad_u64_u32 v[0:1], s[12:13], v0, s9, v[4:5]
	v_mad_u64_u32 v[4:5], s[12:13], v0, s8, v[2:3]
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v5, v7
	v_add_u32_e32 v6, s8, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v0, s9, v0
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[8:9], v[6:7], 2, s[6:7]
	v_lshl_add_u64 v[10:11], s[6:7], 0, v[4:5]
	v_mad_u64_u32 v[0:1], s[6:7], v0, s8, v[2:3]
	v_mov_b32_e32 v1, v7
	v_lshl_add_u64 v[0:1], v[0:1], 2, s[2:3]
	v_lshl_add_u64 v[2:3], s[2:3], 0, v[4:5]
	s_load_dwordx2 s[2:3], s[0:1], 0x58 glc
	global_load_dword v6, v[8:9], off sc0 nt
	global_load_dword v12, v[10:11], off sc0 nt
	v_lshl_add_u64 v[8:9], s[10:11], 0, v[4:5]
	global_load_dword v10, v[8:9], off sc0 nt
	global_load_dword v7, v[0:1], off sc0 nt
	global_load_dword v13, v[2:3], off sc0 nt
	v_lshl_add_u64 v[2:3], s[4:5], 0, v[4:5]
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[0:1], s[2:3], 0, v[4:5]
	global_load_dword v0, v[0:1], off sc0 nt
	v_mov_b32_e32 v1, 2.0
	global_load_dword v8, v[2:3], off sc0 nt
	s_load_dword s6, s[0:1], 0x34 glc
	s_load_dwordx2 s[4:5], s[0:1], 0x10 glc
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s6
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v5, 0x35a8a9b8, v10
	s_waitcnt vmcnt(2)
	v_pk_add_f32 v[6:7], v[6:7], v[12:13] neg_lo:[0,1] neg_hi:[0,1]
	s_nop 0
	v_div_scale_f32 v9, s[0:1], s5, s5, v7
	v_div_scale_f32 v11, s[0:1], s4, s4, v6
	s_waitcnt vmcnt(1)
	v_pk_mul_f32 v[0:1], v[4:5], v[0:1]
	v_rcp_f32_e32 v4, v9
	v_rcp_f32_e32 v13, v11
	v_div_scale_f32 v14, s[2:3], v1, v1, v0
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v17, -v9, v4, 1.0
	v_div_scale_f32 v10, vcc, v7, s5, v7
	v_fma_f32 v18, -v11, v13, 1.0
	v_fmac_f32_e32 v4, v17, v4
	v_div_scale_f32 v12, s[0:1], v6, s4, v6
	v_fmac_f32_e32 v13, v18, v13
	v_fma_f32 v17, -v14, v16, 1.0
	v_mul_f32_e32 v18, v10, v4
	v_mul_f32_e32 v19, v12, v13
	v_fmac_f32_e32 v16, v17, v16
	v_fma_f32 v17, -v9, v18, v10
	v_fma_f32 v20, -v11, v19, v12
	v_fmac_f32_e32 v18, v17, v4
	v_div_scale_f32 v15, s[2:3], v0, v1, v0
	v_fmac_f32_e32 v19, v20, v13
	v_fma_f32 v9, -v9, v18, v10
	v_mul_f32_e32 v21, v15, v16
	v_fma_f32 v10, -v11, v19, v12
	v_div_fmas_f32 v4, v9, v4, v18
	s_mov_b64 vcc, s[0:1]
	v_fma_f32 v17, -v14, v21, v15
	v_div_fixup_f32 v4, v4, s5, v7
	v_div_fmas_f32 v7, v10, v13, v19
	v_fmac_f32_e32 v21, v17, v16
	v_div_fixup_f32 v6, v7, s4, v6
	v_fma_f32 v9, -v14, v21, v15
	s_mov_b64 vcc, s[2:3]
	v_sub_f32_e32 v4, v6, v4
	v_div_fmas_f32 v7, v9, v16, v21
	v_div_scale_f32 v6, s[0:1], v5, v5, v4
	v_div_fixup_f32 v0, v7, v1, v0
	v_rcp_f32_e32 v7, v6
	v_div_scale_f32 v9, vcc, v4, v5, v4
	v_sub_f32_e32 v1, 1.0, v0
	v_fma_f32 v10, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v10, v7
	v_mul_f32_e32 v10, v9, v7
	v_fma_f32 v11, -v6, v10, v9
	v_fmac_f32_e32 v10, v11, v7
	v_fma_f32 v6, -v6, v10, v9
	v_div_fmas_f32 v6, v6, v7, v10
	v_div_fixup_f32 v4, v6, v5, v4
	v_mul_f32_e32 v4, s6, v4
	v_add_f32_e32 v0, 1.0, v0
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v8, v1, -v4
	v_div_scale_f32 v4, s[0:1], v0, v0, v1
	v_rcp_f32_e32 v5, v4
	v_div_scale_f32 v6, vcc, v1, v0, v1
	v_fma_f32 v7, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v7, v5
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v0, v4, v0, v1
	global_store_dword v[2:3], v0, off sc0 nt
.LBB1_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 440
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
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 22
		.amdhsa_next_free_sgpr 14
		.amdhsa_accum_offset 24
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
.Lfunc_end1:
	.size	_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_, .Lfunc_end1-_Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
                                        ; -- End function
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_vgpr, 22
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_agpr, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.numbered_sgpr, 14
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_named_barrier, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.private_seg_size, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_vcc, 1
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_flat_scratch, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_dyn_sized_stack, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_recursion, 0
	.set _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 808
; TotalNumSgprs: 20
; NumVgprs: 22
; NumAgprs: 0
; TotalNumVgprs: 22
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 22
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 5
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj ; -- Begin function _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
	.globl	_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
	.p2align	8
	.type	_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj,@function
_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj: ; @_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
; %bb.0:
	s_load_dwordx2 s[6:7], s[0:1], 0x94 glc
	s_load_dwordx4 s[8:11], s[0:1], 0x78 glc
	v_and_b32_e32 v1, 0x3ff, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s7, 0xffff
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	v_add_u32_e32 v2, s2, v1
	s_mul_i32 s3, s3, s7
	v_bfe_u32 v1, v0, 10, 10
	v_add_u32_e32 v4, s3, v1
	s_mul_i32 s4, s4, s5
	v_bfe_u32 v0, v0, 20, 10
	v_add_u32_e32 v0, s4, v0
	v_cmp_gt_u32_e32 vcc, s8, v2
	v_cmp_gt_u32_e64 s[2:3], s9, v4
	s_and_b64 s[2:3], vcc, s[2:3]
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_and_b64 s[2:3], s[2:3], vcc
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB2_2
; %bb.1:
	s_load_dwordx2 s[2:3], s[0:1], 0x0 glc
	s_load_dwordx4 s[12:15], s[0:1], 0x68 glc
	s_load_dwordx2 s[16:17], s[0:1], 0x60 glc
	s_load_dwordx8 s[4:11], s[0:1], 0x40 glc
	s_load_dword s18, s[0:1], 0x34 glc
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[0:1], s[0:1], s3, v0, v[4:5]
	v_mad_u64_u32 v[0:1], s[0:1], v0, s2, v[2:3]
	v_mov_b32_e32 v3, 0
	v_add_u32_e32 v2, s14, v0
	v_mov_b32_e32 v1, v3
	v_lshl_add_u64 v[4:5], v[2:3], 2, s[6:7]
	v_lshlrev_b64 v[6:7], 2, v[0:1]
	v_lshl_add_u64 v[8:9], s[6:7], 0, v[6:7]
	global_load_dword v10, v[4:5], off sc0 nt
	global_load_dword v12, v[8:9], off sc0 nt
	v_add_u32_e32 v2, s15, v0
	v_lshl_add_u64 v[4:5], s[10:11], 0, v[6:7]
	v_lshl_add_u64 v[0:1], v[2:3], 2, s[8:9]
	v_lshl_add_u64 v[2:3], s[8:9], 0, v[6:7]
	global_load_dword v8, v[4:5], off sc0 nt
	global_load_dword v11, v[0:1], off sc0 nt
	global_load_dword v13, v[2:3], off sc0 nt
	v_lshl_add_u64 v[0:1], s[16:17], 0, v[6:7]
	global_load_dword v0, v[0:1], off sc0 nt
	v_lshl_add_u64 v[2:3], s[4:5], 0, v[6:7]
	global_load_dword v9, v[2:3], off sc0 nt
	v_mov_b32_e32 v1, 2.0
	v_mov_b32_e32 v4, s18
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v5, 0x35a8a9b8, v8
	s_waitcnt vmcnt(2)
	v_pk_add_f32 v[6:7], v[10:11], v[12:13] neg_lo:[0,1] neg_hi:[0,1]
	s_nop 0
	v_div_scale_f32 v8, s[0:1], s12, s12, v7
	v_div_scale_f32 v11, s[0:1], s13, s13, v6
	s_waitcnt vmcnt(1)
	v_pk_mul_f32 v[0:1], v[4:5], v[0:1]
	v_rcp_f32_e32 v4, v8
	v_rcp_f32_e32 v13, v11
	v_div_scale_f32 v14, s[2:3], v1, v1, v0
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v17, -v8, v4, 1.0
	v_div_scale_f32 v10, vcc, v7, s12, v7
	v_fma_f32 v18, -v11, v13, 1.0
	v_fmac_f32_e32 v4, v17, v4
	v_div_scale_f32 v12, s[0:1], v6, s13, v6
	v_fmac_f32_e32 v13, v18, v13
	v_fma_f32 v17, -v14, v16, 1.0
	v_mul_f32_e32 v18, v10, v4
	v_mul_f32_e32 v19, v12, v13
	v_fmac_f32_e32 v16, v17, v16
	v_fma_f32 v17, -v8, v18, v10
	v_fma_f32 v20, -v11, v19, v12
	v_fmac_f32_e32 v18, v17, v4
	v_div_scale_f32 v15, s[2:3], v0, v1, v0
	v_fmac_f32_e32 v19, v20, v13
	v_fma_f32 v8, -v8, v18, v10
	v_mul_f32_e32 v21, v15, v16
	v_fma_f32 v10, -v11, v19, v12
	v_div_fmas_f32 v4, v8, v4, v18
	s_mov_b64 vcc, s[0:1]
	v_fma_f32 v17, -v14, v21, v15
	v_div_fixup_f32 v4, v4, s12, v7
	v_div_fmas_f32 v7, v10, v13, v19
	v_fmac_f32_e32 v21, v17, v16
	v_div_fixup_f32 v6, v7, s13, v6
	v_fma_f32 v8, -v14, v21, v15
	s_mov_b64 vcc, s[2:3]
	v_sub_f32_e32 v4, v6, v4
	v_div_fmas_f32 v7, v8, v16, v21
	v_div_scale_f32 v6, s[0:1], v5, v5, v4
	v_div_fixup_f32 v0, v7, v1, v0
	v_rcp_f32_e32 v7, v6
	v_div_scale_f32 v8, vcc, v4, v5, v4
	v_sub_f32_e32 v1, 1.0, v0
	v_fma_f32 v10, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v10, v7
	v_mul_f32_e32 v10, v8, v7
	v_fma_f32 v11, -v6, v10, v8
	v_fmac_f32_e32 v10, v11, v7
	v_fma_f32 v6, -v6, v10, v8
	v_div_fmas_f32 v6, v6, v7, v10
	v_div_fixup_f32 v4, v6, v5, v4
	v_mul_f32_e32 v4, s18, v4
	v_add_f32_e32 v0, 1.0, v0
	s_waitcnt vmcnt(0)
	v_fma_f32 v1, v9, v1, -v4
	v_div_scale_f32 v4, s[0:1], v0, v0, v1
	v_rcp_f32_e32 v5, v4
	v_div_scale_f32 v6, vcc, v1, v0, v1
	v_fma_f32 v7, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v7, v5
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v0, v4, v0, v1
	global_store_dword v[2:3], v0, off sc0 nt
.LBB2_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 392
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
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 22
		.amdhsa_next_free_sgpr 19
		.amdhsa_accum_offset 24
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
.Lfunc_end2:
	.size	_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj, .Lfunc_end2-_Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
                                        ; -- End function
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.num_vgpr, 22
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.num_agpr, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.numbered_sgpr, 19
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.num_named_barrier, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.private_seg_size, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.uses_vcc, 1
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.uses_flat_scratch, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.has_dyn_sized_stack, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.has_recursion, 0
	.set _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 772
; TotalNumSgprs: 25
; NumVgprs: 22
; NumAgprs: 0
; TotalNumVgprs: 22
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 25
; NumVGPRsForWavesPerEU: 22
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 5
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_ ; -- Begin function _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.globl	_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.p2align	8
	.type	_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_,@function
_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_: ; @_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
; %bb.0:
	s_load_dwordx2 s[6:7], s[0:1], 0xc4 glc
	s_load_dwordx4 s[8:11], s[0:1], 0x0 glc
	v_and_b32_e32 v1, 0x3ff, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s7, 0xffff
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	v_add_u32_e32 v2, s2, v1
	s_mul_i32 s3, s3, s7
	v_bfe_u32 v1, v0, 10, 10
	v_add_u32_e32 v4, s3, v1
	s_mul_i32 s4, s4, s5
	v_bfe_u32 v0, v0, 20, 10
	s_add_i32 s2, s8, -1
	v_add_u32_e32 v0, s4, v0
	v_cmp_gt_u32_e32 vcc, s2, v2
	v_cmp_gt_u32_e64 s[2:3], s9, v4
	s_and_b64 s[2:3], vcc, s[2:3]
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_and_b64 s[2:3], s[2:3], vcc
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB3_2
; %bb.1:
	v_mul_lo_u32 v1, v0, s9
	v_add_u32_e32 v3, v1, v4
	v_mad_u64_u32 v[6:7], s[14:15], v3, s8, v[2:3]
	v_max_i32_e32 v3, 1, v4
	v_add3_u32 v1, v3, v1, -1
	s_load_dwordx2 s[2:3], s[0:1], 0xb0 glc
	s_load_dwordx4 s[4:7], s[0:1], 0xa0 glc
	s_load_dwordx2 s[12:13], s[0:1], 0x70 glc
	s_load_dword s11, s[0:1], 0x34 glc
	v_mad_u64_u32 v[8:9], s[14:15], v1, s8, v[2:3]
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v7, v9
	v_max_i32_e32 v1, 1, v0
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[10:11], v[8:9], 2, s[6:7]
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_u32_e32 v1, -1, v1
	v_lshl_add_u64 v[12:13], s[6:7], 0, v[6:7]
	global_load_dword v8, v[10:11], off sc0 nt
	global_load_dword v14, v[12:13], off sc0 nt
	v_mad_u64_u32 v[10:11], s[6:7], v1, s9, v[4:5]
	v_mad_u64_u32 v[10:11], s[6:7], v10, s8, v[2:3]
	s_add_i32 s6, s10, -2
	s_nop 0
	v_min_u32_e32 v0, s6, v0
	v_mad_u64_u32 v[0:1], s[6:7], v0, s9, v[4:5]
	v_mad_u64_u32 v[0:1], s[6:7], v0, s8, v[2:3]
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v1, v9
	v_lshl_add_u64 v[10:11], v[10:11], 2, s[2:3]
	v_lshl_add_u64 v[0:1], v[0:1], 2, s[2:3]
	s_load_dwordx2 s[2:3], s[0:1], 0x88 glc
	v_lshl_add_u64 v[2:3], s[12:13], 0, v[6:7]
	global_load_dword v5, v[2:3], off sc0 nt
	global_load_dword v9, v[10:11], off sc0 nt
	global_load_dword v15, v[0:1], off sc0 nt
	v_lshl_add_u64 v[2:3], s[4:5], 0, v[6:7]
	s_load_dwordx2 s[4:5], s[0:1], 0x10 glc
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[0:1], s[2:3], 0, v[6:7]
	global_load_dword v0, v[0:1], off sc0 nt
	v_mov_b32_e32 v1, 2.0
	global_load_dword v10, v[2:3], off sc0 nt
	v_mov_b32_e32 v4, s11
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v5, 0x2d1bc3b8, v5
	s_waitcnt vmcnt(2)
	v_pk_add_f32 v[6:7], v[14:15], v[8:9] neg_lo:[0,1] neg_hi:[0,1]
	s_nop 0
	v_div_scale_f32 v8, s[0:1], s5, s5, v7
	v_div_scale_f32 v11, s[0:1], s4, s4, v6
	s_waitcnt vmcnt(1)
	v_pk_mul_f32 v[0:1], v[4:5], v[0:1]
	v_rcp_f32_e32 v4, v8
	v_rcp_f32_e32 v13, v11
	v_div_scale_f32 v14, s[2:3], v1, v1, v0
	v_rcp_f32_e32 v16, v14
	v_fma_f32 v17, -v8, v4, 1.0
	v_div_scale_f32 v9, vcc, v7, s5, v7
	v_fma_f32 v18, -v11, v13, 1.0
	v_fmac_f32_e32 v4, v17, v4
	v_div_scale_f32 v12, s[0:1], v6, s4, v6
	v_fmac_f32_e32 v13, v18, v13
	v_fma_f32 v17, -v14, v16, 1.0
	v_mul_f32_e32 v18, v9, v4
	v_mul_f32_e32 v19, v12, v13
	v_fmac_f32_e32 v16, v17, v16
	v_fma_f32 v17, -v8, v18, v9
	v_fma_f32 v20, -v11, v19, v12
	v_fmac_f32_e32 v18, v17, v4
	v_div_scale_f32 v15, s[2:3], v0, v1, v0
	v_fmac_f32_e32 v19, v20, v13
	v_fma_f32 v8, -v8, v18, v9
	v_mul_f32_e32 v21, v15, v16
	v_fma_f32 v9, -v11, v19, v12
	v_div_fmas_f32 v4, v8, v4, v18
	s_mov_b64 vcc, s[0:1]
	v_fma_f32 v17, -v14, v21, v15
	v_div_fixup_f32 v4, v4, s5, v7
	v_div_fmas_f32 v7, v9, v13, v19
	v_fmac_f32_e32 v21, v17, v16
	v_div_fixup_f32 v6, v7, s4, v6
	v_fma_f32 v8, -v14, v21, v15
	s_mov_b64 vcc, s[2:3]
	v_sub_f32_e32 v4, v6, v4
	v_div_fmas_f32 v7, v8, v16, v21
	v_div_scale_f32 v6, s[0:1], v5, v5, v4
	v_div_fixup_f32 v0, v7, v1, v0
	v_rcp_f32_e32 v7, v6
	v_div_scale_f32 v8, vcc, v4, v5, v4
	v_sub_f32_e32 v1, 1.0, v0
	v_fma_f32 v9, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v9, v7
	v_mul_f32_e32 v9, v8, v7
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v10, v1
	v_fma_f32 v10, -v6, v9, v8
	v_fmac_f32_e32 v9, v10, v7
	v_fma_f32 v6, -v6, v9, v8
	v_div_fmas_f32 v6, v6, v7, v9
	v_div_fixup_f32 v4, v6, v5, v4
	v_add_f32_e32 v0, 1.0, v0
	v_fmac_f32_e32 v1, s11, v4
	v_div_scale_f32 v4, s[0:1], v0, v0, v1
	v_rcp_f32_e32 v5, v4
	v_div_scale_f32 v6, vcc, v1, v0, v1
	v_fma_f32 v7, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v7, v5
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v0, v4, v0, v1
	global_store_dword v[2:3], v0, off sc0 nt
.LBB3_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 440
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
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 22
		.amdhsa_next_free_sgpr 16
		.amdhsa_accum_offset 24
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
.Lfunc_end3:
	.size	_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_, .Lfunc_end3-_Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
                                        ; -- End function
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_vgpr, 22
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_agpr, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.numbered_sgpr, 16
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_named_barrier, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.private_seg_size, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_vcc, 1
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_flat_scratch, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_dyn_sized_stack, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_recursion, 0
	.set _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 860
; TotalNumSgprs: 22
; NumVgprs: 22
; NumAgprs: 0
; TotalNumVgprs: 22
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 22
; NumVGPRsForWavesPerEU: 22
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 5
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_ ; -- Begin function _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.globl	_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.p2align	8
	.type	_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_,@function
_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_: ; @_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
; %bb.0:
	s_load_dwordx2 s[6:7], s[0:1], 0xc4 glc
	s_load_dwordx4 s[8:11], s[0:1], 0x0 glc
	v_and_b32_e32 v1, 0x3ff, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s7, 0xffff
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	v_add_u32_e32 v2, s2, v1
	s_mul_i32 s3, s3, s7
	v_bfe_u32 v1, v0, 10, 10
	s_mul_i32 s4, s4, s5
	v_bfe_u32 v0, v0, 20, 10
	v_add_u32_e32 v4, s3, v1
	v_add_u32_e32 v0, s4, v0
	s_add_i32 s2, s9, -1
	v_cmp_gt_u32_e64 s[2:3], s2, v4
	v_cmp_gt_u32_e64 s[4:5], s10, v0
	v_cmp_gt_u32_e32 vcc, s8, v2
	s_and_b64 s[2:3], s[2:3], s[4:5]
	s_and_b64 s[2:3], vcc, s[2:3]
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB4_2
; %bb.1:
	v_mad_u64_u32 v[6:7], s[16:17], v0, s9, v[4:5]
	s_load_dwordx4 s[4:7], s[0:1], 0xa0 glc
	s_load_dwordx2 s[2:3], s[0:1], 0xb0 glc
	s_load_dwordx2 s[12:13], s[0:1], 0x78 glc
	s_load_dwordx2 s[14:15], s[0:1], 0x90 glc
	s_load_dword s18, s[0:1], 0x34 glc
	v_mul_lo_u32 v14, v6, s8
	v_add_u32_e32 v6, v14, v2
	v_mov_b32_e32 v7, 0
	v_max_i32_e32 v1, 1, v0
	s_add_i32 s10, s10, -2
	v_lshlrev_b64 v[8:9], 2, v[6:7]
	v_add_u32_e32 v1, -1, v1
	v_min_u32_e32 v0, s10, v0
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[10:11], s[12:13], 0, v[8:9]
	v_mad_u64_u32 v[12:13], s[12:13], v1, s9, v[4:5]
	v_mad_u64_u32 v[0:1], s[12:13], v0, s9, v[4:5]
	v_mad_u64_u32 v[12:13], s[12:13], v12, s8, v[2:3]
	v_mad_u64_u32 v[0:1], s[12:13], v0, s8, v[2:3]
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v1, v7
	v_lshl_add_u64 v[12:13], v[12:13], 2, s[6:7]
	v_lshl_add_u64 v[0:1], v[0:1], 2, s[6:7]
	global_load_dword v15, v[10:11], off sc0 nt
	global_load_dword v3, v[12:13], off sc0 nt
	global_load_dword v5, v[0:1], off sc0 nt
	v_max_i32_e32 v0, 1, v2
	s_add_i32 s6, s8, -2
	v_add3_u32 v6, v0, v14, -1
	v_min_u32_e32 v2, s6, v2
	v_lshl_add_u64 v[0:1], v[6:7], 2, s[2:3]
	v_add_u32_e32 v6, v14, v2
	v_lshl_add_u64 v[10:11], s[14:15], 0, v[8:9]
	v_lshl_add_u64 v[6:7], v[6:7], 2, s[2:3]
	global_load_dword v2, v[0:1], off sc0 nt
	global_load_dword v4, v[6:7], off sc0 nt
	global_load_dword v12, v[10:11], off sc0 nt
	v_lshl_add_u64 v[0:1], s[4:5], 0, v[8:9]
	global_load_dword v8, v[0:1], off sc0 nt
	s_load_dwordx2 s[4:5], s[0:1], 0x10 glc
	v_mov_b32_e32 v13, 2.0
	v_mov_b32_e32 v6, s18
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v7, 0x2d1bc3b8, v15
	s_waitcnt vmcnt(2)
	v_pk_add_f32 v[2:3], v[4:5], v[2:3] neg_lo:[0,1] neg_hi:[0,1]
	s_waitcnt vmcnt(1)
	v_pk_mul_f32 v[4:5], v[6:7], v[12:13]
	v_div_scale_f32 v6, s[0:1], s11, s11, v2
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v10, s[0:1], s5, s5, v3
	v_rcp_f32_e32 v13, v6
	v_rcp_f32_e32 v14, v10
	v_div_scale_f32 v12, s[2:3], v5, v5, v4
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v17, -v6, v13, 1.0
	v_div_scale_f32 v9, vcc, v2, s11, v2
	v_fma_f32 v18, -v10, v14, 1.0
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v11, s[0:1], v3, s5, v3
	v_fmac_f32_e32 v14, v18, v14
	v_mul_f32_e32 v17, v9, v13
	v_fma_f32 v19, -v12, v15, 1.0
	v_mul_f32_e32 v18, v11, v14
	v_fma_f32 v20, -v6, v17, v9
	v_div_scale_f32 v16, s[2:3], v4, v5, v4
	v_fmac_f32_e32 v15, v19, v15
	v_fma_f32 v21, -v10, v18, v11
	v_fmac_f32_e32 v17, v20, v13
	v_mul_f32_e32 v19, v16, v15
	v_fmac_f32_e32 v18, v21, v14
	v_fma_f32 v6, -v6, v17, v9
	v_fma_f32 v22, -v12, v19, v16
	v_fma_f32 v9, -v10, v18, v11
	v_div_fmas_f32 v6, v6, v13, v17
	s_mov_b64 vcc, s[0:1]
	v_fmac_f32_e32 v19, v22, v15
	v_div_fixup_f32 v2, v6, s11, v2
	v_div_fmas_f32 v6, v9, v14, v18
	v_fma_f32 v10, -v12, v19, v16
	v_div_fixup_f32 v3, v6, s5, v3
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v6, v10, v15, v19
	v_sub_f32_e32 v2, v3, v2
	v_div_fixup_f32 v3, v6, v5, v4
	v_div_scale_f32 v5, s[0:1], v7, v7, v2
	v_rcp_f32_e32 v6, v5
	v_div_scale_f32 v9, vcc, v2, v7, v2
	v_sub_f32_e32 v4, 1.0, v3
	v_fma_f32 v10, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v10, v6
	v_mul_f32_e32 v10, v9, v6
	v_fma_f32 v11, -v5, v10, v9
	v_fmac_f32_e32 v10, v11, v6
	v_fma_f32 v5, -v5, v10, v9
	v_div_fmas_f32 v5, v5, v6, v10
	v_div_fixup_f32 v2, v5, v7, v2
	v_mul_f32_e32 v2, s18, v2
	v_add_f32_e32 v3, 1.0, v3
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v2, v4, v8
	v_div_scale_f32 v4, s[0:1], v3, v3, v2
	v_rcp_f32_e32 v5, v4
	v_div_scale_f32 v6, vcc, v2, v3, v2
	v_fma_f32 v7, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v7, v5
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v2, v4, v3, v2
	global_store_dword v[0:1], v2, off sc0 nt
.LBB4_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 440
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
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 23
		.amdhsa_next_free_sgpr 19
		.amdhsa_accum_offset 24
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
.Lfunc_end4:
	.size	_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_, .Lfunc_end4-_Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
                                        ; -- End function
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_vgpr, 23
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_agpr, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.numbered_sgpr, 19
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_named_barrier, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.private_seg_size, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_vcc, 1
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_flat_scratch, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_dyn_sized_stack, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_recursion, 0
	.set _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 856
; TotalNumSgprs: 25
; NumVgprs: 23
; NumAgprs: 0
; TotalNumVgprs: 23
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 25
; NumVGPRsForWavesPerEU: 23
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 5
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_ ; -- Begin function _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.globl	_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
	.p2align	8
	.type	_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_,@function
_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_: ; @_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
; %bb.0:
	s_load_dwordx2 s[6:7], s[0:1], 0xc4 glc
	s_load_dwordx4 s[8:11], s[0:1], 0x0 glc
	v_and_b32_e32 v1, 0x3ff, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s7, 0xffff
	s_lshr_b32 s7, s6, 16
	s_and_b32 s6, s6, 0xffff
	s_mul_i32 s2, s2, s6
	v_add_u32_e32 v2, s2, v1
	s_mul_i32 s3, s3, s7
	v_bfe_u32 v1, v0, 10, 10
	v_add_u32_e32 v1, s3, v1
	s_mul_i32 s4, s4, s5
	v_bfe_u32 v0, v0, 20, 10
	v_add_u32_e32 v0, s4, v0
	v_cmp_gt_u32_e32 vcc, s8, v2
	v_cmp_gt_u32_e64 s[2:3], s9, v1
	s_add_i32 s4, s10, -1
	s_and_b64 s[2:3], vcc, s[2:3]
	v_cmp_gt_u32_e32 vcc, s4, v0
	s_and_b64 s[2:3], s[2:3], vcc
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB5_2
; %bb.1:
	s_load_dwordx2 s[2:3], s[0:1], 0xb0 glc
	s_load_dwordx4 s[4:7], s[0:1], 0xa0 glc
	s_load_dwordx2 s[10:11], s[0:1], 0x98 glc
	s_load_dwordx2 s[12:13], s[0:1], 0x80 glc
	v_mul_lo_u32 v3, v0, s9
	v_add_u32_e32 v0, v3, v1
	v_mul_lo_u32 v0, v0, s8
	v_add_u32_e32 v4, v0, v2
	v_mov_b32_e32 v5, 0
	v_lshlrev_b64 v[6:7], 2, v[4:5]
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[8:9], s[12:13], 0, v[6:7]
	v_max_i32_e32 v4, 1, v2
	global_load_dword v14, v[8:9], off sc0 nt
	v_lshl_add_u64 v[8:9], s[10:11], 0, v[6:7]
	v_add3_u32 v4, v4, v0, -1
	s_add_i32 s10, s8, -2
	v_lshl_add_u64 v[10:11], v[4:5], 2, s[6:7]
	v_min_u32_e32 v4, s10, v2
	v_add_u32_e32 v4, v0, v4
	v_lshl_add_u64 v[12:13], v[4:5], 2, s[6:7]
	global_load_dword v0, v[10:11], off sc0 nt
	global_load_dword v4, v[12:13], off sc0 nt
	v_max_i32_e32 v10, 1, v1
	v_add3_u32 v10, v10, v3, -1
	v_mad_u64_u32 v[10:11], s[6:7], v10, s8, v[2:3]
	s_add_i32 s6, s9, -2
	s_nop 0
	v_min_u32_e32 v1, s6, v1
	v_add_u32_e32 v1, v3, v1
	v_mov_b32_e32 v11, v5
	v_mad_u64_u32 v[2:3], s[6:7], v1, s8, v[2:3]
	v_lshl_add_u64 v[10:11], v[10:11], 2, s[2:3]
	v_mov_b32_e32 v3, v5
	v_lshl_add_u64 v[2:3], v[2:3], 2, s[2:3]
	global_load_dword v1, v[10:11], off sc0 nt
	global_load_dword v5, v[2:3], off sc0 nt
	global_load_dword v12, v[8:9], off sc0 nt
	v_lshl_add_u64 v[2:3], s[4:5], 0, v[6:7]
	global_load_dword v8, v[2:3], off sc0 nt
	s_load_dword s8, s[0:1], 0x34 glc
	s_load_dwordx4 s[4:7], s[0:1], 0xc glc
	v_mov_b32_e32 v13, 2.0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s8
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v7, 0x2d1bc3b8, v14
	s_waitcnt vmcnt(2)
	v_pk_add_f32 v[0:1], v[4:5], v[0:1] neg_lo:[0,1] neg_hi:[0,1]
	s_waitcnt vmcnt(1)
	v_pk_mul_f32 v[4:5], v[6:7], v[12:13]
	v_div_scale_f32 v6, s[0:1], s6, s6, v1
	v_div_scale_f32 v10, s[0:1], s4, s4, v0
	v_rcp_f32_e32 v13, v6
	v_rcp_f32_e32 v14, v10
	v_div_scale_f32 v12, s[2:3], v5, v5, v4
	v_rcp_f32_e32 v15, v12
	v_fma_f32 v17, -v6, v13, 1.0
	v_div_scale_f32 v9, vcc, v1, s6, v1
	v_fma_f32 v18, -v10, v14, 1.0
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v11, s[0:1], v0, s4, v0
	v_fmac_f32_e32 v14, v18, v14
	v_mul_f32_e32 v17, v9, v13
	v_fma_f32 v19, -v12, v15, 1.0
	v_mul_f32_e32 v18, v11, v14
	v_fma_f32 v20, -v6, v17, v9
	v_div_scale_f32 v16, s[2:3], v4, v5, v4
	v_fmac_f32_e32 v15, v19, v15
	v_fma_f32 v21, -v10, v18, v11
	v_fmac_f32_e32 v17, v20, v13
	v_mul_f32_e32 v19, v16, v15
	v_fmac_f32_e32 v18, v21, v14
	v_fma_f32 v6, -v6, v17, v9
	v_fma_f32 v22, -v12, v19, v16
	v_fma_f32 v9, -v10, v18, v11
	v_div_fmas_f32 v6, v6, v13, v17
	s_mov_b64 vcc, s[0:1]
	v_fmac_f32_e32 v19, v22, v15
	v_div_fixup_f32 v1, v6, s6, v1
	v_div_fmas_f32 v6, v9, v14, v18
	v_fma_f32 v10, -v12, v19, v16
	v_div_fixup_f32 v0, v6, s4, v0
	s_mov_b64 vcc, s[2:3]
	v_div_fmas_f32 v6, v10, v15, v19
	v_sub_f32_e32 v0, v0, v1
	v_div_fixup_f32 v1, v6, v5, v4
	v_div_scale_f32 v5, s[0:1], v7, v7, v0
	v_rcp_f32_e32 v6, v5
	v_div_scale_f32 v9, vcc, v0, v7, v0
	v_sub_f32_e32 v4, 1.0, v1
	v_fma_f32 v10, -v5, v6, 1.0
	v_fmac_f32_e32 v6, v10, v6
	v_mul_f32_e32 v10, v9, v6
	v_fma_f32 v11, -v5, v10, v9
	v_fmac_f32_e32 v10, v11, v6
	v_fma_f32 v5, -v5, v10, v9
	v_div_fmas_f32 v5, v5, v6, v10
	v_div_fixup_f32 v0, v5, v7, v0
	v_mul_f32_e32 v0, s8, v0
	v_add_f32_e32 v1, 1.0, v1
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v4, v8
	v_div_scale_f32 v4, s[0:1], v1, v1, v0
	v_rcp_f32_e32 v5, v4
	v_div_scale_f32 v6, vcc, v0, v1, v0
	v_fma_f32 v7, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v7, v5
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v8, -v4, v7, v6
	v_fmac_f32_e32 v7, v8, v5
	v_fma_f32 v4, -v4, v7, v6
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_fixup_f32 v0, v4, v1, v0
	global_store_dword v[2:3], v0, off sc0 nt
.LBB5_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 440
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
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 23
		.amdhsa_next_free_sgpr 14
		.amdhsa_accum_offset 24
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
.Lfunc_end5:
	.size	_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_, .Lfunc_end5-_Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
                                        ; -- End function
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_vgpr, 23
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_agpr, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.numbered_sgpr, 14
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.num_named_barrier, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.private_seg_size, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_vcc, 1
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.uses_flat_scratch, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_dyn_sized_stack, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_recursion, 0
	.set _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 852
; TotalNumSgprs: 20
; NumVgprs: 23
; NumAgprs: 0
; TotalNumVgprs: 23
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 20
; NumVGPRsForWavesPerEU: 23
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 1
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 5
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
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 76
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z19apply_source_kernel10FDTD_SetupPff
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z19apply_source_kernel10FDTD_SetupPff.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     2
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .offset:         64
        .size:           96
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
      - .offset:         184
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         188
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         192
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         196
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         198
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         200
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         202
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         204
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         206
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         224
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         232
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         240
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         248
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 440
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z15updateHx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     22
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         140
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         144
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         148
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         150
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         152
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         154
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         156
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         158
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         176
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         184
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         192
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         200
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 392
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         _Z14updateH_kernel10FDTD_SetupPfPKfS2_S0_S0_ffjjjjj.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     22
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .offset:         64
        .size:           96
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
      - .offset:         184
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         188
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         192
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         196
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         198
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         200
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         202
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         204
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         206
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         224
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         232
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         240
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         248
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 440
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z15updateEx_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     22
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .offset:         64
        .size:           96
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
      - .offset:         184
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         188
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         192
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         196
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         198
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         200
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         202
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         204
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         206
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         224
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         232
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         240
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         248
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 440
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         _Z15updateEy_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     23
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .offset:         0
        .size:           60
        .value_kind:     by_value
      - .offset:         64
        .size:           96
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
      - .offset:         184
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         188
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         192
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         196
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         198
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         200
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         202
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         204
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         206
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         224
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         232
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         240
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         248
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 440
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_
    .private_segment_fixed_size: 0
    .sgpr_count:     20
    .sgpr_spill_count: 0
    .symbol:         _Z15updateEz_kernel10FDTD_Setup13Medium_ParamsPfPKfS3_.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     23
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
