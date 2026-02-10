	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z16block_prefix_sumPfii ; -- Begin function _Z16block_prefix_sumPfii
	.globl	_Z16block_prefix_sumPfii
	.p2align	8
	.type	_Z16block_prefix_sumPfii,@function
_Z16block_prefix_sumPfii:               ; @_Z16block_prefix_sumPfii
; %bb.0:
	s_load_dword s3, s[0:1], 0x1c
	s_load_dwordx4 s[4:7], s[0:1], 0x0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s3, 0xffff
	s_mul_i32 s2, s2, s0
	v_add_u32_e32 v1, s2, v0
	v_lshl_or_b32 v1, v1, 1, 1
	v_mul_lo_u32 v2, v1, s7
	v_cmp_ge_i32_e32 vcc, s6, v2
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_2
; %bb.1:
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 2, s[4:5]
	global_load_dword v1, v[4:5], off offset:-4
	v_lshl_add_u32 v3, v0, 3, 0
	s_waitcnt vmcnt(0)
	ds_write_b32 v3, v1
.LBB0_2:
	s_or_b64 exec, exec, s[0:1]
	v_add3_u32 v1, v2, s7, -1
	v_cmp_gt_i32_e64 s[0:1], s6, v1
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB0_4
; %bb.3:
	s_ashr_i32 s9, s7, 31
	s_mov_b32 s8, s7
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 0, s[8:9]
	v_lshl_add_u64 v[4:5], v[4:5], 2, s[4:5]
	global_load_dword v1, v[4:5], off offset:-4
	v_lshl_add_u32 v3, v0, 3, 0
	s_waitcnt vmcnt(0)
	ds_write_b32 v3, v1 offset:4
.LBB0_4:
	s_or_b64 exec, exec, s[2:3]
	s_ashr_i32 s11, s6, 1
	s_cmp_lt_i32 s11, 1
	s_mov_b32 s10, 1
	s_cbranch_scc1 .LBB0_10
; %bb.5:
	v_lshl_or_b32 v1, v0, 1, 1
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	v_cmp_gt_i32_e64 s[2:3], s11, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	v_mul_lo_u32 v3, s10, v1
	v_lshlrev_b32_e32 v3, 2, v3
	v_add3_u32 v3, 0, v3, -4
	v_lshl_add_u32 v4, s10, 2, v3
	ds_read_b32 v3, v3
	ds_read_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v5
	ds_write_b32 v4, v3
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_lshl_b32 s10, s10, 1
	s_lshr_b32 s2, s11, 1
	s_cmp_lt_u32 s11, 2
	s_cbranch_scc1 .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	s_mov_b32 s11, s2
	s_branch .LBB0_6
.LBB0_10:
	s_cmp_gt_i32 s6, 2
	s_cbranch_scc0 .LBB0_16
; %bb.11:
	s_cmp_lt_i32 s10, s6
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_nop 0
	v_readfirstlane_b32 s2, v1
	s_lshl_b32 s11, s10, s2
	s_ashr_i32 s6, s11, 1
	s_cmp_lt_i32 s6, 1
	s_cbranch_scc1 .LBB0_16
; %bb.12:
	v_add_u32_e32 v1, 1, v0
	s_mov_b32 s10, 0
	s_branch .LBB0_14
.LBB0_13:                               ;   in Loop: Header=BB0_14 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_lshl_b32 s2, s10, 1
	s_or_b32 s10, s2, 2
	s_cmp_lt_i32 s10, s6
	s_mov_b32 s11, s12
	s_cbranch_scc0 .LBB0_16
.LBB0_14:                               ; =>This Inner Loop Header: Depth=1
	s_ashr_i32 s12, s11, 1
	v_cmp_ge_i32_e64 s[2:3], s10, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[8:9], s[2:3]
	s_cbranch_execz .LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=1
	v_mul_lo_u32 v3, s12, v1
	v_lshlrev_b32_e32 v3, 2, v3
	v_add3_u32 v3, 0, v3, -4
	s_and_b32 s2, s11, -4
	v_add_u32_e32 v4, s2, v3
	ds_read_b32 v3, v3
	ds_read_b32 v5, v4
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v3, v3, v5
	ds_write_b32 v4, v3
	s_branch .LBB0_13
.LBB0_16:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execnz .LBB0_19
; %bb.17:
	s_or_b64 exec, exec, s[2:3]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execnz .LBB0_20
.LBB0_18:
	s_endpgm
