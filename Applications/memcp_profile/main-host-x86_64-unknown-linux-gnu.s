	.file	"main.hip"
	.text
	.globl	_Z35__device_stub__device_memcpy_kernelPiS_m # -- Begin function _Z35__device_stub__device_memcpy_kernelPiS_m
	.p2align	4
	.type	_Z35__device_stub__device_memcpy_kernelPiS_m,@function
_Z35__device_stub__device_memcpy_kernelPiS_m: # @_Z35__device_stub__device_memcpy_kernelPiS_m
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z20device_memcpy_kernelPiS_m, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	retq
.Lfunc_end0:
	.size	_Z35__device_stub__device_memcpy_kernelPiS_m, .Lfunc_end0-_Z35__device_stub__device_memcpy_kernelPiS_m
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI1_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
.LCPI1_1:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
.LCPI1_2:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
.LCPI1_3:
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
.LCPI1_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI1_5:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI1_6:
	.long	24                              # 0x18
	.long	24                              # 0x18
	.long	24                              # 0x18
	.long	24                              # 0x18
.LCPI1_7:
	.long	28                              # 0x1c
	.long	28                              # 0x1c
	.long	28                              # 0x1c
	.long	28                              # 0x1c
.LCPI1_8:
	.long	32                              # 0x20
	.long	32                              # 0x20
	.long	32                              # 0x20
	.long	32                              # 0x20
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %vector.ph
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movabsq	$4294967296, %r15               # imm = 0x100000000
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %r14
	movdqa	.LCPI1_0(%rip), %xmm0           # xmm0 = [0,1,2,3]
	movl	$28, %eax
	movdqa	.LCPI1_1(%rip), %xmm1           # xmm1 = [4,4,4,4]
	movdqa	.LCPI1_2(%rip), %xmm2           # xmm2 = [8,8,8,8]
	movdqa	.LCPI1_3(%rip), %xmm3           # xmm3 = [12,12,12,12]
	movdqa	.LCPI1_4(%rip), %xmm4           # xmm4 = [16,16,16,16]
	movdqa	.LCPI1_5(%rip), %xmm5           # xmm5 = [20,20,20,20]
	movdqa	.LCPI1_6(%rip), %xmm6           # xmm6 = [24,24,24,24]
	movdqa	.LCPI1_7(%rip), %xmm7           # xmm7 = [28,28,28,28]
	movdqa	.LCPI1_8(%rip), %xmm8           # xmm8 = [32,32,32,32]
	.p2align	4
.LBB1_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm9
	paddd	%xmm1, %xmm9
	movdqu	%xmm0, -112(%rbx,%rax,4)
	movdqu	%xmm9, -96(%rbx,%rax,4)
	movdqa	%xmm0, %xmm9
	paddd	%xmm2, %xmm9
	movdqa	%xmm0, %xmm10
	paddd	%xmm3, %xmm10
	movdqu	%xmm9, -80(%rbx,%rax,4)
	movdqu	%xmm10, -64(%rbx,%rax,4)
	movdqa	%xmm0, %xmm9
	paddd	%xmm4, %xmm9
	movdqa	%xmm0, %xmm10
	paddd	%xmm5, %xmm10
	movdqu	%xmm9, -48(%rbx,%rax,4)
	movdqu	%xmm10, -32(%rbx,%rax,4)
	movdqa	%xmm0, %xmm9
	paddd	%xmm6, %xmm9
	movdqa	%xmm0, %xmm10
	paddd	%xmm7, %xmm10
	movdqu	%xmm9, -16(%rbx,%rax,4)
	movdqu	%xmm10, (%rbx,%rax,4)
	paddd	%xmm8, %xmm0
	addq	$32, %rax
	cmpq	$1073741852, %rax               # imm = 0x4000001C
	jne	.LBB1_1
# %bb.2:                                # %middle.block
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB1_3
# %bb.5:
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	callq	hipMalloc
	testl	%eax, %eax
	jne	.LBB1_6
