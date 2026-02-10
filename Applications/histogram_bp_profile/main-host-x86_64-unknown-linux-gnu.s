	.file	"main.hip"
	.text
	.globl	_Z33__device_stub__histogram256_blockPhPji # -- Begin function _Z33__device_stub__histogram256_blockPhPji
	.p2align	4
	.type	_Z33__device_stub__histogram256_blockPhPji,@function
_Z33__device_stub__histogram256_blockPhPji: # @_Z33__device_stub__histogram256_blockPhPji
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 12(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z18histogram256_blockPhPji, %edi
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	retq
.Lfunc_end0:
	.size	_Z33__device_stub__histogram256_blockPhPji, .Lfunc_end0-_Z33__device_stub__histogram256_blockPhPji
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	.cfi_escape 0x2e, 0x00
	movl	$1048576, %edi                  # imm = 0x100000
	callq	_Znwm
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	xorl	%r12d, %r12d
	movl	$1048576, %edx                  # imm = 0x100000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	$1, 48(%rsp)
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rax, 120(%rsp)
	leaq	48(%rsp), %r14
	leaq	120(%rsp), %r15
	.p2align	4
.LBB1_1:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp0:                                 # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.noexc
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	%al, (%rbx,%r12)
	incq	%r12
	cmpq	$1048576, %r12                  # imm = 0x100000
	jne	.LBB1_1
# %bb.3:                                # %_ZSt8generateIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEZ4mainEUlvE_EvT_S8_T0_.exit
.Ltmp3:                                 # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edi                     # imm = 0x400
	callq	_Znwm
.Ltmp4:                                 # EH_LABEL
# %bb.4:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edx                     # imm = 0x400
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp6:                                 # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edi                    # imm = 0x8000
	callq	_Znwm
.Ltmp7:                                 # EH_LABEL
# %bb.5:
	movq	%rax, %r15
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$0, 4(%rsp)
.Ltmp9:                                 # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	16(%rsp), %rdi
	callq	hipEventCreate
.Ltmp10:                                # EH_LABEL
# %bb.6:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_85
# %bb.7:
.Ltmp28:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate
.Ltmp29:                                # EH_LABEL
# %bb.8:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_94
# %bb.9:
.Ltmp47:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	movl	$8192, %esi                     # imm = 0x2000
	callq	hipMalloc
.Ltmp48:                                # EH_LABEL
# %bb.10:                               # %_ZL9hipMallocIjE10hipError_tPPT_m.exit
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_103
# %bb.11:
.Ltmp66:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	32(%rsp), %rdi
	movl	$1048576, %esi                  # imm = 0x100000
	callq	hipMalloc
.Ltmp67:                                # EH_LABEL
# %bb.12:                               # %_ZL9hipMallocIhE10hipError_tPPT_m.exit
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_112
# %bb.13:
	movq	32(%rsp), %rdi
.Ltmp85:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$1048576, %edx                  # imm = 0x100000
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
.Ltmp86:                                # EH_LABEL
# %bb.14:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_121
# %bb.15:
.Ltmp104:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.3, %esi
	movl	$36, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp105:                               # EH_LABEL
# %bb.16:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
.Ltmp106:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$8, %esi
	callq	_ZNSolsEi
.Ltmp107:                               # EH_LABEL
# %bb.17:
.Ltmp108:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.4, %esi
	movl	$16, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp109:                               # EH_LABEL
# %bb.18:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
.Ltmp110:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$128, %esi
	callq	_ZNSolsEi
.Ltmp111:                               # EH_LABEL
# %bb.19:
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB1_83
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r13)
	je	.LBB1_22
# %bb.21:
	movzbl	67(%r13), %eax
	jmp	.LBB1_24
.LBB1_22:
.Ltmp112:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp113:                               # EH_LABEL
# %bb.23:                               # %.noexc260
	movq	(%r13), %rax
.Ltmp114:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp115:                               # EH_LABEL
.LBB1_24:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp116:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
.Ltmp117:                               # EH_LABEL
# %bb.25:                               # %.noexc262
.Ltmp118:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp119:                               # EH_LABEL
# %bb.26:                               # %_ZNSolsEPFRSoS_E.exit153
	movq	16(%rsp), %rdi
.Ltmp120:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord
.Ltmp121:                               # EH_LABEL
# %bb.27:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_130
# %bb.28:
.Ltmp139:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967304, %rdi               # imm = 0x100000008
	movabsq	$4294967424, %rdx               # imm = 0x100000080
	movl	$32768, %r8d                    # imm = 0x8000
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
.Ltmp140:                               # EH_LABEL
# %bb.29:
	testl	%eax, %eax
	jne	.LBB1_32