.LBB0_19:
	v_lshl_add_u32 v1, v0, 3, 0
	ds_read_b32 v1, v1
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[4:5], v[2:3], 2, s[4:5]
	s_waitcnt lgkmcnt(0)
	global_store_dword v[4:5], v1, off offset:-4
	s_or_b64 exec, exec, s[2:3]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB0_18
.LBB0_20:
	v_lshl_add_u32 v0, v0, 3, 0
	ds_read_b32 v4, v0 offset:4
	s_ashr_i32 s1, s7, 31
	s_mov_b32 s0, s7
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshl_add_u64 v[0:1], v[2:3], 0, s[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 2, s[4:5]
	s_waitcnt lgkmcnt(0)
	global_store_dword v[0:1], v4, off offset:-4
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z16block_prefix_sumPfii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 272
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
		.amdhsa_next_free_vgpr 6
		.amdhsa_next_free_sgpr 13
		.amdhsa_accum_offset 8
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
	.size	_Z16block_prefix_sumPfii, .Lfunc_end0-_Z16block_prefix_sumPfii
                                        ; -- End function
	.set _Z16block_prefix_sumPfii.num_vgpr, 6
	.set _Z16block_prefix_sumPfii.num_agpr, 0
	.set _Z16block_prefix_sumPfii.numbered_sgpr, 13
	.set _Z16block_prefix_sumPfii.num_named_barrier, 0
	.set _Z16block_prefix_sumPfii.private_seg_size, 0
	.set _Z16block_prefix_sumPfii.uses_vcc, 1
	.set _Z16block_prefix_sumPfii.uses_flat_scratch, 0
	.set _Z16block_prefix_sumPfii.has_dyn_sized_stack, 0
	.set _Z16block_prefix_sumPfii.has_recursion, 0
	.set _Z16block_prefix_sumPfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 648
; TotalNumSgprs: 19
; NumVgprs: 6
; NumAgprs: 0
; TotalNumVgprs: 6
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 19
; NumVGPRsForWavesPerEU: 6
; AccumOffset: 8
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 1
; COMPUTE_PGM_RSRC3_GFX90A:TG_SPLIT: 0
	.text
	.protected	_Z17device_prefix_sumPfii ; -- Begin function _Z17device_prefix_sumPfii
	.globl	_Z17device_prefix_sumPfii
	.p2align	8
	.type	_Z17device_prefix_sumPfii,@function
_Z17device_prefix_sumPfii:              ; @_Z17device_prefix_sumPfii
; %bb.0:
	s_load_dword s3, s[0:1], 0x1c
	s_load_dwordx2 s[4:5], s[0:1], 0x8
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, s3, 0xffff
	v_cvt_f32_u32_e32 v1, s3
	s_sub_i32 s8, 0, s3
	s_abs_i32 s6, s5
	s_ashr_i32 s7, s5, 31
	v_rcp_iflag_f32_e32 v1, v1
	v_cvt_f32_u32_e32 v2, s6
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_rcp_iflag_f32_e32 v2, v2
	v_readfirstlane_b32 s9, v1
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s8, s9, s8
	s_add_i32 s9, s9, s8
	s_mul_hi_u32 s8, s6, s9
	s_mul_i32 s9, s8, s3
	s_sub_i32 s9, s6, s9
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s3
	s_cmp_ge_u32 s9, s3
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s3
	s_cselect_b32 s8, s10, s8
	s_xor_b32 s8, s8, s7
	s_lshl_b32 s5, s5, 1
	s_sub_i32 s7, s8, s7
	s_sub_i32 s5, s5, s7
	s_abs_i32 s8, s5
	v_cvt_f32_u32_e32 v1, s8
	s_sub_i32 s10, 0, s8
	s_abs_i32 s9, s2
	s_xor_b32 s5, s2, s5
	v_rcp_iflag_f32_e32 v1, v1
	s_ashr_i32 s5, s5, 31
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	s_nop 0
	v_readfirstlane_b32 s11, v1
	s_mul_i32 s10, s10, s11
	s_mul_hi_u32 s10, s11, s10
	s_add_i32 s11, s11, s10
	s_mul_hi_u32 s10, s9, s11
	s_mul_i32 s11, s10, s8
	s_sub_i32 s9, s9, s11
	s_add_i32 s12, s10, 1
	s_sub_i32 s11, s9, s8
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s9, s11, s9
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s9, s8
	s_cselect_b32 s8, s11, s10
	s_xor_b32 s8, s8, s5
	s_sub_i32 s5, s8, s5
	s_add_i32 s5, s5, 1
	s_mul_i32 s5, s5, s7
	s_add_i32 s2, s5, s2
	s_mul_i32 s2, s2, s3
	s_sub_i32 s9, 0, s6
	v_add_u32_e32 v0, s2, v0
	v_mul_lo_u32 v1, s9, v2
	v_add_u32_e32 v3, 1, v0
	v_sub_u32_e32 v5, 0, v3
	v_mul_hi_u32 v1, v2, v1
	v_ashrrev_i32_e32 v4, 31, v3
	v_max_i32_e32 v3, v3, v5
	v_add_u32_e32 v2, v2, v1
	v_mul_hi_u32 v1, v3, v2
	v_mul_lo_u32 v1, v1, s6
	v_sub_u32_e32 v1, v3, v1
	v_subrev_u32_e32 v3, s6, v1
	v_cmp_le_u32_e32 vcc, s6, v1
	v_cmp_gt_i32_e64 s[2:3], s4, v0
	s_nop 0
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_subrev_u32_e32 v3, s6, v1
	v_cmp_le_u32_e32 vcc, s6, v1
	s_nop 1
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_xor_b32_e32 v1, v1, v4
	v_sub_u32_e32 v1, v1, v4
	v_cmp_ne_u32_e32 vcc, 0, v1
	s_and_b64 s[2:3], vcc, s[2:3]
	s_and_saveexec_b64 s[4:5], s[2:3]
	s_cbranch_execz .LBB1_2
; %bb.1:
	v_sub_u32_e32 v3, 0, v0
	v_max_i32_e32 v3, v0, v3
	v_mul_hi_u32 v2, v3, v2
	v_mul_lo_u32 v2, v2, s6
	v_sub_u32_e32 v2, v3, v2
	v_subrev_u32_e32 v3, s6, v2
	v_cmp_le_u32_e32 vcc, s6, v2
	s_load_dwordx2 s[0:1], s[0:1], 0x0
	v_ashrrev_i32_e32 v1, 31, v0
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_subrev_u32_e32 v3, s6, v2
	v_cmp_le_u32_e32 vcc, s6, v2
	s_nop 1
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_xor_b32_e32 v2, v2, v1
	v_sub_u32_e32 v2, v2, v1
	v_xad_u32 v2, v2, -1, v0
	v_ashrrev_i32_e32 v3, 31, v2
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u64 v[2:3], v[2:3], 2, s[0:1]
	v_lshl_add_u64 v[0:1], v[0:1], 2, s[0:1]
	global_load_dword v4, v[2:3], off
	global_load_dword v5, v[0:1], off
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v2, v4, v5
	global_store_dword v[0:1], v2, off
.LBB1_2:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z17device_prefix_sumPfii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 272
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
		.amdhsa_next_free_vgpr 6
		.amdhsa_next_free_sgpr 13
		.amdhsa_accum_offset 8
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
	.size	_Z17device_prefix_sumPfii, .Lfunc_end1-_Z17device_prefix_sumPfii
                                        ; -- End function
	.set _Z17device_prefix_sumPfii.num_vgpr, 6
	.set _Z17device_prefix_sumPfii.num_agpr, 0
	.set _Z17device_prefix_sumPfii.numbered_sgpr, 13
	.set _Z17device_prefix_sumPfii.num_named_barrier, 0
	.set _Z17device_prefix_sumPfii.private_seg_size, 0
	.set _Z17device_prefix_sumPfii.uses_vcc, 1
	.set _Z17device_prefix_sumPfii.uses_flat_scratch, 0
	.set _Z17device_prefix_sumPfii.has_dyn_sized_stack, 0
	.set _Z17device_prefix_sumPfii.has_recursion, 0
	.set _Z17device_prefix_sumPfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 556
; TotalNumSgprs: 19
; NumVgprs: 6
; NumAgprs: 0
; TotalNumVgprs: 6
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 19
; NumVGPRsForWavesPerEU: 6
; AccumOffset: 8
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
; COMPUTE_PGM_RSRC3_GFX90A:ACCUM_OFFSET: 1
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
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         20
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         24
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         28
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         30
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         32
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         34
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         36
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         38
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         80
        .size:           2
        .value_kind:     hidden_grid_dims
      - .offset:         136
        .size:           4
        .value_kind:     hidden_dynamic_lds_size
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 272
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z16block_prefix_sumPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     19
    .sgpr_spill_count: 0
    .symbol:         _Z16block_prefix_sumPfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     6
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .agpr_count:     0
    .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         12
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         20
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         24
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         28
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         30
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         32
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         34
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         36
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         38
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         80
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 272
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z17device_prefix_sumPfii
    .private_segment_fixed_size: 0
    .sgpr_count:     19
    .sgpr_spill_count: 0
    .symbol:         _Z17device_prefix_sumPfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     6
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