# %bb.7:
	movq	8(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB1_8
# %bb.9:
	leaq	256(%r15), %rdx
	leaq	4194304(%r15), %rdi
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.10:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	$1073741824, 72(%rsp)           # imm = 0x40000000
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z20device_memcpy_kernelPiS_m, %edi
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_11:
	callq	hipGetLastError
	testl	%eax, %eax
	jne	.LBB1_12
# %bb.13:
	callq	hipDeviceSynchronize
	testl	%eax, %eax
	jne	.LBB1_14
# %bb.15:
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movl	$2, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB1_16
# %bb.17:
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	$2, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB1_48
# %bb.18:                               # %.preheader87.preheader
	xorl	%r12d, %r12d
	jmp	.LBB1_19
	.p2align	4
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%r15, %rdi
	movq	%rax, %r13
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	movl	%eax, %ecx
	movq	%r13, %rax
.LBB1_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
                                        #   in Loop: Header=BB1_19 Depth=1
	movsbl	%cl, %esi
	movq	%rax, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	incq	%r12
	cmpq	$10, %r12
	je	.LBB1_24
.LBB1_19:                               # %.preheader87
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12,4), %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r15
	movl	$.L.str.4, %esi
	movl	$5, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	(%r14,%r12,4), %esi
	movq	%r15, %rdi
	callq	_ZNSolsEi
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %r15
	testq	%r15, %r15
	je	.LBB1_49
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB1_19 Depth=1
	cmpb	$0, 56(%r15)
	je	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	movzbl	67(%r15), %ecx
	jmp	.LBB1_23
.LBB1_24:                               # %.preheader.preheader
	movl	$3, %r15d
	.p2align	4
.LBB1_25:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbx,%r15,4), %eax
	incl	%eax
	cmpl	-12(%r14,%r15,4), %eax
	jne	.LBB1_26
# %bb.34:                               # %.preheader.1
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-8(%rbx,%r15,4), %eax
	incl	%eax
	cmpl	-8(%r14,%r15,4), %eax
	jne	.LBB1_27
# %bb.35:                               # %.preheader.2
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-4(%rbx,%r15,4), %eax
	incl	%eax
	cmpl	-4(%r14,%r15,4), %eax
	jne	.LBB1_28
# %bb.36:                               # %.preheader.3
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	(%rbx,%r15,4), %eax
	incl	%eax
	cmpl	(%r14,%r15,4), %eax
	jne	.LBB1_29
# %bb.37:                               #   in Loop: Header=BB1_25 Depth=1
	addq	$4, %r15
	cmpq	$1073741827, %r15               # imm = 0x40000003
	jne	.LBB1_25
# %bb.38:                               # %.critedge
	movl	$_ZSt4cout, %edi
	movl	$.L.str.7, %esi
	movl	$52, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %r15
	testq	%r15, %r15
	je	.LBB1_49
# %bb.39:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
	cmpb	$0, 56(%r15)
	je	.LBB1_41
# %bb.40:
	movzbl	67(%r15), %eax
	jmp	.LBB1_42
.LBB1_26:                               # %splitsplitsplit
	addq	$-3, %r15
	jmp	.LBB1_29
.LBB1_27:                               # %.preheader.1.splitsplit_crit_edge
	addq	$-2, %r15
	jmp	.LBB1_29
.LBB1_28:                               # %.preheader.2.split_crit_edge
	decq	%r15
.LBB1_29:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.5, %esi
	movl	$12, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cerr, %edi
	movq	%r15, %rsi
	callq	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %r12
	movl	$.L.str.3, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	(%rbx,%r15,4), %esi
	movq	%r12, %rdi
	callq	_ZNSolsEi
	movq	%rax, %r12
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	(%r14,%r15,4), %esi
	movq	%r12, %rdi
	callq	_ZNSolsEi
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	movq	240(%rax,%rcx), %r15
	testq	%r15, %r15
	je	.LBB1_49
# %bb.30:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
	cmpb	$0, 56(%r15)
	je	.LBB1_32
# %bb.31:
	movzbl	67(%r15), %ecx
	jmp	.LBB1_33
.LBB1_32:
	movq	%r15, %rdi
	movq	%rax, %r12
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
	movl	%eax, %ecx
	movq	%r12, %rax
.LBB1_33:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78
	movsbl	%cl, %esi
	movq	%rax, %rdi
.LBB1_43:
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rbx, %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	movq	8(%rsp), %rdi
	callq	hipFree
	testl	%eax, %eax
	jne	.LBB1_44
# %bb.45:
	movq	16(%rsp), %rdi
	callq	hipFree
	testl	%eax, %eax
	jne	.LBB1_46
# %bb.47:
	xorl	%eax, %eax
	addq	$128, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_41:
	.cfi_def_cfa_offset 176
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_42:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	jmp	.LBB1_43
.LBB1_49:
	callq	_ZSt16__throw_bad_castv
.LBB1_3:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$60, %esi
	jmp	.LBB1_4
.LBB1_6:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$61, %esi
	jmp	.LBB1_4
