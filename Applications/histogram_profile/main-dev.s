	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z18histogram256_blockPhPji ; -- Begin function _Z18histogram256_blockPhPji
	.globl	_Z18histogram256_blockPhPji
	.p2align	8
	.type	_Z18histogram256_blockPhPji,@function
_Z18histogram256_blockPhPji:            ; @_Z18histogram256_blockPhPji
; %bb.0:
	s_load_dword s8, s[0:1], 0x24
	s_load_dwordx4 s[4:7], s[0:1], 0x0
	s_load_dword s3, s[0:1], 0x10
	s_waitcnt lgkmcnt(0)
	s_and_b32 s12, s8, 0xffff
	s_ff1_i32_b32 s0, s12
	s_add_i32 s0, s0, -2
	s_cmp_lg_u32 s12, 0
	s_mov_b32 s8, 0
	s_cselect_b32 s0, s0, -3
	v_bfe_u32 v1, v0, 0, s0
	v_lshrrev_b32_e32 v2, s0, v0
	s_mov_b32 s9, s8
	v_lshl_or_b32 v4, v1, 2, v2
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	v_mov_b64_e32 v[6:7], s[8:9]
	v_lshl_add_u32 v1, v4, 8, 0
	v_mov_b64_e32 v[8:9], s[10:11]
	s_cmp_lt_i32 s3, 1
	ds_write_b128 v1, v[6:9]
	ds_write_b128 v1, v[6:9] offset:16
	ds_write_b128 v1, v[6:9] offset:32
	ds_write_b128 v1, v[6:9] offset:48
	ds_write_b128 v1, v[6:9] offset:64
	ds_write_b128 v1, v[6:9] offset:80
	ds_write_b128 v1, v[6:9] offset:96
	ds_write_b128 v1, v[6:9] offset:112
	ds_write_b128 v1, v[6:9] offset:128
	ds_write_b128 v1, v[6:9] offset:144
	ds_write_b128 v1, v[6:9] offset:160
	ds_write_b128 v1, v[6:9] offset:176
	ds_write_b128 v1, v[6:9] offset:192
	ds_write_b128 v1, v[6:9] offset:208
	ds_write_b128 v1, v[6:9] offset:224
	ds_write_b128 v1, v[6:9] offset:240
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc1 .LBB0_7
; %bb.1:
	s_mul_i32 s0, s2, s12
	v_add_u32_e32 v0, s0, v0
	v_add_u32_e32 v5, 0, v4
	s_cmp_lt_u32 s3, 8
	v_mul_lo_u32 v0, v0, s3
	s_cbranch_scc1 .LBB0_4
; %bb.2:
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshl_add_u64 v[2:3], s[4:5], 0, v[0:1]
	s_and_b32 s0, s3, 0x7ffffff8
	s_mov_b64 s[8:9], 0
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	v_lshl_add_u64 v[6:7], v[2:3], 0, s[8:9]
	global_load_dwordx2 v[6:7], v[6:7], off
	s_add_u32 s8, s8, 8
	s_addc_u32 s9, s9, 0
	s_cmp_eq_u32 s0, s8
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 0xff, v6
	v_mad_u32_u24 v1, v1, s12, v5
	ds_read_u8 v8, v1
	v_bfe_u32 v9, v6, 8, 8
	v_mad_u32_u24 v9, v9, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v8, 1, v8
	ds_write_b8 v1, v8
	ds_read_u8 v1, v9
	v_bfe_u32 v8, v6, 16, 8
	v_mad_u32_u24 v8, v8, s12, v5
	v_lshrrev_b32_e32 v6, 24, v6
	v_mad_u32_u24 v6, v6, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v9, v1
	ds_read_u8 v1, v8
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v8, v1
	ds_read_u8 v1, v6
	v_and_b32_e32 v8, 0xff, v7
	v_mad_u32_u24 v8, v8, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v6, v1
	ds_read_u8 v1, v8
	v_bfe_u32 v6, v7, 8, 8
	v_mad_u32_u24 v6, v6, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v8, v1
	ds_read_u8 v1, v6
	v_bfe_u32 v8, v7, 16, 8
	v_mad_u32_u24 v8, v8, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v6, v1
	ds_read_u8 v1, v8
	v_lshrrev_b32_e32 v6, 24, v7
	v_mad_u32_u24 v6, v6, s12, v5
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v8, v1
	ds_read_u8 v1, v6
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v1, 1, v1
	ds_write_b8 v6, v1
	s_cbranch_scc0 .LBB0_3