# %bb.30:
	movq	32(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, 112(%rsp)
	movq	%rcx, 104(%rsp)
	movl	$1024, 44(%rsp)                 # imm = 0x400
	leaq	112(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	44(%rsp), %rax
	movq	%rax, 144(%rsp)
.Ltmp141:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	88(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	64(%rsp), %rdx
	leaq	56(%rsp), %rcx
	callq	__hipPopCallConfiguration
.Ltmp142:                               # EH_LABEL
# %bb.31:                               # %.noexc162
	movq	88(%rsp), %rsi
	movl	96(%rsp), %edx
	movq	72(%rsp), %rcx
	movl	80(%rsp), %r8d
.Ltmp143:                               # EH_LABEL
	.cfi_escape 0x2e, 0x10
	leaq	128(%rsp), %r9
	movl	$_Z18histogram256_blockPhPji, %edi
	pushq	56(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp144:                               # EH_LABEL
.LBB1_32:
.Ltmp145:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipGetLastError
.Ltmp146:                               # EH_LABEL
# %bb.33:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_139
# %bb.34:
	movq	8(%rsp), %rdi
.Ltmp164:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord
.Ltmp165:                               # EH_LABEL
# %bb.35:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_148
# %bb.36:
	movq	8(%rsp), %rdi
.Ltmp183:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize
.Ltmp184:                               # EH_LABEL
# %bb.37:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_157
# %bb.38:
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp202:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	leaq	4(%rsp), %rdi
	callq	hipEventElapsedTime
.Ltmp203:                               # EH_LABEL
# %bb.39:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_166
# %bb.40:
.Ltmp221:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	movl	$.L.str.5, %esi
	movl	$12, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp222:                               # EH_LABEL
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
	movss	4(%rsp), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp223:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cout, %edi
	callq	_ZNSo9_M_insertIdEERSoT_
.Ltmp224:                               # EH_LABEL
# %bb.42:                               # %_ZNSolsEf.exit
.Ltmp225:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.6, %esi
	movl	$14, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp226:                               # EH_LABEL
# %bb.43:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit200
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB1_83
# %bb.44:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265
	cmpb	$0, 56(%r13)
	je	.LBB1_46
# %bb.45:
	movzbl	67(%r13), %eax
	jmp	.LBB1_48
.LBB1_46:
.Ltmp227:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp228:                               # EH_LABEL
# %bb.47:                               # %.noexc270
	movq	(%r13), %rax
.Ltmp229:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp230:                               # EH_LABEL
.LBB1_48:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i267
.Ltmp231:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
.Ltmp232:                               # EH_LABEL
# %bb.49:                               # %.noexc272
.Ltmp233:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp234:                               # EH_LABEL
# %bb.50:                               # %_ZNSolsEPFRSoS_E.exit202
	movq	24(%rsp), %rsi
.Ltmp235:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$8192, %edx                     # imm = 0x2000
	movq	%r15, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
.Ltmp236:                               # EH_LABEL
# %bb.51:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_175
# %bb.52:                               # %vector.body.preheader
	movl	$12, %eax
	.p2align	4
.LBB1_53:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%r15,%rax,4), %xmm0
	movdqu	-32(%r15,%rax,4), %xmm1
	movdqu	-48(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	-32(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	-16(%r14,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm3
	movdqu	%xmm2, -48(%r14,%rax,4)
	movdqu	%xmm0, -32(%r14,%rax,4)
	movdqu	-16(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, -16(%r14,%rax,4)
	movdqu	%xmm1, (%r14,%rax,4)
	addq	$16, %rax
	cmpq	$268, %rax                      # imm = 0x10C
	jne	.LBB1_53
# %bb.54:                               # %vector.body348.preheader
	movl	$12, %eax
	.p2align	4
.LBB1_55:                               # %vector.body348
                                        # =>This Inner Loop Header: Depth=1
	movdqu	976(%r15,%rax,4), %xmm0
	movdqu	992(%r15,%rax,4), %xmm1
	movdqu	-48(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	-32(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	-16(%r14,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm3
	movdqu	%xmm2, -48(%r14,%rax,4)
	movdqu	%xmm0, -32(%r14,%rax,4)
	movdqu	1008(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	1024(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, -16(%r14,%rax,4)
	movdqu	%xmm1, (%r14,%rax,4)
	addq	$16, %rax
	cmpq	$268, %rax                      # imm = 0x10C
	jne	.LBB1_55
# %bb.56:                               # %vector.body357.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_57:                               # %vector.body357
                                        # =>This Inner Loop Header: Depth=1
	movdqu	2048(%r15,%rax,4), %xmm0
	movdqu	2064(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	2080(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	2096(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_57
# %bb.58:                               # %vector.body366.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_59:                               # %vector.body366
                                        # =>This Inner Loop Header: Depth=1
	movdqu	3072(%r15,%rax,4), %xmm0
	movdqu	3088(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	3104(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	3120(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_59
# %bb.60:                               # %vector.body375.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_61:                               # %vector.body375
                                        # =>This Inner Loop Header: Depth=1
	movdqu	4096(%r15,%rax,4), %xmm0
	movdqu	4112(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	4128(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	4144(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_61
# %bb.62:                               # %vector.body384.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_63:                               # %vector.body384
                                        # =>This Inner Loop Header: Depth=1
	movdqu	5120(%r15,%rax,4), %xmm0
	movdqu	5136(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	5152(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	5168(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_63
# %bb.64:                               # %vector.body393.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_65:                               # %vector.body393
                                        # =>This Inner Loop Header: Depth=1
	movdqu	6144(%r15,%rax,4), %xmm0
	movdqu	6160(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	6176(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	6192(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_65
# %bb.66:                               # %vector.body402.preheader
	xorl	%eax, %eax
	.p2align	4
.LBB1_67:                               # %vector.body402
                                        # =>This Inner Loop Header: Depth=1
	movdqu	7168(%r15,%rax,4), %xmm0
	movdqu	7184(%r15,%rax,4), %xmm1
	movdqu	(%r14,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%r14,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	32(%r14,%rax,4), %xmm1
	movdqu	48(%r14,%rax,4), %xmm3
	movdqu	%xmm2, (%r14,%rax,4)
	movdqu	%xmm0, 16(%r14,%rax,4)
	movdqu	7200(%r15,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	7216(%r15,%rax,4), %xmm1
	paddd	%xmm3, %xmm1
	movdqu	%xmm0, 32(%r14,%rax,4)
	movdqu	%xmm1, 48(%r14,%rax,4)
	addq	$16, %rax
	cmpq	$256, %rax                      # imm = 0x100
	jne	.LBB1_67
# %bb.68:                               # %middle.block409
	movq	24(%rsp), %rdi
.Ltmp254:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp255:                               # EH_LABEL
# %bb.69:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_184
# %bb.70:
	movq	32(%rsp), %rdi
.Ltmp273:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipFree
.Ltmp274:                               # EH_LABEL
# %bb.71:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_193
# %bb.72:
	movq	16(%rsp), %rdi
.Ltmp292:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy
.Ltmp293:                               # EH_LABEL
# %bb.73:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_202
# %bb.74:
	movq	8(%rsp), %rdi
.Ltmp311:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy
.Ltmp312:                               # EH_LABEL
# %bb.75:
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB1_211
# %bb.76:
.Ltmp330:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edi                     # imm = 0x400
	callq	_Znwm
.Ltmp331:                               # EH_LABEL
# %bb.77:
	movq	%rax, %r13
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edx                     # imm = 0x400
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$3, %eax
	.p2align	4
.LBB1_78:                               # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rbx,%rax), %ecx
	incl	(%r13,%rcx,4)
	movzbl	-2(%rbx,%rax), %ecx
	incl	(%r13,%rcx,4)
	movzbl	-1(%rbx,%rax), %ecx
	incl	(%r13,%rcx,4)
	movzbl	(%rbx,%rax), %ecx
	incl	(%r13,%rcx,4)
	addq	$4, %rax
	cmpq	$1048579, %rax                  # imm = 0x100003
	jne	.LBB1_78
# %bb.79:                               # %vector.body411.preheader
	pxor	%xmm1, %xmm1
	movl	$12, %eax
	movdqa	.LCPI1_0(%rip), %xmm0           # xmm0 = [2,2,2,2]
	pxor	%xmm2, %xmm2
	.p2align	4
.LBB1_80:                               # %vector.body411
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%r14,%rax,4), %xmm3
	movdqu	-32(%r14,%rax,4), %xmm4
	movdqu	-16(%r14,%rax,4), %xmm5
	movdqu	(%r14,%rax,4), %xmm6
	movdqu	-48(%r13,%rax,4), %xmm7
	pcmpeqd	%xmm3, %xmm7
	paddd	%xmm1, %xmm7
	movdqu	-32(%r13,%rax,4), %xmm3
	pcmpeqd	%xmm4, %xmm3
	paddd	%xmm2, %xmm3
	movdqu	-16(%r13,%rax,4), %xmm1
	pcmpeqd	%xmm5, %xmm1
	movdqu	(%r13,%rax,4), %xmm2
	pcmpeqd	%xmm6, %xmm2
	paddd	%xmm0, %xmm1
	paddd	%xmm7, %xmm1
	paddd	%xmm0, %xmm2
	paddd	%xmm3, %xmm2
	addq	$16, %rax
	cmpq	$268, %rax                      # imm = 0x10C
	jne	.LBB1_80
# %bb.81:                               # %middle.block419
	paddd	%xmm1, %xmm2
	pshufd	$238, %xmm2, %xmm0              # xmm0 = xmm2[2,3,2,3]
	paddd	%xmm2, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
.Ltmp333:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	_Z24report_validation_resulti
.Ltmp334:                               # EH_LABEL
# %bb.82:                               # %_ZNSt6vectorIhSaIhEED2Ev.exit
	movl	%eax, %ebp
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	%r13, %rdi
	callq	_ZdlPvm
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	%r15, %rdi
	callq	_ZdlPvm
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	%r14, %rdi
	callq	_ZdlPvm
	.cfi_escape 0x2e, 0x00
	movl	$1048576, %esi                  # imm = 0x100000
	movq	%rbx, %rdi
	callq	_ZdlPvm
	movl	%ebp, %eax
	addq	$152, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_83:                               # %.invoke
	.cfi_def_cfa_offset 208
.Ltmp336:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	callq	_ZSt16__throw_bad_castv
.Ltmp337:                               # EH_LABEL
# %bb.84:                               # %.cont
.LBB1_85:
.Ltmp11:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp12:                                # EH_LABEL
# %bb.86:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp13:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp14:                                # EH_LABEL
# %bb.87:
.Ltmp15:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp16:                                # EH_LABEL
# %bb.88:
.Ltmp17:                                # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp18:                                # EH_LABEL
# %bb.89:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
.Ltmp19:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp20:                                # EH_LABEL
# %bb.90:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
.Ltmp21:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp22:                                # EH_LABEL
# %bb.91:
.Ltmp23:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$121, %esi
	callq	_ZNSolsEi
.Ltmp24:                                # EH_LABEL
# %bb.92:
.Ltmp25:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp26:                                # EH_LABEL
# %bb.93:                               # %_ZNSolsEPFRSoS_E.exit
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_94:
.Ltmp30:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp31:                                # EH_LABEL
# %bb.95:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit115
.Ltmp32:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp33:                                # EH_LABEL
# %bb.96:
.Ltmp34:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp35:                                # EH_LABEL
# %bb.97:
.Ltmp36:                                # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp37:                                # EH_LABEL
# %bb.98:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
.Ltmp38:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp39:                                # EH_LABEL
# %bb.99:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
.Ltmp40:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp41:                                # EH_LABEL
# %bb.100:
.Ltmp42:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$122, %esi
	callq	_ZNSolsEi
.Ltmp43:                                # EH_LABEL
# %bb.101:
.Ltmp44:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp45:                                # EH_LABEL
# %bb.102:                              # %_ZNSolsEPFRSoS_E.exit121
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_103:
.Ltmp49:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp50:                                # EH_LABEL
# %bb.104:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
.Ltmp51:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp52:                                # EH_LABEL
# %bb.105:
.Ltmp53:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp54:                                # EH_LABEL
# %bb.106:
.Ltmp55:                                # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp56:                                # EH_LABEL
# %bb.107:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
.Ltmp57:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp58:                                # EH_LABEL
# %bb.108:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128
.Ltmp59:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp60:                                # EH_LABEL
# %bb.109:
.Ltmp61:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$124, %esi
	callq	_ZNSolsEi
.Ltmp62:                                # EH_LABEL
# %bb.110:
.Ltmp63:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp64:                                # EH_LABEL
# %bb.111:                              # %_ZNSolsEPFRSoS_E.exit130
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_112:
.Ltmp68:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp69:                                # EH_LABEL
# %bb.113:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
.Ltmp70:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp71:                                # EH_LABEL
# %bb.114:
.Ltmp72:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp73:                                # EH_LABEL
# %bb.115:
.Ltmp74:                                # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp75:                                # EH_LABEL
# %bb.116:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit135
.Ltmp76:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp77:                                # EH_LABEL
# %bb.117:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
.Ltmp78:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp79:                                # EH_LABEL
# %bb.118:
.Ltmp80:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$125, %esi
	callq	_ZNSolsEi
.Ltmp81:                                # EH_LABEL
# %bb.119:
.Ltmp82:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp83:                                # EH_LABEL
# %bb.120:                              # %_ZNSolsEPFRSoS_E.exit139
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_121:
.Ltmp87:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp88:                                # EH_LABEL
# %bb.122:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
.Ltmp89:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp90:                                # EH_LABEL
# %bb.123:
.Ltmp91:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp92:                                # EH_LABEL
# %bb.124:
.Ltmp93:                                # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp94:                                # EH_LABEL
# %bb.125:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143
.Ltmp95:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp96:                                # EH_LABEL
# %bb.126:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
.Ltmp97:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp98:                                # EH_LABEL
# %bb.127:
.Ltmp99:                                # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$127, %esi
	callq	_ZNSolsEi
.Ltmp100:                               # EH_LABEL
# %bb.128:
.Ltmp101:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp102:                               # EH_LABEL
# %bb.129:                              # %_ZNSolsEPFRSoS_E.exit147
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_130:
.Ltmp122:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp123:                               # EH_LABEL
# %bb.131:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit155
.Ltmp124:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp125:                               # EH_LABEL
# %bb.132:
.Ltmp126:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp127:                               # EH_LABEL
# %bb.133:
.Ltmp128:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp129:                               # EH_LABEL
# %bb.134:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
.Ltmp130:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp131:                               # EH_LABEL
# %bb.135:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
.Ltmp132:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp133:                               # EH_LABEL
# %bb.136:
.Ltmp134:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$133, %esi
	callq	_ZNSolsEi
.Ltmp135:                               # EH_LABEL
# %bb.137:
.Ltmp136:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp137:                               # EH_LABEL
# %bb.138:                              # %_ZNSolsEPFRSoS_E.exit161
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_139:
.Ltmp147:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp148:                               # EH_LABEL
# %bb.140:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165
.Ltmp149:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp150:                               # EH_LABEL
# %bb.141:
.Ltmp151:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp152:                               # EH_LABEL
# %bb.142:
.Ltmp153:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp154:                               # EH_LABEL
# %bb.143:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167
.Ltmp155:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp156:                               # EH_LABEL
# %bb.144:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169
.Ltmp157:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp158:                               # EH_LABEL
# %bb.145:
.Ltmp159:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$139, %esi
	callq	_ZNSolsEi
.Ltmp160:                               # EH_LABEL
# %bb.146:
.Ltmp161:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp162:                               # EH_LABEL
# %bb.147:                              # %_ZNSolsEPFRSoS_E.exit171
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_148:
.Ltmp166:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp167:                               # EH_LABEL
# %bb.149:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
.Ltmp168:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp169:                               # EH_LABEL
# %bb.150:
.Ltmp170:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp171:                               # EH_LABEL
# %bb.151:
.Ltmp172:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp173:                               # EH_LABEL
# %bb.152:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
.Ltmp174:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp175:                               # EH_LABEL
# %bb.153:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
.Ltmp176:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp177:                               # EH_LABEL
# %bb.154:
.Ltmp178:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$142, %esi
	callq	_ZNSolsEi
.Ltmp179:                               # EH_LABEL
# %bb.155:
.Ltmp180:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp181:                               # EH_LABEL
# %bb.156:                              # %_ZNSolsEPFRSoS_E.exit179
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_157:
.Ltmp185:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp186:                               # EH_LABEL
# %bb.158:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit181
.Ltmp187:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp188:                               # EH_LABEL
# %bb.159:
.Ltmp189:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp190:                               # EH_LABEL
# %bb.160:
.Ltmp191:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp192:                               # EH_LABEL
# %bb.161:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
.Ltmp193:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp194:                               # EH_LABEL
# %bb.162:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185
.Ltmp195:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp196:                               # EH_LABEL
# %bb.163:
.Ltmp197:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$143, %esi
	callq	_ZNSolsEi
.Ltmp198:                               # EH_LABEL
# %bb.164:
.Ltmp199:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp200:                               # EH_LABEL
# %bb.165:                              # %_ZNSolsEPFRSoS_E.exit187
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_166:
.Ltmp204:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp205:                               # EH_LABEL
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
.Ltmp206:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp207:                               # EH_LABEL
# %bb.168:
.Ltmp208:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp209:                               # EH_LABEL
# %bb.169:
.Ltmp210:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp211:                               # EH_LABEL
# %bb.170:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
.Ltmp212:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp213:                               # EH_LABEL
# %bb.171:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
.Ltmp214:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp215:                               # EH_LABEL
# %bb.172:
.Ltmp216:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$144, %esi
	callq	_ZNSolsEi
.Ltmp217:                               # EH_LABEL
# %bb.173:
.Ltmp218:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp219:                               # EH_LABEL
# %bb.174:                              # %_ZNSolsEPFRSoS_E.exit195
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_175:
.Ltmp237:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp238:                               # EH_LABEL
# %bb.176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit204
.Ltmp239:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp240:                               # EH_LABEL
# %bb.177:
.Ltmp241:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp242:                               # EH_LABEL
# %bb.178:
.Ltmp243:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp244:                               # EH_LABEL
# %bb.179:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit206
.Ltmp245:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp246:                               # EH_LABEL
# %bb.180:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit208
.Ltmp247:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp248:                               # EH_LABEL
# %bb.181:
.Ltmp249:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$151, %esi
	callq	_ZNSolsEi
.Ltmp250:                               # EH_LABEL
# %bb.182:
.Ltmp251:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp252:                               # EH_LABEL
# %bb.183:                              # %_ZNSolsEPFRSoS_E.exit210
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_184:
.Ltmp256:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp257:                               # EH_LABEL
# %bb.185:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212
.Ltmp258:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp259:                               # EH_LABEL
# %bb.186:
.Ltmp260:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp261:                               # EH_LABEL
# %bb.187:
.Ltmp262:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp263:                               # EH_LABEL
# %bb.188:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit214
.Ltmp264:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp265:                               # EH_LABEL
# %bb.189:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit216
.Ltmp266:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp267:                               # EH_LABEL
# %bb.190:
.Ltmp268:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$163, %esi
	callq	_ZNSolsEi
.Ltmp269:                               # EH_LABEL
# %bb.191:
.Ltmp270:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp271:                               # EH_LABEL
# %bb.192:                              # %_ZNSolsEPFRSoS_E.exit218
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_193:
.Ltmp275:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp276:                               # EH_LABEL
# %bb.194:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
.Ltmp277:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp278:                               # EH_LABEL
# %bb.195:
.Ltmp279:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp280:                               # EH_LABEL
# %bb.196:
.Ltmp281:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp282:                               # EH_LABEL
# %bb.197:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
.Ltmp283:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp284:                               # EH_LABEL
# %bb.198:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
.Ltmp285:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp286:                               # EH_LABEL
# %bb.199:
.Ltmp287:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$164, %esi
	callq	_ZNSolsEi
.Ltmp288:                               # EH_LABEL
# %bb.200:
.Ltmp289:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp290:                               # EH_LABEL
# %bb.201:                              # %_ZNSolsEPFRSoS_E.exit226
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_202:
.Ltmp294:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp295:                               # EH_LABEL
# %bb.203:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit228
.Ltmp296:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp297:                               # EH_LABEL
# %bb.204:
.Ltmp298:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp299:                               # EH_LABEL
# %bb.205:
.Ltmp300:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp301:                               # EH_LABEL
# %bb.206:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
.Ltmp302:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp303:                               # EH_LABEL
# %bb.207:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232
.Ltmp304:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp305:                               # EH_LABEL
# %bb.208:
.Ltmp306:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$165, %esi
	callq	_ZNSolsEi
.Ltmp307:                               # EH_LABEL
# %bb.209:
.Ltmp308:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp309:                               # EH_LABEL
# %bb.210:                              # %_ZNSolsEPFRSoS_E.exit234
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_211:
.Ltmp313:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	$23, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp314:                               # EH_LABEL
# %bb.212:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
.Ltmp315:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	%ebp, %edi
	callq	hipGetErrorString
.Ltmp316:                               # EH_LABEL
# %bb.213:
.Ltmp317:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$_ZSt4cerr, %edi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp318:                               # EH_LABEL
# %bb.214:
.Ltmp319:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.1, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp320:                               # EH_LABEL
# %bb.215:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
.Ltmp321:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movl	$.L.str.2, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp322:                               # EH_LABEL
# %bb.216:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit240
.Ltmp323:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movl	$58, %esi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.Ltmp324:                               # EH_LABEL
# %bb.217:
.Ltmp325:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movl	$166, %esi
	callq	_ZNSolsEi
.Ltmp326:                               # EH_LABEL
# %bb.218:
.Ltmp327:                               # EH_LABEL
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp328:                               # EH_LABEL
# %bb.219:                              # %_ZNSolsEPFRSoS_E.exit242
	.cfi_escape 0x2e, 0x00
	movl	$-1, %edi
	callq	exit
.LBB1_220:                              # %_ZNSt6vectorIjSaIjEED2Ev.exit251
.Ltmp335:                               # EH_LABEL
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	%r13, %rdi
	callq	_ZdlPvm
	jmp	.LBB1_241
.LBB1_221:
.Ltmp332:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_222:
.Ltmp8:                                 # EH_LABEL
	movq	%rax, %r12
	jmp	.LBB1_242
.LBB1_223:
.Ltmp5:                                 # EH_LABEL
	jmp	.LBB1_244
.LBB1_224:
.Ltmp329:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_225:
.Ltmp310:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_226:
.Ltmp291:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_227:
.Ltmp272:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_228:
.Ltmp253:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_229:
.Ltmp220:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_230:
.Ltmp201:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_231:
.Ltmp182:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_232:
.Ltmp163:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_233:
.Ltmp138:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_234:
.Ltmp103:                               # EH_LABEL
	jmp	.LBB1_240
.LBB1_235:
.Ltmp84:                                # EH_LABEL
	jmp	.LBB1_240
.LBB1_236:
.Ltmp65:                                # EH_LABEL
	jmp	.LBB1_240
.LBB1_237:
.Ltmp46:                                # EH_LABEL
	jmp	.LBB1_240
.LBB1_238:
.Ltmp27:                                # EH_LABEL
	jmp	.LBB1_240
.LBB1_239:
.Ltmp338:                               # EH_LABEL
.LBB1_240:                              # %_ZNSt6vectorIjSaIjEED2Ev.exit253
	movq	%rax, %r12
.LBB1_241:                              # %_ZNSt6vectorIjSaIjEED2Ev.exit253
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	%r15, %rdi
	callq	_ZdlPvm
.LBB1_242:                              # %_ZNSt6vectorIjSaIjEED2Ev.exit255
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	%r14, %rdi
	callq	_ZdlPvm
	jmp	.LBB1_245
.LBB1_243:
.Ltmp2:                                 # EH_LABEL
.LBB1_244:                              # %_ZNSt6vectorIhSaIhEED2Ev.exit257
	movq	%rax, %r12
.LBB1_245:                              # %_ZNSt6vectorIhSaIhEED2Ev.exit257
	.cfi_escape 0x2e, 0x00
	movl	$1048576, %esi                  # imm = 0x100000
	movq	%rbx, %rdi
	callq	_ZdlPvm
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp84-.Lfunc_begin0          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 12 <<
	.uleb128 .Ltmp119-.Ltmp104              #   Call between .Ltmp104 and .Ltmp119
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin0         # >> Call Site 13 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 14 <<
	.uleb128 .Ltmp144-.Ltmp139              #   Call between .Ltmp139 and .Ltmp144
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 15 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp163-.Lfunc_begin0         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin0         # >> Call Site 16 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 17 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 18 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp220-.Lfunc_begin0         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin0         # >> Call Site 19 <<
	.uleb128 .Ltmp234-.Ltmp221              #   Call between .Ltmp221 and .Ltmp234
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin0         # >> Call Site 20 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp253-.Lfunc_begin0         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp272-.Lfunc_begin0         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp291-.Lfunc_begin0         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp310-.Lfunc_begin0         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp329-.Lfunc_begin0         #     jumps to .Ltmp329
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp330-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp331-.Ltmp330              #   Call between .Ltmp330 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin0         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp333-.Ltmp331              #   Call between .Ltmp331 and .Ltmp333
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin0         #     jumps to .Ltmp335
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp26-.Ltmp11                #   Call between .Ltmp11 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp45-.Ltmp30                #   Call between .Ltmp30 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp64-.Ltmp49                #   Call between .Ltmp49 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp83-.Ltmp68                #   Call between .Ltmp68 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin0          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp102-.Ltmp87               #   Call between .Ltmp87 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp137-.Ltmp122              #   Call between .Ltmp122 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp162-.Ltmp147              #   Call between .Ltmp147 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin0         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp181-.Ltmp166              #   Call between .Ltmp166 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp200-.Ltmp185              #   Call between .Ltmp185 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp219-.Ltmp204              #   Call between .Ltmp204 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin0         #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp252-.Ltmp237              #   Call between .Ltmp237 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin0         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp271-.Ltmp256              #   Call between .Ltmp256 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin0         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp290-.Ltmp275              #   Call between .Ltmp275 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin0         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp309-.Ltmp294              #   Call between .Ltmp294 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin0         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp313-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp328-.Ltmp313              #   Call between .Ltmp313 and .Ltmp328
	.uleb128 .Ltmp329-.Lfunc_begin0         #     jumps to .Ltmp329
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Lfunc_end1-.Ltmp328           #   Call between .Ltmp328 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z24report_validation_resulti,"axG",@progbits,_Z24report_validation_resulti,comdat
	.weak	_Z24report_validation_resulti   # -- Begin function _Z24report_validation_resulti
	.p2align	4
	.type	_Z24report_validation_resulti,@function
_Z24report_validation_resulti:          # @_Z24report_validation_resulti
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testl	%edi, %edi
	je	.LBB2_6
# %bb.1:
	movl	%edi, %ebx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	movl	$27, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movl	%ebx, %esi
	callq	_ZNSolsEi
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB2_12
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%rbx)
	je	.LBB2_4
# %bb.3:
	movzbl	67(%rbx), %ecx
	jmp	.LBB2_5
.LBB2_6:
	movl	$_ZSt4cout, %edi
	movl	$.L.str.8, %esi
	movl	$18, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_12
# %bb.7:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5
	cmpb	$0, 56(%rbx)
	je	.LBB2_9
# %bb.8:
	movzbl	67(%rbx), %eax
	jmp	.LBB2_10
.LBB2_4:
	movq	%rbx, %rdi
	movq	%rax, %r14
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	movl	%eax, %ecx
	movq	%r14, %rax
.LBB2_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%cl, %esi
	movq	%rax, %rdi
	callq	_ZNSo3putEc
	movl	$-1, %ebx
	jmp	.LBB2_11
.LBB2_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_10:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	xorl	%ebx, %ebx
.LBB2_11:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_12:
	.cfi_def_cfa_offset 32
	callq	_ZSt16__throw_bad_castv
.Lfunc_end2:
	.size	_Z24report_validation_resulti, .Lfunc_end2-_Z24report_validation_resulti
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE
	.p2align	4
	.type	_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rdx), %edi
	movl	4(%rdx), %r13d
	subq	%rdi, %r13
	cmpq	$2147483644, %r13               # imm = 0x7FFFFFFC
	ja	.LBB3_4
# %bb.1:
	incq	%r13
	movl	$2147483645, %eax               # imm = 0x7FFFFFFD
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %ecx
	movq	%rcx, %r8
	imulq	%r13, %r8
	movq	(%rbx), %rdx
	movabsq	$8589934597, %r9                # imm = 0x200000005
	.p2align	4
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	imulq	$16807, %rdx, %rsi              # imm = 0x41A7
	movq	%rsi, %rax
	mulq	%r9
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	leaq	(%rsi,%rax), %rdx
	addq	%rsi, %rax
	decq	%rax
	cmpq	%r8, %rax
	jae	.LBB3_2
# %bb.3:
	movq	%rdx, (%rbx)
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB3_8
.LBB3_4:
	cmpq	$2147483645, %r13               # imm = 0x7FFFFFFD
	jne	.LBB3_5
# %bb.9:
	imulq	$16807, (%rbx), %rcx            # imm = 0x41A7
	movabsq	$8589934597, %rdx               # imm = 0x200000005
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, (%rbx)
	addq	%rcx, %rax
	decq	%rax
	jmp	.LBB3_8
.LBB3_5:                                # %.preheader
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%r13, %rax
	shrq	%rax
	movabsq	$-9223372028264841207, %rcx     # imm = 0x8000000200000009
	mulq	%rcx
	movq	%rdx, %r15
	shrq	$29, %r15
	leaq	8(%rsp), %r12
	movabsq	$8589934597, %rbp               # imm = 0x200000005
	.p2align	4
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rsp)
	movl	%r15d, 12(%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE
	movl	%eax, %esi
	leaq	(%rsi,%rsi), %rax
	shlq	$31, %rsi
	subq	%rax, %rsi
	imulq	$16807, (%rbx), %rcx            # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	shrq	%rdi
	addq	%rdx, %rdi
	shrq	$30, %rdi
	movq	%rdi, %rax
	shlq	$31, %rax
	subq	%rax, %rdi
	addq	%rcx, %rdi
	leaq	(%rsi,%rdi), %rax
	decq	%rax
	cmpq	%r13, %rax
	seta	%cl
	movq	%rdi, (%rbx)
	cmpq	%rsi, %rax
	setb	%dl
	orb	%cl, %dl
	jne	.LBB3_6
# %bb.7:                                # %.loopexit.loopexit
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	(%rcx), %edi
.LBB3_8:                                # %.loopexit
	addl	%edi, %eax
                                        # kill: def $eax killed $eax killed $rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE, .Lfunc_end3-_ZNSt24uniform_int_distributionIjEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEjRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4                               # -- Begin function _GLOBAL__sub_I_main.hip
	.type	_GLOBAL__sub_I_main.hip,@function
_GLOBAL__sub_I_main.hip:                # @_GLOBAL__sub_I_main.hip
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end4:
	.size	_GLOBAL__sub_I_main.hip, .Lfunc_end4-_GLOBAL__sub_I_main.hip
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4                               # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	__hip_gpubin_handle_7abeb0b329cbfad(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB5_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rdi
	movq	%rax, __hip_gpubin_handle_7abeb0b329cbfad(%rip)
.LBB5_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z18histogram256_blockPhPji, %esi
	movl	$.L__unnamed_1, %edx
	movl	$.L__unnamed_1, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end5:
	.size	__hip_module_ctor, .Lfunc_end5-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	movq	__hip_gpubin_handle_7abeb0b329cbfad(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB6_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle_7abeb0b329cbfad(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB6_2:
	retq
.Lfunc_end6:
	.size	__hip_module_dtor, .Lfunc_end6-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_Z18histogram256_blockPhPji,@object # @_Z18histogram256_blockPhPji
	.section	.rodata,"a",@progbits
	.globl	_Z18histogram256_blockPhPji
	.p2align	3, 0x0
_Z18histogram256_blockPhPji:
	.quad	_Z33__device_stub__histogram256_blockPhPji
	.size	_Z18histogram256_blockPhPji, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"An error encountered: \""
	.size	.L.str, 24

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\" at "
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"main.hip"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Launching 'histogram256_block' with "
	.size	.L.str.3, 37

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" blocks of size "
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Kernel took "
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" milliseconds."
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Validation failed. Errors: "
	.size	.L.str.7, 28

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Validation passed."
	.size	.L.str.8, 19

	.type	.L__unnamed_1,@object           # @0
.L__unnamed_1:
	.asciz	"_Z18histogram256_blockPhPji"
	.size	.L__unnamed_1, 28

	.type	.L__unnamed_2,@object           # @1
	.section	.hip_fatbin,"a",@progbits
	.p2align	12, 0x0
.L__unnamed_2:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000host-x86_64-unknown-linux-gnu-\000\020\000\000\000\000\000\000\000\035\000\000\000\000\000\000\037\000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx942\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\004\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\300\030\000\000\000\000\000\000L\005\000\000@\0008\000\t\000@\000\021\000\017\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\370\001\000\000\000\000\000\000\370\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\t\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\031\000\000\000\000\000\000\200\t\000\000\000\000\000\000\200\t\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\200\022\000\000\000\000\000\000\2002\000\000\000\000\000\000\2002\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\r\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\360\022\000\000\000\000\000\000\360B\000\000\000\000\000\000\360B\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\200\022\000\000\000\000\000\000\2002\000\000\000\000\000\000\2002\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\200\022\000\000\000\000\000\000\2002\000\000\000\000\000\000\2002\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\r\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000P\005\000\000\000\000\000\000P\005\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000;\005\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\221\336\000\022\253.agpr_count\000\245.args\334\000\021\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\203\247.offset\030\245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset\034\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset$\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset&\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset(\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset*\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset,\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset.\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offset@\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offsetX\245.size\002\253.value_kind\260hidden_grid_dims\203\247.offset\314\220\245.size\004\253.value_kind\267hidden_dynamic_lds_size\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001\030\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\273_Z18histogram256_blockPhPji\273.private_segment_fixed_size\000\253.sgpr_count\033\261.sgpr_spill_count\000\247.symbol\276_Z18histogram256_blockPhPji.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\025\261.vgpr_spill_count\000\257.wavefront_size@\255amdhsa.target\271amdgcn-amd-amdhsa--gfx942\256amdhsa.version\222\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\031\000\000\000\000\000\000\200\005\000\000\000\000\000\000\035\000\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000<\000\000\000\021\000\n\000\360B\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\032\000\000\000\000\000\220\000\000\021\000\000\001\000\000\000\026&]]\224\324 Q)\037p\261\004\000\000\000\004\000\000\000\003\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000_Z18histogram256_blockPhPji\000_Z18histogram256_blockPhPji.kd\000__hip_cuid_7abeb0b329cbfad\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\001\000\000\000\000\000\000@\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\302\000\257\000\204\000\000\000\b\000\000\000\000\000\000\000\000\002\002\300$\000\000\000\000\001\n\300\000\000\000\000\300\000\002\300\020\000\000\000\177\300\214\277\b\377\f\206\377\377\000\000\f\020\200\276\000\302\000\201\f\200\007\277\200\000\210\276\000\303\000\205\001\000\310\321\000\001\001\000\000\000\004 \b\000\211\276\004\000\000\322\001\005\t\004\b\000\212\276\b\000\213\276\bp\f~\001\000\375\321\004\021\001\002\np\020~\003\201\004\277\000\000\276\331\001\006\000\000\020\000\276\331\001\006\000\000 \000\276\331\001\006\000\0000\000\276\331\001\006\000\000@\000\276\331\001\006\000\000P\000\276\331\001\006\000\000`\000\276\331\001\006\000\000p\000\276\331\001\006\000\000\200\000\276\331\001\006\000\000\220\000\276\331\001\006\000\000\240\000\276\331\001\006\000\000\260\000\276\331\001\006\000\000\300\000\276\331\001\006\000\000\320\000\276\331\001\006\000\000\340\000\276\331\001\006\000\000\360\000\276\331\001\006\000\000\177\300\214\277\000\000\212\277{\000\205\277\002\f\000\222\000\000\000h\200\b\nh\003\210\n\277\000\000\205\322\000\007\000\000]\000\205\277\237\000\002\"\002\000\b\322\004\000\001\004\003\377\000\206\370\377\377\177\200\001\210\276\006\000\b\322\002\001!\000\000\200T\334\006\000\177\006\b\210\b\200\t\200\t\202\000\b\006\277p\017\214\277\377\f\002&\377\000\000\000\001\000\303\321\001\031\024\004\000\000t\330\001\000\000\b\t\000\310\321\006\021!\002\t\000\303\321\t\031\024\004\177\300\214\277\201\020\020L\000\000<\330\001\b\000\000\000\000t\330\t\000\000\001\b\000\310\321\006!!\002\b\000\303\321\b\031\024\004\230\f\f \006\000\303\321\006\031\024\004\177\300\214\277\201\002\002L\000\000<\330\t\001\000\000\000\000t\330\b\000\000\001\177\300\214\277\201\002\002L\000\000<\330\b\001\000\000\000\000t\330\006\000\000\001\377\016\020&\377\000\000\000\b\000\303\321\b\031\024\004\177\300\214\277\201\002\002L\000\000<\330\006\001\000\000\000\000t\330\b\000\000\001\006\000\310\321\007\021!\002\006\000\303\321\006\031\024\004\177\300\214\277\201\002\002L\000\000<\330\b\001\000\000\000\000t\330\006\000\000\001\b\000\310\321\007!!\002\b\000\303\321\b\031\024\004\177\300\214\277\201\002\002L\000\000<\330\006\001\000\000\000\000t\330\b\000\000\001\230\016\f \006\000\303\321\006\031\024\004\177\300\214\277\201\002\002L\000\000<\330\b\001\000\000\000\000t\330\006\000\000\001\177\300\214\277\201\002\002L\000\000<\330\006\001\000\000\251\377\204\277\003\207\000\206\000\200\006\277\024\000\205\277\b\000\000h\237\000\002\"\000\000\b\322\004\000\001\004\000\200@\334\000\000\177\002\000\301\000\201\000\000\b\322\000\001\005\002\000\200\007\277p\017\214\277\002\000\303\321\002\031\024\004\000\000t\330\002\000\000\003\177\300\214\277\201\006\006L\000\000<\330\002\003\000\000\360\377\205\277\000\001\f\265\177\300\214\277\000\000\212\277\242\000\205\277\f\f\000~\377\000\200\276\000\000\200C\200\000\215\276\005\000\303\321\004\031\000\002\000G\002~\f\f\023\222\377\002\002\n\000\000\200C\0019\002~\001\017\004~\001\000\313\321\001\001\002 \000\001F\320\001\001\002\000\000\200\023\277\002\005\000~\000\200\000\202\002\210\016\216\f\302\002\201\000\377\017\206\377\377\000\000\002\201\000\217\000\201\004\201\f\201\b\277\301\200\200\205\f\377\020\206\376\001\000\000\004\207\021\206\002\215\b\277\301\200\202\205\004\310\022\206\021\200\007\277\000\000\000\321\200\002\001\000\301\200\204\205\000\000\315\320\201\000\002\000\000\000\000\321\200\002\t\000\020\f\007\277\002\000\315\320\201\000\002\000\000\000\000\321\200\002\021\000\301\200\210\205\004\000\315\320\201\000\002\000\200\002\000~\f\000\202\277\r\f\n\222\016\n\n\201\n\b\004h\237\004\006\"\r\201\r\201\002\000\b\322\002\005\031\000\r\017\t\277\023\n\nh\000\200p\334\002\001\177\000c\000\205\277~\000\352\206O\000\207\277\200\000\212\276~\002\352\206X\000\207\277\200\002\004~\200\002\006~\022\000\213\276\n\n\002h\000\000\376\331\001\000\000\006\n\220\n\201\013\310\013\201\013\200\007\277\177\300\214\277\230\f\002 \r\000\310\321\006\021!\002\377\f\034&\377\000\000\000\006\000\310\321\006!!\002\230\016\024 \377\016\036&\377\000\000\000\020\000\310\321\007\021!\002\007\000\310\321\007!!\002\002\000\377\321\002\035\032\004\001\000\377\321\003\033\006\004\230\020\026 \021\000\310\321\b\021!\002\377\020$&\377\000\000\000\b\000\310\321\b!!\002\001\000\377\321\001!*\004\002\000\377\321\002\037\036\004\230\022\030 \377\022&&\377\000\000\000\024\000\310\321\t\021!\002\t\000\310\321\t!!\002\002\000\377\321\002%\"\004\001\000\377\321\001#.\004\003\000\377\321\001)2\004\002\000\377\321\002'&\004\314\377\205\277~\004\352\206\021\000\213\276\f\000\207\277\n\n\002h\000\000x\330\001\000\000\001\n\202\n\201\013\301\013\201\013\200\007\277\177\300\214\277\371\002\006h\003\006\006\001\371\002\004h\002\006\006\000\364\377\205\277\002\007\002h\020\000\224\276\b\001\212\276~\n\352\206\004\000\207\277\243\377\202\277\200\002\002~\200\000\224\276\240\377\210\277\024\n\004h\000\000t\330\002\000\000\002\024\201\024\201\f\024\006\277\177\300\214\277\001\005\002h\370\377\204\277\227\377\202\277\000\003\002~\000q\004~~\004\352\206\021\000\213\276\335\377\206\277\350\377\202\277\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\006\000\000\000\000\000\000\000\210\007\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\0008\b\000\000\000\000\000\000\n\000\000\000\000\000\000\000W\000\000\000\000\000\000\000\365\376\377o\000\000\000\000\350\007\000\000\000\000\000\000\004\000\000\000\000\000\000\000\020\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.0 26014 7b800a19466229b8479a78de19143dc33c3ab9b5)\000Linker: AMD LLD 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/llvm 7b800a19466229b8479a78de19143dc33c3ab9b5)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\361\377\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000&\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000K\000\000\000\000\000\361\377\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000u\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\243\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\320\000\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\365\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000#\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000S\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000}\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\253\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\277\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\323\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000=\002\000\000\000\002\b\000\2002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\347\001\000\000\022\003\007\000\000\031\000\000\000\000\000\000\200\005\000\000\000\000\000\000\003\002\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\"\002\000\000\021\000\n\000\360B\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.relro_padding\000.bss\000.AMDGPU.csdata\000.AMDGPU.gpr_maximums\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z18histogram256_blockPhPji.num_vgpr\000_Z18histogram256_blockPhPji.num_agpr\000_Z18histogram256_blockPhPji.numbered_sgpr\000_Z18histogram256_blockPhPji.num_named_barrier\000_Z18histogram256_blockPhPji.private_seg_size\000_Z18histogram256_blockPhPji.uses_vcc\000_Z18histogram256_blockPhPji.uses_flat_scratch\000_Z18histogram256_blockPhPji.has_dyn_sized_stack\000_Z18histogram256_blockPhPji.has_recursion\000_Z18histogram256_blockPhPji.has_indirect_call\000amdgpu.max_num_vgpr\000amdgpu.max_num_agpr\000amdgpu.max_num_sgpr\000_Z18histogram256_blockPhPji\000_Z18histogram256_blockPhPji.kd\000__hip_cuid_7abeb0b329cbfad\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000P\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\210\007\000\000\000\000\000\000\210\007\000\000\000\000\000\000`\000\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000\350\007\000\000\000\000\000\000\350\007\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\020\b\000\000\000\000\000\000\020\b\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\0008\b\000\000\000\000\000\0008\b\000\000\000\000\000\000W\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\300\b\000\000\000\000\000\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\t\000\000\000\000\000\000\200\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\2002\000\000\000\000\000\000\200\022\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\3602\000\000\000\000\000\000\360\022\000\000\000\000\000\000\020\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\360B\000\000\000\000\000\000\360\022\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000a\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\022\000\000\000\000\000\0009\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\177\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\024\000\000\000\000\000\000\260\001\000\000\000\000\000\000\020\000\000\000\017\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\207\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\340\025\000\000\000\000\000\000\231\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000y\026\000\000\000\000\000\000F\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_2, 11520

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	3, 0x0
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_2
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle_7abeb0b329cbfad,@object # @__hip_gpubin_handle_7abeb0b329cbfad
	.local	__hip_gpubin_handle_7abeb0b329cbfad
	.comm	__hip_gpubin_handle_7abeb0b329cbfad,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_main.hip
	.quad	__hip_module_ctor
	.type	__hip_cuid_7abeb0b329cbfad,@object # @__hip_cuid_7abeb0b329cbfad
	.bss
	.globl	__hip_cuid_7abeb0b329cbfad
__hip_cuid_7abeb0b329cbfad:
	.byte	0                               # 0x0
	.size	__hip_cuid_7abeb0b329cbfad, 1

	.ident	"AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.0 26014 7b800a19466229b8479a78de19143dc33c3ab9b5)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z33__device_stub__histogram256_blockPhPji
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_main.hip
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _Z18histogram256_blockPhPji
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZSt4cout
	.addrsig_sym .L__unnamed_2
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym __hip_cuid_7abeb0b329cbfad