.LBB1_8:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$64, %esi
	jmp	.LBB1_4
.LBB1_12:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$71, %esi
	jmp	.LBB1_4
.LBB1_14:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$72, %esi
	jmp	.LBB1_4
.LBB1_16:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$75, %esi
	jmp	.LBB1_4
.LBB1_48:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$76, %esi
	jmp	.LBB1_4
.LBB1_44:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$97, %esi
	jmp	.LBB1_4
.LBB1_46:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str, %esi
	movl	%eax, %ebx
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	movl	$98, %esi
.LBB1_4:
	callq	_ZNSolsEi
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	hipGetErrorString
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdi
	callq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
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
.Lfunc_end2:
	.size	_GLOBAL__sub_I_main.hip, .Lfunc_end2-_GLOBAL__sub_I_main.hip
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
	jne	.LBB3_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, %rdi
	movq	%rax, __hip_gpubin_handle_7abeb0b329cbfad(%rip)
.LBB3_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z20device_memcpy_kernelPiS_m, %esi
	movl	$.L__unnamed_1, %edx
	movl	$.L__unnamed_1, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	movl	$__hip_module_dtor, %edi
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	atexit                          # TAILCALL
.Lfunc_end3:
	.size	__hip_module_ctor, .Lfunc_end3-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	movq	__hip_gpubin_handle_7abeb0b329cbfad(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB4_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle_7abeb0b329cbfad(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB4_2:
	retq
.Lfunc_end4:
	.size	__hip_module_dtor, .Lfunc_end4-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_Z20device_memcpy_kernelPiS_m,@object # @_Z20device_memcpy_kernelPiS_m
	.section	.rodata,"a",@progbits
	.globl	_Z20device_memcpy_kernelPiS_m
	.p2align	3, 0x0
_Z20device_memcpy_kernelPiS_m:
	.quad	_Z35__device_stub__device_memcpy_kernelPiS_m
	.size	_Z20device_memcpy_kernelPiS_m, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CUDA error at "
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"main.hip"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	":"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	": "
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" \t:\t "
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Mismatch at "
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" != "
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Device-to-device memcpy (global load/store) success!"
	.size	.L.str.7, 53

	.type	.L__unnamed_1,@object           # @0
.L__unnamed_1:
	.asciz	"_Z20device_memcpy_kernelPiS_m"
	.size	.L__unnamed_1, 30

	.type	.L__unnamed_2,@object           # @1
	.section	.hip_fatbin,"a",@progbits
	.p2align	12, 0x0
.L__unnamed_2:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000host-x86_64-unknown-linux-gnu-\000\020\000\000\000\000\000\000\030\030\000\000\000\000\000\000\037\000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx942\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\004\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\330\023\000\000\000\000\000\000L\005\000\000@\0008\000\t\000@\000\021\000\017\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\370\001\000\000\000\000\000\000\370\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\t\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\031\000\000\000\000\000\000\200\004\000\000\000\000\000\000\200\004\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\200\r\000\000\000\000\000\000\200-\000\000\000\000\000\000\200-\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\002\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\360\r\000\000\000\000\000\000\360=\000\000\000\000\000\000\360=\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\200\r\000\000\000\000\000\000\200-\000\000\000\000\000\000\200-\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\200\r\000\000\000\000\000\000\200-\000\000\000\000\000\000\200-\000\000\000\000\000\000p\000\000\000\000\000\000\000\200\002\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000T\005\000\000\000\000\000\000T\005\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000=\005\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\221\336\000\022\253.agpr_count\000\245.args\334\000\020\205\256.actual_access\252write_only\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\205\256.actual_access\251read_only\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\b\253.value_kind\250by_value\203\247.offset\030\245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset\034\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset$\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset&\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset(\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset*\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset,\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset.\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offset@\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offsetX\245.size\002\253.value_kind\260hidden_grid_dims\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001\030\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\275_Z20device_memcpy_kernelPiS_m\273.private_segment_fixed_size\000\253.sgpr_count\f\261.sgpr_spill_count\000\247.symbol\331 _Z20device_memcpy_kernelPiS_m.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\004\261.vgpr_spill_count\000\257.wavefront_size@\255amdhsa.target\271amdgcn-amd-amdhsa--gfx942\256amdhsa.version\222\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000\031\000\000\000\000\000\000t\000\000\000\000\000\000\000\037\000\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\021\000\n\000\360=\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\032\000\000\000\000\200\000\001\000\023\004\000\001\000\000\000\362\274\203\244\216\301?a)\037p\261\004\000\000\000\004\000\000\000\003\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000_Z20device_memcpy_kernelPiS_m\000_Z20device_memcpy_kernelPiS_m.kd\000__hip_cuid_7abeb0b329cbfad\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\001\000\000\000\000\000\000@\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\257\000\204\000\000\000\b\000\000\000\000\000\000\000\300\000\002\300$\000\000\000\000\001\006\300\020\000\000\000\200\002\002~\177\300\214\277\003\377\003\206\377\377\000\000\002\003\002\222\002\000\000h\004\000\330}j \202\276\017\000\210\277\000\000\n\300\000\000\000\000\000\000\217\322\202\000\002\000\177\300\214\277\002\000\b\322\002\000\001\004\000\200P\334\002\000\177\002\000\000\b\322\000\000\001\004p\017\214\277\201\004\004h\000\200p\334\000\002\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\006\000\000\000\000\000\000\000\220\007\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000@\b\000\000\000\000\000\000\n\000\000\000\000\000\000\000[\000\000\000\000\000\000\000\365\376\377o\000\000\000\000\360\007\000\000\000\000\000\000\004\000\000\000\000\000\000\000\030\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000AMD clang version 22.0.0git (https://github.com/RadeonOpenCompute/llvm-project roc-7.2.0 26014 7b800a19466229b8479a78de19143dc33c3ab9b5)\000Linker: AMD LLD 22.0.0 (/longer_pathname_so_that_rpms_can_support_packaging_the_debug_info_for_all_os_profiles/src/llvm-project/llvm 7b800a19466229b8479a78de19143dc33c3ab9b5)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\361\377\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000(\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000O\000\000\000\000\000\361\377\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000{\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\253\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\332\000\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000c\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\217\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\277\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\323\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\347\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000U\002\000\000\000\002\b\000\200-\000\000\000\000\000\000\000\000\000\000\000\000\000\000\373\001\000\000\022\003\007\000\000\031\000\000\000\000\000\000t\000\000\000\000\000\000\000\031\002\000\000\021\003\006\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000:\002\000\000\021\000\n\000\360=\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.relro_padding\000.bss\000.AMDGPU.csdata\000.AMDGPU.gpr_maximums\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z20device_memcpy_kernelPiS_m.num_vgpr\000_Z20device_memcpy_kernelPiS_m.num_agpr\000_Z20device_memcpy_kernelPiS_m.numbered_sgpr\000_Z20device_memcpy_kernelPiS_m.num_named_barrier\000_Z20device_memcpy_kernelPiS_m.private_seg_size\000_Z20device_memcpy_kernelPiS_m.uses_vcc\000_Z20device_memcpy_kernelPiS_m.uses_flat_scratch\000_Z20device_memcpy_kernelPiS_m.has_dyn_sized_stack\000_Z20device_memcpy_kernelPiS_m.has_recursion\000_Z20device_memcpy_kernelPiS_m.has_indirect_call\000amdgpu.max_num_vgpr\000amdgpu.max_num_agpr\000amdgpu.max_num_sgpr\000_Z20device_memcpy_kernelPiS_m\000_Z20device_memcpy_kernelPiS_m.kd\000__hip_cuid_7abeb0b329cbfad\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000T\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\220\007\000\000\000\000\000\000\220\007\000\000\000\000\000\000`\000\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000\360\007\000\000\000\000\000\000\360\007\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\030\b\000\000\000\000\000\000\030\b\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000@\b\000\000\000\000\000\000@\b\000\000\000\000\000\000[\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\300\b\000\000\000\000\000\000\300\b\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000\t\000\000\000\000\000\000\200\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\200-\000\000\000\000\000\000\200\r\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\360-\000\000\000\000\000\000\360\r\000\000\000\000\000\000\020\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\360=\000\000\000\000\000\000\360\r\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000a\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\r\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\r\000\000\000\000\000\0009\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\177\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0000\017\000\000\000\000\000\000\260\001\000\000\000\000\000\000\020\000\000\000\017\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\207\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\340\020\000\000\000\000\000\000\231\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000y\021\000\000\000\000\000\000^\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_2, 10264

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
	.addrsig_sym _Z35__device_stub__device_memcpy_kernelPiS_m
	.addrsig_sym _GLOBAL__sub_I_main.hip
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _Z20device_memcpy_kernelPiS_m
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZSt4cout
	.addrsig_sym .L__unnamed_2
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym __hip_cuid_7abeb0b329cbfad