.LBB0_4:
	s_and_b32 s0, s3, 7
	s_cmp_eq_u32 s0, 0
	s_cbranch_scc1 .LBB0_7
; %bb.5:
	v_add_u32_e32 v0, s8, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshl_add_u64 v[0:1], s[4:5], 0, v[0:1]
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	global_load_ubyte v2, v[0:1], off
	s_add_i32 s0, s0, -1
	v_lshl_add_u64 v[0:1], v[0:1], 0, 1
	s_cmp_lg_u32 s0, 0
	s_waitcnt vmcnt(0)
	v_mad_u32_u24 v2, v2, s12, v5
	ds_read_u8 v3, v2
	s_waitcnt lgkmcnt(0)
	v_add_u16_e32 v3, 1, v3
	ds_write_b8 v2, v3
	s_cbranch_scc1 .LBB0_6
.LBB0_7:
	s_cmpk_gt_u32 s12, 0x100
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc1 .LBB0_20
; %bb.8:
	v_cvt_f32_u32_e32 v0, s12
	s_mov_b32 s0, 0x43800000
	s_mov_b32 s13, 0
	v_mad_u32_u24 v5, v4, s12, 0
	v_rcp_iflag_f32_e32 v1, v0
	s_mul_i32 s19, s12, s12
	v_mul_f32_e32 v1, 0x43800000, v1
	v_trunc_f32_e32 v1, v1
	v_cvt_u32_f32_e32 v2, v1
	v_fma_f32 v1, -v1, v0, s0
	v_cmp_ge_f32_e64 s[0:1], |v1|, v0
	s_cmp_lg_u64 s[0:1], 0
	v_readfirstlane_b32 s0, v2
	s_addc_u32 s0, s0, 0
	s_lshl_b32 s14, s2, 8
	s_add_i32 s2, s12, -2
	s_and_b32 s15, s0, 0xffff
	s_lshr_b32 s0, s2, 1
	s_add_i32 s4, s0, 1
	s_cmp_gt_u32 s12, 1
	s_cselect_b64 s[0:1], -1, 0
	s_and_b32 s16, s12, 0x1fe
	s_and_b32 s17, s4, 7
	s_cmp_gt_u32 s2, 13
	s_cselect_b64 s[2:3], -1, 0
	s_and_b32 s18, s4, -8
	s_cmp_lg_u32 s17, 0
	v_cndmask_b32_e64 v0, 0, 1, s[0:1]
	s_cselect_b64 s[4:5], -1, 0
	v_cmp_ne_u32_e64 s[0:1], 1, v0
	v_cndmask_b32_e64 v0, 0, 1, s[2:3]
	s_cmp_lg_u32 s16, s12
	v_cmp_ne_u32_e64 s[2:3], 1, v0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_cselect_b64 s[8:9], -1, 0
	v_cmp_ne_u32_e64 s[4:5], 1, v0
	v_mov_b32_e32 v0, 0
	s_branch .LBB0_10
.LBB0_9:                                ;   in Loop: Header=BB0_10 Depth=1
	s_mul_i32 s10, s13, s12
	s_add_i32 s10, s14, s10
	v_add_u32_e32 v2, s10, v4
	v_ashrrev_i32_e32 v3, 31, v2
	s_add_i32 s13, s13, 1
	v_lshl_add_u64 v[2:3], v[2:3], 2, s[6:7]
	s_cmp_ge_u32 s13, s15
	v_add_u32_e32 v5, s19, v5
	global_store_dword v[2:3], v1, off
	s_cbranch_scc1 .LBB0_20
.LBB0_10:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_18 Depth 2
	s_and_b64 vcc, exec, s[0:1]
	s_cbranch_vccnz .LBB0_17
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	s_mov_b32 s10, 0
	s_and_b64 vcc, exec, s[2:3]
	s_cbranch_vccnz .LBB0_19
