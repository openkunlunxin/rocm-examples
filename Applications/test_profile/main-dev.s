	.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z2k1Pii                ; -- Begin function _Z2k1Pii
	.globl	_Z2k1Pii
	.p2align	8
	.type	_Z2k1Pii,@function
_Z2k1Pii:                               ; @_Z2k1Pii
; %bb.0:
	s_load_dword s6, s[0:1], 0x8
	s_cmp_lt_i32 s2, 1
	s_cselect_b64 s[4:5], -1, 0
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_b64 s[4:5], s[4:5], vcc
	s_waitcnt lgkmcnt(0)
	s_cmp_gt_i32 s6, 0
	s_cselect_b64 s[8:9], -1, 0
	s_and_b64 s[4:5], s[4:5], s[8:9]
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_cbranch_execz .LBB0_203
; %bb.1:
	s_load_dword s3, s[0:1], 0x1c
	s_load_dwordx2 s[4:5], s[0:1], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s3, 0xffff
	s_mul_i32 s0, s2, s0
	s_ashr_i32 s1, s0, 31
	s_lshl_b64 s[0:1], s[0:1], 2
	s_add_u32 s0, s4, s0
	s_addc_u32 s1, s5, s1
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_add_i32 s6, s6, -1
	s_cmp_lg_u32 s6, 0
	s_cbranch_scc0 .LBB0_203
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_19:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_21:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_23:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_25:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_27
; %bb.26:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_27:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_29
; %bb.28:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_29:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_31
; %bb.30:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_31:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_33
; %bb.32:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_33:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_35
; %bb.34:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_35:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_37
; %bb.36:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_37:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_39
; %bb.38:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_39:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_41
; %bb.40:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_41:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_43
; %bb.42:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_43:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_45
; %bb.44:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_45:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_47
; %bb.46:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_47:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_49
; %bb.48:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_49:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_51
; %bb.50:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_51:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_53
; %bb.52:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_53:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_55
; %bb.54:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_55:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_57
; %bb.56:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_57:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_59
; %bb.58:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_59:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_61
; %bb.60:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_61:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_63
; %bb.62:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_63:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_65
; %bb.64:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_65:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_67
; %bb.66:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_67:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_69
; %bb.68:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_69:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_71
; %bb.70:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_71:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_73
; %bb.72:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_73:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_75
; %bb.74:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_75:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_77
; %bb.76:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_77:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_79
; %bb.78:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_79:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_81
; %bb.80:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_81:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_83
; %bb.82:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_83:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_85
; %bb.84:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_85:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_87
; %bb.86:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_87:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_89
; %bb.88:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_89:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_91
; %bb.90:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_91:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_93
; %bb.92:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_93:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_95
; %bb.94:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_95:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_97
; %bb.96:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_97:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_99
; %bb.98:                               ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_99:                               ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_101
; %bb.100:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_101:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_103
; %bb.102:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_103:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_105
; %bb.104:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_105:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_107
; %bb.106:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_107:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_109
; %bb.108:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_109:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_111
; %bb.110:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_111:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_113
; %bb.112:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_113:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_115
; %bb.114:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_115:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_117
; %bb.116:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_117:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_119
; %bb.118:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_119:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_121
; %bb.120:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_121:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_123
; %bb.122:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_123:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_125
; %bb.124:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_125:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_127
; %bb.126:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_127:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_129
; %bb.128:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_129:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_131
; %bb.130:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_131:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_133
; %bb.132:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_133:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_135
; %bb.134:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_135:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_137
; %bb.136:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_137:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_139
; %bb.138:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_139:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_141
; %bb.140:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_141:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_143
; %bb.142:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_143:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_145
; %bb.144:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_145:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_147
; %bb.146:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_147:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_149
; %bb.148:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_149:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_151
; %bb.150:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_151:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_153
; %bb.152:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_153:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_155
; %bb.154:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_155:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_157
; %bb.156:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_157:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_159
; %bb.158:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_159:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_161
; %bb.160:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_161:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_163
; %bb.162:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_163:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_165
; %bb.164:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_165:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_167
; %bb.166:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_167:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_169
; %bb.168:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_169:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_171
; %bb.170:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_171:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_173
; %bb.172:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_173:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_175
; %bb.174:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_175:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_177
; %bb.176:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_177:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_179
; %bb.178:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_179:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_181
; %bb.180:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_181:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_183
; %bb.182:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_183:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_185
; %bb.184:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_185:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_187
; %bb.186:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_187:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_189
; %bb.188:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_189:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_191
; %bb.190:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_191:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_193
; %bb.192:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_193:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_195
; %bb.194:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_195:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_197
; %bb.196:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_197:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_199
; %bb.198:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_199:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_201
; %bb.200:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
.LBB0_201:                              ;   in Loop: Header=BB0_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_mov_b64 s[4:5], exec
	v_mbcnt_lo_u32_b32 v1, s4, 0
	v_mbcnt_hi_u32_b32 v1, s5, v1
	v_cmp_eq_u32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB0_2
; %bb.202:                              ;   in Loop: Header=BB0_3 Depth=1
	s_bcnt1_i32_b64 s4, s[4:5]
	v_mov_b32_e32 v1, s4
	global_atomic_add v0, v1, s[0:1]
	s_branch .LBB0_2
.LBB0_203:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z2k1Pii
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
	.size	_Z2k1Pii, .Lfunc_end0-_Z2k1Pii
                                        ; -- End function
	.set _Z2k1Pii.num_vgpr, 2
	.set _Z2k1Pii.num_agpr, 0
	.set _Z2k1Pii.numbered_sgpr, 10
	.set _Z2k1Pii.num_named_barrier, 0
	.set _Z2k1Pii.private_seg_size, 0
	.set _Z2k1Pii.uses_vcc, 1
	.set _Z2k1Pii.uses_flat_scratch, 0
	.set _Z2k1Pii.has_dyn_sized_stack, 0
	.set _Z2k1Pii.has_recursion, 0
	.set _Z2k1Pii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5324
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
    .name:           _Z2k1Pii
    .private_segment_fixed_size: 0
    .sgpr_count:     16
    .sgpr_spill_count: 0
    .symbol:         _Z2k1Pii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     2
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx942
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