; %bb.12:                               ;   in Loop: Header=BB0_10 Depth=1
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s11, s18
.LBB0_13:                               ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e32 v1, s10, v5
	ds_read_b128 v[6:9], v1
	s_add_i32 s10, s10, 16
	s_add_i32 s11, s11, -8
	s_cmp_lg_u32 s11, 0
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b32_e32 v1, 24, v6
	v_bfe_u32 v13, v6, 8, 8
	v_and_b32_e32 v14, 0xff, v6
	v_bfe_u32 v6, v6, 16, 8
	v_lshrrev_b32_e32 v10, 24, v7
	v_and_b32_e32 v15, 0xff, v7
	v_bfe_u32 v16, v7, 8, 8
	v_bfe_u32 v7, v7, 16, 8
	v_add3_u32 v2, v2, v14, v6
	v_add3_u32 v1, v3, v13, v1
	v_lshrrev_b32_e32 v11, 24, v8
	v_bfe_u32 v17, v8, 8, 8
	v_and_b32_e32 v18, 0xff, v8
	v_bfe_u32 v8, v8, 16, 8
	v_add3_u32 v1, v1, v16, v10
	v_add3_u32 v2, v2, v15, v7
	v_lshrrev_b32_e32 v12, 24, v9
	v_and_b32_e32 v19, 0xff, v9
	v_bfe_u32 v20, v9, 8, 8
	v_bfe_u32 v9, v9, 16, 8
	v_add3_u32 v2, v2, v18, v8
	v_add3_u32 v1, v1, v17, v11
	v_add3_u32 v3, v1, v20, v12
	v_add3_u32 v2, v2, v19, v9
	s_cbranch_scc1 .LBB0_13
; %bb.14:                               ;   in Loop: Header=BB0_10 Depth=1
	s_and_b64 vcc, exec, s[4:5]
	s_mov_b32 s11, s17
	s_cbranch_vccnz .LBB0_16
.LBB0_15:                               ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e32 v1, s10, v5
	ds_read_u16 v1, v1
	s_add_i32 s10, s10, 2
	s_add_i32 s11, s11, -1
	s_cmp_lg_u32 s11, 0
	s_waitcnt lgkmcnt(0)
	v_add_u32_sdwa v3, v3, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_1
	v_add_u32_sdwa v2, v2, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:DWORD src1_sel:BYTE_0
	s_cbranch_scc1 .LBB0_15
.LBB0_16:                               ;   in Loop: Header=BB0_10 Depth=1
	v_add_u32_e32 v1, v2, v3
	s_mov_b32 s20, s16
	s_mov_b64 s[10:11], s[8:9]
	s_and_b64 vcc, exec, s[10:11]
	s_cbranch_vccnz .LBB0_18
	s_branch .LBB0_9
.LBB0_17:                               ;   in Loop: Header=BB0_10 Depth=1
	v_mov_b32_e32 v1, 0
	s_mov_b32 s20, 0
	s_cbranch_execz .LBB0_9
.LBB0_18:                               ;   Parent Loop BB0_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_add_u32_e32 v2, s20, v5
	ds_read_u8 v2, v2
	s_add_i32 s20, s20, 1
	s_cmp_eq_u32 s12, s20
	s_waitcnt lgkmcnt(0)
	v_add_u32_e32 v1, v1, v2
	s_cbranch_scc0 .LBB0_18
	s_branch .LBB0_9
.LBB0_19:                               ;   in Loop: Header=BB0_10 Depth=1
	v_mov_b32_e32 v1, v0
	v_mov_b64_e32 v[2:3], v[0:1]
	s_and_b64 vcc, exec, s[4:5]
	s_mov_b32 s11, s17
	s_cbranch_vccz .LBB0_15
	s_branch .LBB0_16
.LBB0_20:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z18histogram256_blockPhPji
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 21
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
.Lfunc_end0:
	.size	_Z18histogram256_blockPhPji, .Lfunc_end0-_Z18histogram256_blockPhPji
                                        ; -- End function
	.set _Z18histogram256_blockPhPji.num_vgpr, 21
	.set _Z18histogram256_blockPhPji.num_agpr, 0
	.set _Z18histogram256_blockPhPji.numbered_sgpr, 21
	.set _Z18histogram256_blockPhPji.num_named_barrier, 0
	.set _Z18histogram256_blockPhPji.private_seg_size, 0
	.set _Z18histogram256_blockPhPji.uses_vcc, 1
	.set _Z18histogram256_blockPhPji.uses_flat_scratch, 0
	.set _Z18histogram256_blockPhPji.has_dyn_sized_stack, 0
	.set _Z18histogram256_blockPhPji.has_recursion, 0
	.set _Z18histogram256_blockPhPji.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1408
; TotalNumSgprs: 27
; NumVgprs: 21
; NumAgprs: 0
; TotalNumVgprs: 21
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 27
; NumVGPRsForWavesPerEU: 21
; AccumOffset: 24
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
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
      - .offset:         144
        .size:           4
        .value_kind:     hidden_dynamic_lds_size
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 280
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z18histogram256_blockPhPji
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         _Z18histogram256_blockPhPji.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     21
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
