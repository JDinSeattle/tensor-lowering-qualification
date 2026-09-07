	.att_syntax
	.file	"dynamic_linked"
	.section	.text.matmul_dispatch_0_matmul_Dx16x32_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_0_matmul_Dx16x32_f32,@function
matmul_dispatch_0_matmul_Dx16x32_f32:
.Lfunc_begin0:
	.file	1 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module_matmul_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	1 13 8 prologue_end
	movq	24(%rsi), %rdi
	movq	32(%rsi), %r8
	.loc	1 15 8
	movq	8(%rdi), %rax
	.loc	1 33 8
	movq	%rax, %rcx
	negq	%rcx
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	cmovleq	%rcx, %rdx
	leaq	7(%rdx), %rcx
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rcx
	sarq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	incq	%rcx
	testq	%rax, %rax
	cmovleq	%rdx, %rcx
	movabsq	$2305843009213693948, %rdx
	.loc	1 35 8
	andq	(%rdi), %rdx
	.loc	1 40 8
	movq	(%r8), %rsi
	.loc	1 35 8
	addq	8(%r8), %rdx
	.loc	1 40 8
	leaq	28(%rsi), %rdi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB0_1
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_22:
	movl	$1, %r9d
	.loc	1 40 8
	testb	$1, %r8b
	movb	$1, %r8b
	jne	.LBB0_23
.LBB0_1:
	.loc	1 0 8
	testq	%rcx, %rcx
	.loc	1 40 8
	jle	.LBB0_22
	.loc	1 0 8
	movq	%r9, %r10
	shlq	$10, %r10
	leaq	(%rsi,%r10), %r11
	shlq	$3, %r9
	.loc	1 40 8
	addq	%rdi, %r10
	movl	$2048, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB0_3
	.loc	1 0 8
.Ltmp2:
	.p2align	4
.LBB0_21:
	.loc	1 42 8 is_stmt 1
	movq	%r14, %r15
	shlq	$9, %r15
	addq	%rdx, %r15
	vmaskmovps	%ymm15, %ymm5, (%r15,%r9,4)
	vmaskmovps	%ymm8, %ymm9, 64(%r15,%r9,4)
	vmaskmovps	%ymm6, %ymm10, 128(%r15,%r9,4)
	vmaskmovps	%ymm7, %ymm11, 192(%r15,%r9,4)
	vmaskmovps	%ymm4, %ymm12, 256(%r15,%r9,4)
	vmaskmovps	%ymm2, %ymm13, 320(%r15,%r9,4)
	vmaskmovps	%ymm3, %ymm0, 384(%r15,%r9,4)
	vpmovsxwd	%xmm14, %ymm0
	vmaskmovps	%ymm1, %ymm0, 448(%r15,%r9,4)
	.loc	1 40 8
	incq	%r14
	addq	$1024, %rbx
	cmpq	%rcx, %r14
	je	.LBB0_22
.LBB0_3:
	leaq	(,%rbx,8), %r15
	sarq	$3, %r15
	addq	%rsi, %r15
	movq	%r14, %r12
	shlq	$13, %r12
	addq	$16384, %r12
	sarq	$3, %r12
	prefetchw	(%rsp)
	prefetcht0	(%r11)
	prefetcht0	(%rsi,%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%r12d, %r12d
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm3, %xmm3, %xmm3
	vxorps	%xmm4, %xmm4, %xmm4
	vxorps	%xmm5, %xmm5, %xmm5
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm7, %xmm7, %xmm7
	.loc	1 0 8 is_stmt 0
.Ltmp3:
	.p2align	4
.LBB0_4:
	.loc	1 40 8
	vmovups	(%r15,%r12), %ymm8
	vbroadcastss	-28(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm7
	vbroadcastss	-24(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm6
	vbroadcastss	-20(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm5
	vbroadcastss	-16(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm4
	vbroadcastss	-12(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm3
	vbroadcastss	-8(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm2
	vbroadcastss	-4(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm1
	vbroadcastss	(%r10,%r12), %ymm9
	vfmadd231ps	%ymm9, %ymm8, %ymm0
	addq	$32, %r12
	cmpq	$1024, %r12
	jne	.LBB0_4
	vmovaps	%ymm7, (%rsp)
	vmovaps	%ymm6, 32(%rsp)
	vmovaps	%ymm5, 64(%rsp)
	vmovaps	%ymm4, 96(%rsp)
	vmovaps	%ymm3, 128(%rsp)
	vmovaps	%ymm2, 160(%rsp)
	vmovaps	%ymm1, 192(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	.loc	1 42 8 is_stmt 1
	leaq	(,%r14,8), %r12
	movq	%rax, %r15
	subq	%r12, %r15
	vpunpckldq	%ymm6, %ymm7, %ymm8
	vpunpckhdq	%ymm6, %ymm7, %ymm6
	vpunpckldq	%ymm4, %ymm5, %ymm7
	vpunpckhdq	%ymm4, %ymm5, %ymm5
	vpunpckldq	%ymm2, %ymm3, %ymm9
	vpunpckhdq	%ymm2, %ymm3, %ymm10
	vpunpckldq	%ymm0, %ymm1, %ymm11
	vpunpckhdq	%ymm0, %ymm1, %ymm0
	vshufpd	$5, %ymm7, %ymm8, %ymm1
	vshufpd	$5, %ymm5, %ymm6, %ymm12
	vshufpd	$5, %ymm11, %ymm9, %ymm13
	vshufpd	$5, %ymm0, %ymm10, %ymm14
	#APP

	vblendps	$204, %ymm1, %ymm8, %ymm4

	#NO_APP
	#APP

	vblendps	$51, %ymm1, %ymm7, %ymm2

	#NO_APP
	#APP

	vblendps	$204, %ymm12, %ymm6, %ymm3

	#NO_APP
	#APP

	vblendps	$51, %ymm12, %ymm5, %ymm1

	#NO_APP
	#APP

	vblendps	$204, %ymm13, %ymm9, %ymm8

	#NO_APP
	#APP

	vblendps	$51, %ymm13, %ymm11, %ymm6

	#NO_APP
	#APP

	vblendps	$204, %ymm14, %ymm10, %ymm7

	#NO_APP
	#APP

	vblendps	$51, %ymm14, %ymm0, %ymm5

	#NO_APP
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	testq	%r15, %r15
	jle	.LBB0_6
	.loc	1 0 8 is_stmt 0
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	.loc	1 42 8
	cmpq	$2, %r15
	jl	.LBB0_8
.LBB0_9:
	.loc	1 0 8
	vpcmpeqd	%xmm11, %xmm11, %xmm11
	.loc	1 42 8
	cmpq	$3, %r15
	jl	.LBB0_10
.LBB0_11:
	.loc	1 0 8
	vpcmpeqd	%xmm12, %xmm12, %xmm12
	.loc	1 42 8
	cmpq	$4, %r15
	jl	.LBB0_12
.LBB0_13:
	.loc	1 0 8
	vpcmpeqd	%xmm13, %xmm13, %xmm13
	.loc	1 42 8
	cmpq	$5, %r15
	jl	.LBB0_14
.LBB0_15:
	.loc	1 0 8
	vpcmpeqd	%xmm14, %xmm14, %xmm14
	.loc	1 42 8
	cmpq	$6, %r15
	jl	.LBB0_16
.LBB0_17:
	.loc	1 0 8
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	.loc	1 42 8
	cmpq	$7, %r15
	jge	.LBB0_19
.LBB0_18:
	.loc	1 0 8
	vpxor	%xmm0, %xmm0, %xmm0
.LBB0_19:
	.loc	1 42 8 is_stmt 1
	vinsertf128	$1, %xmm8, %ymm4, %ymm15
	vperm2f128	$49, %ymm8, %ymm4, %ymm4
	vinsertf128	$1, %xmm6, %ymm2, %ymm8
	vperm2f128	$49, %ymm6, %ymm2, %ymm2
	vinsertf128	$1, %xmm7, %ymm3, %ymm6
	vperm2f128	$49, %ymm7, %ymm3, %ymm3
	vinsertf128	$1, %xmm5, %ymm1, %ymm7
	vperm2f128	$49, %ymm5, %ymm1, %ymm1
	vpmovsxwd	%xmm9, %ymm5
	vpmovsxwd	%xmm10, %ymm9
	vpmovsxwd	%xmm11, %ymm10
	vpmovsxwd	%xmm12, %ymm11
	vpmovsxwd	%xmm13, %ymm12
	vpmovsxwd	%xmm14, %ymm13
	vpmovsxwd	%xmm0, %ymm0
	cmpq	$8, %r15
	vpcmpeqd	%xmm14, %xmm14, %xmm14
	jge	.LBB0_21
	.loc	1 0 8 is_stmt 0
	vpxor	%xmm14, %xmm14, %xmm14
	jmp	.LBB0_21
	.p2align	4
.LBB0_6:
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	.loc	1 42 8
	cmpq	$2, %r15
	jge	.LBB0_9
.LBB0_8:
	.loc	1 0 8
	vpxor	%xmm10, %xmm10, %xmm10
	vpcmpeqd	%xmm11, %xmm11, %xmm11
	.loc	1 42 8
	cmpq	$3, %r15
	jge	.LBB0_11
.LBB0_10:
	.loc	1 0 8
	vpxor	%xmm11, %xmm11, %xmm11
	vpcmpeqd	%xmm12, %xmm12, %xmm12
	.loc	1 42 8
	cmpq	$4, %r15
	jge	.LBB0_13
.LBB0_12:
	.loc	1 0 8
	vpxor	%xmm12, %xmm12, %xmm12
	vpcmpeqd	%xmm13, %xmm13, %xmm13
	.loc	1 42 8
	cmpq	$5, %r15
	jge	.LBB0_15
.LBB0_14:
	.loc	1 0 8
	vpxor	%xmm13, %xmm13, %xmm13
	vpcmpeqd	%xmm14, %xmm14, %xmm14
	.loc	1 42 8
	cmpq	$6, %r15
	jge	.LBB0_17
.LBB0_16:
	.loc	1 0 8
	vpxor	%xmm14, %xmm14, %xmm14
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	.loc	1 42 8
	cmpq	$7, %r15
	jl	.LBB0_18
	jmp	.LBB0_19
.LBB0_23:
	.loc	1 44 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	.loc	1 44 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp4:
.Lfunc_end0:
	.size	matmul_dispatch_0_matmul_Dx16x32_f32, .Lfunc_end0-matmul_dispatch_0_matmul_Dx16x32_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI1_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.text._encoding_0_encode_Dx32xf32_to_Dx32xf32,"ax",@progbits
	.prefalign	16
	.type	_encoding_0_encode_Dx32xf32_to_Dx32xf32,@function
_encoding_0_encode_Dx32xf32_to_Dx32xf32:
.Lfunc_begin1:
	.file	2 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module__encoding_0.mlir"
	.loc	2 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp5:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	2 13 8 prologue_end
	movq	24(%rsi), %rax
	movq	(%rax), %rax
	.loc	2 27 8
	movq	%rax, %rcx
	negq	%rcx
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	cmovleq	%rcx, %rdx
	leaq	7(%rdx), %rcx
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rcx
	sarq	$3, %rcx
	movq	%rcx, %rdx
	negq	%rdx
	incq	%rcx
	testq	%rax, %rax
	cmovleq	%rdx, %rcx
	.loc	2 32 8
	testq	%rcx, %rcx
	jle	.LBB1_9
	.loc	2 0 8 is_stmt 0
	movq	32(%rsi), %rdi
	movq	(%rdi), %rdx
	movl	$2048, %esi
	addq	8(%rdi), %rsi
	xorl	%edi, %edi
	movl	$8, %r8d
	vmovdqa	.LCPI1_0(%rip), %ymm0
	jmp	.LBB1_2
	.p2align	4
.LBB1_8:
	.loc	2 32 8
	incq	%rdi
	addq	$1024, %rdx
	cmpq	%rcx, %rdi
	je	.LBB1_9
.LBB1_2:
	.loc	2 32 8 is_stmt 1
	leaq	(,%rdi,8), %r9
	movq	%rax, %r10
	subq	%r9, %r10
	cmpq	$8, %r10
	cmovgeq	%r8, %r10
	vmovd	%r10d, %xmm1
	vpbroadcastd	%xmm1, %ymm1
	movq	%rdi, %r9
	shlq	$10, %r9
	addq	%rsi, %r9
	movq	%rdx, %r10
	xorl	%r11d, %r11d
	jmp	.LBB1_3
	.loc	2 0 8 is_stmt 0
.Ltmp6:
	.p2align	4
.LBB1_7:
	.loc	2 32 8
	movq	%r11, %rbx
	shlq	$5, %rbx
	vmovaps	%ymm2, (%r9,%rbx)
	incq	%r11
	addq	$4, %r10
	cmpq	$32, %r11
	je	.LBB1_8
.LBB1_3:
	.loc	2 0 8
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r10, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB1_4
	.p2align	4
.LBB1_6:
	.loc	2 32 8
	incq	%r14
	subq	$-128, %rbx
	cmpq	$8, %r14
	je	.LBB1_7
.LBB1_4:
	.loc	2 0 8
	vpcmpgtd	%ymm0, %ymm1, %ymm3
	vmovmskps	%ymm3, %r15d
	.loc	2 32 8 is_stmt 1
	btl	%r14d, %r15d
	jae	.LBB1_6
	vbroadcastss	(%rbx), %ymm3
	vmovd	%r14d, %xmm4
	vpbroadcastd	%xmm4, %ymm4
	vpcmpeqd	%ymm0, %ymm4, %ymm4
	vblendvps	%ymm4, %ymm3, %ymm2, %ymm2
	jmp	.LBB1_6
.LBB1_9:
	.loc	2 34 8
	xorl	%eax, %eax
	.loc	2 34 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp7:
.Lfunc_end1:
	.size	_encoding_0_encode_Dx32xf32_to_Dx32xf32, .Lfunc_end1-_encoding_0_encode_Dx32xf32_to_Dx32xf32
	.cfi_endproc

	.section	.text._encoding_1_encode_32x16xf32_to_32x16xf32,"ax",@progbits
	.prefalign	16
	.type	_encoding_1_encode_32x16xf32_to_32x16xf32,@function
_encoding_1_encode_32x16xf32_to_32x16xf32:
.Lfunc_begin2:
	.file	3 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module__encoding_1.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp8:
	.loc	3 10 8 prologue_end
	movq	32(%rsi), %rcx
	movq	(%rcx), %rax
	.loc	3 11 8
	movq	8(%rcx), %rcx
	movb	$1, %dl
	xorl	%esi, %esi
	.loc	3 0 8 is_stmt 0
.Ltmp9:
	.p2align	4
.LBB2_1:
	movq	%rsi, %rdi
	shlq	$5, %rdi
	.loc	3 14 8 is_stmt 1
	addq	%rax, %rdi
	shlq	$10, %rsi
	addq	%rcx, %rsi
	xorl	%r8d, %r8d
	.loc	3 0 8 is_stmt 0
.Ltmp10:
	.p2align	4
.LBB2_2:
	.loc	3 14 8
	vmovaps	(%rdi,%r8,2), %ymm0
	vmovaps	%ymm0, (%rsi,%r8)
	addq	$32, %r8
	cmpq	$1024, %r8
	jne	.LBB2_2
	.loc	3 0 8
	movl	$1, %esi
	.loc	3 14 8
	testb	$1, %dl
	movl	$0, %edx
	jne	.LBB2_1
	.loc	3 16 8 is_stmt 1
	xorl	%eax, %eax
	.loc	3 16 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp11:
.Lfunc_end2:
	.size	_encoding_1_encode_32x16xf32_to_32x16xf32, .Lfunc_end2-_encoding_1_encode_32x16xf32_to_32x16xf32
	.cfi_endproc

	.section	.text.bias_relu_dispatch_0_elementwise_Dx16_f32,"ax",@progbits
	.prefalign	16
	.type	bias_relu_dispatch_0_elementwise_Dx16_f32,@function
bias_relu_dispatch_0_elementwise_Dx16_f32:
.Lfunc_begin3:
	.file	4 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module_bias_relu_dispatch_0.mlir"
	.loc	4 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp12:
	.loc	4 12 8 prologue_end
	movq	24(%rsi), %rax
	movq	(%rax), %rax
	.loc	4 27 8
	testq	%rax, %rax
	jle	.LBB3_3
	.loc	4 0 8 is_stmt 0
	movq	32(%rsi), %rsi
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rsi
	movl	$32, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4
.LBB3_2:
	.loc	4 27 8 is_stmt 1
	vmovaps	-32(%rcx,%rdi), %ymm1
	.loc	4 29 10
	vaddps	(%rdx), %ymm1, %ymm1
	.loc	4 30 10
	vcmpnleps	%ymm0, %ymm1, %ymm2
	vandps	%ymm1, %ymm2, %ymm1
	.loc	4 27 8
	vmovaps	%ymm1, -32(%rsi,%rdi)
	vmovaps	(%rcx,%rdi), %ymm1
	.loc	4 29 10
	vaddps	32(%rdx), %ymm1, %ymm1
	.loc	4 30 10
	vcmpnleps	%ymm0, %ymm1, %ymm2
	vandps	%ymm1, %ymm2, %ymm1
	.loc	4 27 8
	vmovaps	%ymm1, (%rsi,%rdi)
	addq	$64, %rdi
	decq	%rax
	jne	.LBB3_2
.LBB3_3:
	.loc	4 34 8
	xorl	%eax, %eax
	.loc	4 34 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp13:
.Lfunc_end3:
	.size	bias_relu_dispatch_0_elementwise_Dx16_f32, .Lfunc_end3-bias_relu_dispatch_0_elementwise_Dx16_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI4_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.long	0x80000000
	.section	.text.row_sum_dispatch_0_reduction_Dx16_f32,"ax",@progbits
	.prefalign	16
	.type	row_sum_dispatch_0_reduction_Dx16_f32,@function
row_sum_dispatch_0_reduction_Dx16_f32:
.Lfunc_begin4:
	.file	5 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module_row_sum_dispatch_0.mlir"
	.loc	5 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp14:
	pushq	%rbx
	.cfi_offset %rbx, -24
	.loc	5 12 8 prologue_end
	movq	24(%rsi), %rax
	movq	(%rax), %rax
	.loc	5 26 8
	testq	%rax, %rax
	jle	.LBB4_21
	.loc	5 0 8 is_stmt 0
	movq	32(%rsi), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rdx
	xorl	%esi, %esi
	movl	$8, %edi
	vbroadcastss	.LCPI4_1(%rip), %ymm1
	.p2align	4
.LBB4_2:
	.loc	5 26 8 is_stmt 1
	movq	%rax, %r8
	subq	%rsi, %r8
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	testq	%r8, %r8
	jle	.LBB4_3
	.loc	5 0 8 is_stmt 0
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	.loc	5 26 8
	cmpq	$2, %r8
	jl	.LBB4_5
.LBB4_6:
	.loc	5 0 8
	vpcmpeqd	%xmm5, %xmm5, %xmm5
	.loc	5 26 8
	cmpq	$3, %r8
	jl	.LBB4_7
.LBB4_8:
	.loc	5 0 8
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	.loc	5 26 8
	cmpq	$4, %r8
	jl	.LBB4_9
.LBB4_10:
	.loc	5 0 8
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	.loc	5 26 8
	cmpq	$5, %r8
	jl	.LBB4_11
.LBB4_12:
	.loc	5 0 8
	vpcmpeqd	%xmm8, %xmm8, %xmm8
	.loc	5 26 8
	cmpq	$6, %r8
	jl	.LBB4_13
.LBB4_14:
	.loc	5 0 8
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	.loc	5 26 8
	cmpq	$7, %r8
	jge	.LBB4_16
.LBB4_15:
	.loc	5 0 8
	vpxor	%xmm9, %xmm9, %xmm9
.LBB4_16:
	.loc	5 26 8 is_stmt 1
	cmpq	$8, %r8
	cmovgeq	%rdi, %r8
	.loc	5 25 8
	vmovd	%r8d, %xmm2
	vpbroadcastd	%xmm2, %ymm2
	vpcmpgtd	.LCPI4_0(%rip), %ymm2, %ymm2
	.loc	5 10 8
	vxorps	%xmm11, %xmm11, %xmm11
	vmaskmovps	%ymm11, %ymm2, (%rdx,%rsi,4)
	.loc	5 26 8
	jge	.LBB4_18
	.loc	5 0 8 is_stmt 0
	vpxor	%xmm10, %xmm10, %xmm10
.LBB4_18:
	leaq	(%rdx,%rsi,4), %r8
	movq	%rsi, %r9
	shlq	$6, %r9
	addq	%rcx, %r9
	movb	$1, %r10b
	vpmovsxwd	%xmm3, %ymm3
	vpmovsxwd	%xmm4, %ymm4
	vpmovsxwd	%xmm5, %ymm5
	vpmovsxwd	%xmm6, %ymm6
	vpmovsxwd	%xmm7, %ymm7
	vpmovsxwd	%xmm8, %ymm8
	vpmovsxwd	%xmm9, %ymm9
	vpmovsxwd	%xmm10, %ymm10
	xorl	%r11d, %r11d
	.p2align	4
.LBB4_19:
	.loc	5 26 8 is_stmt 1
	vmaskmovps	(%r9,%r11,4), %ymm3, %ymm13
	vmaskmovps	64(%r9,%r11,4), %ymm4, %ymm14
	vmaskmovps	128(%r9,%r11,4), %ymm5, %ymm12
	.loc	5 28 10
	vblendvps	%ymm3, %ymm13, %ymm1, %ymm13
	vaddss	%xmm13, %xmm11, %xmm15
	vmovshdup	%xmm13, %xmm0
	vaddss	%xmm0, %xmm15, %xmm0
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm0, %xmm15, %xmm0
	vshufps	$255, %xmm13, %xmm13, %xmm15
	vaddss	%xmm0, %xmm15, %xmm0
	vextractf128	$1, %ymm13, %xmm13
	vaddss	%xmm0, %xmm13, %xmm0
	vmovshdup	%xmm13, %xmm15
	vaddss	%xmm0, %xmm15, %xmm0
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm0, %xmm15, %xmm0
	vshufps	$255, %xmm13, %xmm13, %xmm13
	vaddss	%xmm0, %xmm13, %xmm0
	vblendvps	%ymm4, %ymm14, %ymm1, %ymm13
	vmovshdup	%xmm11, %xmm14
	vaddss	%xmm13, %xmm14, %xmm14
	vmovshdup	%xmm13, %xmm15
	vaddss	%xmm15, %xmm14, %xmm14
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm14, %xmm14
	vshufps	$255, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm14, %xmm14
	vextractf128	$1, %ymm13, %xmm13
	vaddss	%xmm13, %xmm14, %xmm14
	vmovshdup	%xmm13, %xmm15
	vaddss	%xmm15, %xmm14, %xmm14
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm14, %xmm14
	.loc	5 26 8
	vmaskmovps	192(%r9,%r11,4), %ymm6, %ymm15
	.loc	5 28 10
	vshufps	$255, %xmm13, %xmm13, %xmm13
	vaddss	%xmm13, %xmm14, %xmm13
	vinsertps	$16, %xmm13, %xmm0, %xmm0
	vshufpd	$1, %xmm11, %xmm11, %xmm13
	vblendvps	%ymm5, %ymm12, %ymm1, %ymm12
	vaddss	%xmm12, %xmm13, %xmm13
	vmovshdup	%xmm12, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufpd	$1, %xmm12, %xmm12, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufps	$255, %xmm12, %xmm12, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vextractf128	$1, %ymm12, %xmm12
	vaddss	%xmm12, %xmm13, %xmm13
	vmovshdup	%xmm12, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufpd	$1, %xmm12, %xmm12, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	.loc	5 26 8
	vmaskmovps	256(%r9,%r11,4), %ymm7, %ymm14
	.loc	5 28 10
	vshufps	$255, %xmm12, %xmm12, %xmm12
	vaddss	%xmm12, %xmm13, %xmm12
	vinsertps	$32, %xmm12, %xmm0, %xmm0
	vshufps	$255, %xmm11, %xmm11, %xmm12
	vblendvps	%ymm6, %ymm15, %ymm1, %ymm13
	vaddss	%xmm13, %xmm12, %xmm12
	vmovshdup	%xmm13, %xmm15
	vaddss	%xmm15, %xmm12, %xmm12
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm12, %xmm12
	vshufps	$255, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm12, %xmm12
	vextractf128	$1, %ymm13, %xmm13
	vaddss	%xmm13, %xmm12, %xmm12
	vmovshdup	%xmm13, %xmm15
	vaddss	%xmm15, %xmm12, %xmm12
	vshufpd	$1, %xmm13, %xmm13, %xmm15
	vaddss	%xmm15, %xmm12, %xmm12
	.loc	5 26 8
	vmaskmovps	320(%r9,%r11,4), %ymm8, %ymm15
	.loc	5 28 10
	vshufps	$255, %xmm13, %xmm13, %xmm13
	vaddss	%xmm13, %xmm12, %xmm12
	vinsertps	$48, %xmm12, %xmm0, %xmm12
	vblendvps	%ymm7, %ymm14, %ymm1, %ymm0
	vextractf128	$1, %ymm11, %xmm11
	vaddss	%xmm0, %xmm11, %xmm13
	vmovshdup	%xmm0, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufpd	$1, %xmm0, %xmm0, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufps	$255, %xmm0, %xmm0, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vextractf128	$1, %ymm0, %xmm0
	vaddss	%xmm0, %xmm13, %xmm13
	vmovshdup	%xmm0, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufpd	$1, %xmm0, %xmm0, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vblendvps	%ymm8, %ymm15, %ymm1, %ymm14
	vaddss	%xmm0, %xmm13, %xmm0
	vmovshdup	%xmm11, %xmm13
	vaddss	%xmm14, %xmm13, %xmm13
	vmovshdup	%xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufpd	$1, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufps	$255, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vextractf128	$1, %ymm14, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vmovshdup	%xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufpd	$1, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	.loc	5 26 8
	vmaskmovps	384(%r9,%r11,4), %ymm9, %ymm15
	.loc	5 28 10
	vshufps	$255, %xmm14, %xmm14, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vinsertps	$16, %xmm13, %xmm0, %xmm0
	vshufpd	$1, %xmm11, %xmm11, %xmm13
	vblendvps	%ymm9, %ymm15, %ymm1, %ymm14
	vaddss	%xmm14, %xmm13, %xmm13
	vmovshdup	%xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufpd	$1, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufps	$255, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vextractf128	$1, %ymm14, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	vmovshdup	%xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufpd	$1, %xmm14, %xmm14, %xmm15
	vaddss	%xmm15, %xmm13, %xmm13
	vshufps	$255, %xmm14, %xmm14, %xmm14
	vaddss	%xmm14, %xmm13, %xmm13
	.loc	5 26 8
	vmaskmovps	448(%r9,%r11,4), %ymm10, %ymm14
	.loc	5 28 10
	vinsertps	$32, %xmm13, %xmm0, %xmm0
	vshufps	$255, %xmm11, %xmm11, %xmm11
	vblendvps	%ymm10, %ymm14, %ymm1, %ymm13
	vaddss	%xmm13, %xmm11, %xmm11
	vmovshdup	%xmm13, %xmm14
	vaddss	%xmm14, %xmm11, %xmm11
	vshufpd	$1, %xmm13, %xmm13, %xmm14
	vaddss	%xmm14, %xmm11, %xmm11
	vshufps	$255, %xmm13, %xmm13, %xmm14
	vaddss	%xmm14, %xmm11, %xmm11
	vextractf128	$1, %ymm13, %xmm13
	vaddss	%xmm13, %xmm11, %xmm11
	vmovshdup	%xmm13, %xmm14
	vaddss	%xmm14, %xmm11, %xmm11
	vshufpd	$1, %xmm13, %xmm13, %xmm14
	vaddss	%xmm14, %xmm11, %xmm11
	vshufps	$255, %xmm13, %xmm13, %xmm13
	vaddss	%xmm13, %xmm11, %xmm11
	vinsertps	$48, %xmm11, %xmm0, %xmm0
	vinsertf128	$1, %xmm0, %ymm12, %ymm11
	movl	%r10d, %ebx
	movl	$8, %r11d
	xorl	%r10d, %r10d
	.loc	5 26 8
	testb	$1, %bl
	jne	.LBB4_19
	.loc	5 28 10
	vmaskmovps	%ymm11, %ymm2, (%r8)
	.loc	5 26 8
	addq	$8, %rsi
	cmpq	%rax, %rsi
	jl	.LBB4_2
	jmp	.LBB4_21
	.loc	5 0 8 is_stmt 0
.Ltmp15:
	.p2align	4
.LBB4_3:
	vpxor	%xmm3, %xmm3, %xmm3
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	.loc	5 26 8
	cmpq	$2, %r8
	jge	.LBB4_6
.LBB4_5:
	.loc	5 0 8
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%xmm5, %xmm5, %xmm5
	.loc	5 26 8
	cmpq	$3, %r8
	jge	.LBB4_8
.LBB4_7:
	.loc	5 0 8
	vpxor	%xmm5, %xmm5, %xmm5
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	.loc	5 26 8
	cmpq	$4, %r8
	jge	.LBB4_10
.LBB4_9:
	.loc	5 0 8
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	.loc	5 26 8
	cmpq	$5, %r8
	jge	.LBB4_12
.LBB4_11:
	.loc	5 0 8
	vpxor	%xmm7, %xmm7, %xmm7
	vpcmpeqd	%xmm8, %xmm8, %xmm8
	.loc	5 26 8
	cmpq	$6, %r8
	jge	.LBB4_14
.LBB4_13:
	.loc	5 0 8
	vpxor	%xmm8, %xmm8, %xmm8
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	.loc	5 26 8
	cmpq	$7, %r8
	jl	.LBB4_15
	jmp	.LBB4_16
.LBB4_21:
	.loc	5 32 8 is_stmt 1
	xorl	%eax, %eax
	.loc	5 32 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp16:
.Lfunc_end4:
	.size	row_sum_dispatch_0_reduction_Dx16_f32, .Lfunc_end4-row_sum_dispatch_0_reduction_Dx16_f32
	.cfi_endproc

	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_1:
	.long	0x80000000
	.section	.text.fragment_dispatch_1_reduction_Dx16_f32,"ax",@progbits
	.prefalign	16
	.type	fragment_dispatch_1_reduction_Dx16_f32,@function
fragment_dispatch_1_reduction_Dx16_f32:
.Lfunc_begin5:
	.file	6 "/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables" "configured_module_fragment_dispatch_1.mlir"
	.loc	6 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp17:
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$288, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.loc	6 12 8 prologue_end
	movq	24(%rsi), %rdi
	.loc	6 14 8
	movq	8(%rdi), %rax
	.loc	6 38 8
	testq	%rax, %rax
	jle	.LBB5_21
	.loc	6 0 8 is_stmt 0
	movq	32(%rsi), %rsi
	movq	8(%rsi), %rcx
	movabsq	$2305843009213693948, %rdx
	andq	(%rdi), %rdx
	addq	(%rsi), %rdx
	movq	16(%rsi), %rsi
	xorl	%edi, %edi
	movl	$8, %r8d
	vbroadcastss	.LCPI5_1(%rip), %ymm2
	.p2align	4
.LBB5_2:
	.loc	6 38 8 is_stmt 1
	movq	%rax, %r9
	subq	%rdi, %r9
	vpcmpeqd	%xmm11, %xmm11, %xmm11
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	testq	%r9, %r9
	jle	.LBB5_3
	.loc	6 0 8 is_stmt 0
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	.loc	6 38 8
	cmpq	$2, %r9
	jl	.LBB5_5
.LBB5_6:
	.loc	6 0 8
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	.loc	6 38 8
	cmpq	$3, %r9
	jl	.LBB5_7
.LBB5_8:
	.loc	6 0 8
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	.loc	6 38 8
	cmpq	$4, %r9
	jl	.LBB5_9
.LBB5_10:
	.loc	6 0 8
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	.loc	6 38 8
	cmpq	$5, %r9
	jl	.LBB5_11
.LBB5_12:
	.loc	6 0 8
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	.loc	6 38 8
	cmpq	$6, %r9
	jl	.LBB5_13
.LBB5_14:
	.loc	6 0 8
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	.loc	6 38 8
	cmpq	$7, %r9
	jge	.LBB5_16
.LBB5_15:
	.loc	6 0 8
	vpxor	%xmm10, %xmm10, %xmm10
.LBB5_16:
	.loc	6 38 8 is_stmt 1
	cmpq	$8, %r9
	cmovgeq	%r8, %r9
	.loc	6 37 8
	vmovd	%r9d, %xmm5
	vpbroadcastd	%xmm5, %ymm5
	vpcmpgtd	.LCPI5_0(%rip), %ymm5, %ymm5
	.loc	6 10 8
	vxorps	%xmm12, %xmm12, %xmm12
	vmovdqa	%ymm5, 160(%rsp)
	vmaskmovps	%ymm12, %ymm5, (%rsi,%rdi,4)
	.loc	6 38 8
	jge	.LBB5_18
	.loc	6 0 8 is_stmt 0
	vpxor	%xmm11, %xmm11, %xmm11
.LBB5_18:
	leaq	(%rsi,%rdi,4), %r9
	movq	%rdi, %r10
	shlq	$6, %r10
	addq	%rdx, %r10
	movb	$1, %r11b
	vpmovsxwd	%xmm0, %ymm0
	vmovdqa	%ymm0, 256(%rsp)
	vpmovsxwd	%xmm3, %ymm0
	vmovdqa	%ymm0, 224(%rsp)
	vpmovsxwd	%xmm6, %ymm0
	vmovdqa	%ymm0, 192(%rsp)
	vpmovsxwd	%xmm7, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vpmovsxwd	%xmm4, %ymm0
	vmovdqa	%ymm0, 96(%rsp)
	vpmovsxwd	%xmm9, %ymm0
	vmovdqa	%ymm0, 64(%rsp)
	vpmovsxwd	%xmm10, %ymm0
	vmovdqa	%ymm0, 32(%rsp)
	vpmovsxwd	%xmm11, %ymm0
	vmovdqa	%ymm0, (%rsp)
	xorl	%ebx, %ebx
	.p2align	4
.LBB5_19:
	vmovaps	256(%rsp), %ymm9
	.loc	6 38 8 is_stmt 1
	vmaskmovps	(%r10,%rbx,4), %ymm9, %ymm0
	vmovaps	224(%rsp), %ymm10
	vmaskmovps	64(%r10,%rbx,4), %ymm10, %ymm3
	vmovaps	192(%rsp), %ymm11
	vmaskmovps	128(%r10,%rbx,4), %ymm11, %ymm4
	vmovaps	128(%rsp), %ymm1
	vmaskmovps	192(%r10,%rbx,4), %ymm1, %ymm13
	vmovaps	96(%rsp), %ymm1
	vmaskmovps	256(%r10,%rbx,4), %ymm1, %ymm14
	vmovaps	64(%rsp), %ymm1
	vmaskmovps	320(%r10,%rbx,4), %ymm1, %ymm15
	vmovaps	32(%rsp), %ymm1
	vmaskmovps	384(%r10,%rbx,4), %ymm1, %ymm5
	vmovaps	(%rsp), %ymm1
	vmaskmovps	448(%r10,%rbx,4), %ymm1, %ymm6
	vmovaps	(%rcx,%rbx,4), %ymm7
	.loc	6 40 10
	vaddps	%ymm7, %ymm0, %ymm0
	vaddps	%ymm7, %ymm3, %ymm3
	vaddps	%ymm7, %ymm4, %ymm4
	vaddps	%ymm7, %ymm13, %ymm13
	vaddps	%ymm7, %ymm14, %ymm14
	vaddps	%ymm7, %ymm15, %ymm15
	vaddps	%ymm7, %ymm5, %ymm5
	vaddps	%ymm7, %ymm6, %ymm6
	vxorps	%xmm1, %xmm1, %xmm1
	.loc	6 41 10
	vcmpnleps	%ymm1, %ymm0, %ymm7
	vandps	%ymm0, %ymm7, %ymm7
	vcmpnleps	%ymm1, %ymm3, %ymm0
	vandps	%ymm3, %ymm0, %ymm8
	vcmpnleps	%ymm1, %ymm4, %ymm0
	vandps	%ymm4, %ymm0, %ymm4
	vcmpnleps	%ymm1, %ymm13, %ymm0
	vandps	%ymm0, %ymm13, %ymm3
	vcmpnleps	%ymm1, %ymm14, %ymm0
	vandps	%ymm0, %ymm14, %ymm0
	vcmpnleps	%ymm1, %ymm15, %ymm13
	vandps	%ymm15, %ymm13, %ymm15
	vcmpnleps	%ymm1, %ymm5, %ymm13
	vandps	%ymm5, %ymm13, %ymm14
	vcmpnleps	%ymm1, %ymm6, %ymm5
	vandps	%ymm6, %ymm5, %ymm13
	.loc	6 42 10
	vblendvps	%ymm9, %ymm7, %ymm2, %ymm5
	vaddss	%xmm5, %xmm12, %xmm6
	vmovshdup	%xmm5, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufpd	$1, %xmm5, %xmm5, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufps	$255, %xmm5, %xmm5, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vextractf128	$1, %ymm5, %xmm5
	vaddss	%xmm5, %xmm6, %xmm6
	vmovshdup	%xmm5, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufpd	$1, %xmm5, %xmm5, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufps	$255, %xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm6, %xmm5
	vmovshdup	%xmm12, %xmm6
	vblendvps	%ymm10, %ymm8, %ymm2, %ymm7
	vaddss	%xmm7, %xmm6, %xmm6
	vmovshdup	%xmm7, %xmm8
	vaddss	%xmm6, %xmm8, %xmm6
	vshufpd	$1, %xmm7, %xmm7, %xmm8
	vaddss	%xmm6, %xmm8, %xmm6
	vshufps	$255, %xmm7, %xmm7, %xmm8
	vaddss	%xmm6, %xmm8, %xmm6
	vextractf128	$1, %ymm7, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vmovshdup	%xmm7, %xmm8
	vaddss	%xmm6, %xmm8, %xmm6
	vshufpd	$1, %xmm7, %xmm7, %xmm8
	vaddss	%xmm6, %xmm8, %xmm6
	vshufps	$255, %xmm7, %xmm7, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vinsertps	$16, %xmm6, %xmm5, %xmm5
	vblendvps	%ymm11, %ymm4, %ymm2, %ymm4
	vshufpd	$1, %xmm12, %xmm12, %xmm6
	vaddss	%xmm4, %xmm6, %xmm6
	vmovshdup	%xmm4, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufpd	$1, %xmm4, %xmm4, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufps	$255, %xmm4, %xmm4, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vextractf128	$1, %ymm4, %xmm4
	vaddss	%xmm4, %xmm6, %xmm6
	vmovshdup	%xmm4, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufpd	$1, %xmm4, %xmm4, %xmm7
	vaddss	%xmm7, %xmm6, %xmm6
	vshufps	$255, %xmm4, %xmm4, %xmm4
	vaddss	%xmm4, %xmm6, %xmm4
	vinsertps	$32, %xmm4, %xmm5, %xmm4
	vshufps	$255, %xmm12, %xmm12, %xmm5
	vmovaps	128(%rsp), %ymm1
	vblendvps	%ymm1, %ymm3, %ymm2, %ymm3
	vaddss	%xmm3, %xmm5, %xmm5
	vmovshdup	%xmm3, %xmm6
	vaddss	%xmm6, %xmm5, %xmm5
	vshufpd	$1, %xmm3, %xmm3, %xmm6
	vaddss	%xmm6, %xmm5, %xmm5
	vshufps	$255, %xmm3, %xmm3, %xmm6
	vaddss	%xmm6, %xmm5, %xmm5
	vextractf128	$1, %ymm3, %xmm3
	vaddss	%xmm3, %xmm5, %xmm5
	vmovshdup	%xmm3, %xmm6
	vaddss	%xmm6, %xmm5, %xmm5
	vshufpd	$1, %xmm3, %xmm3, %xmm6
	vaddss	%xmm6, %xmm5, %xmm5
	vshufps	$255, %xmm3, %xmm3, %xmm3
	vaddss	%xmm3, %xmm5, %xmm3
	vinsertps	$48, %xmm3, %xmm4, %xmm3
	vextractf128	$1, %ymm12, %xmm12
	vmovaps	96(%rsp), %ymm1
	vblendvps	%ymm1, %ymm0, %ymm2, %ymm0
	vaddss	%xmm0, %xmm12, %xmm4
	vmovshdup	%xmm0, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vshufpd	$1, %xmm0, %xmm0, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vextractf128	$1, %ymm0, %xmm0
	vaddss	%xmm0, %xmm4, %xmm4
	vmovshdup	%xmm0, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vshufpd	$1, %xmm0, %xmm0, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm0, %xmm4, %xmm0
	vmovshdup	%xmm12, %xmm4
	vmovaps	64(%rsp), %ymm1
	vblendvps	%ymm1, %ymm15, %ymm2, %ymm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vextractf128	$1, %ymm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovaps	32(%rsp), %ymm1
	vblendvps	%ymm1, %ymm14, %ymm2, %ymm5
	vinsertps	$16, %xmm4, %xmm0, %xmm0
	vshufpd	$1, %xmm12, %xmm12, %xmm4
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vextractf128	$1, %ymm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vinsertps	$32, %xmm4, %xmm0, %xmm0
	vshufps	$255, %xmm12, %xmm12, %xmm4
	vmovaps	(%rsp), %ymm1
	vblendvps	%ymm1, %ymm13, %ymm2, %ymm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vextractf128	$1, %ymm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vmovshdup	%xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufpd	$1, %xmm5, %xmm5, %xmm6
	vaddss	%xmm6, %xmm4, %xmm4
	vshufps	$255, %xmm5, %xmm5, %xmm5
	vaddss	%xmm5, %xmm4, %xmm4
	vinsertps	$48, %xmm4, %xmm0, %xmm0
	vinsertf128	$1, %xmm0, %ymm3, %ymm12
	movl	%r11d, %r14d
	movl	$8, %ebx
	xorl	%r11d, %r11d
	.loc	6 38 8
	testb	$1, %r14b
	jne	.LBB5_19
	.loc	6 0 8 is_stmt 0
	vmovaps	160(%rsp), %ymm0
	.loc	6 42 10 is_stmt 1
	vmaskmovps	%ymm12, %ymm0, (%r9)
	.loc	6 38 8
	addq	$8, %rdi
	cmpq	%rax, %rdi
	jl	.LBB5_2
	jmp	.LBB5_21
	.loc	6 0 8 is_stmt 0
.Ltmp18:
	.p2align	4
.LBB5_3:
	vpxor	%xmm0, %xmm0, %xmm0
	vpcmpeqd	%xmm3, %xmm3, %xmm3
	.loc	6 38 8
	cmpq	$2, %r9
	jge	.LBB5_6
.LBB5_5:
	.loc	6 0 8
	vpxor	%xmm3, %xmm3, %xmm3
	vpcmpeqd	%xmm6, %xmm6, %xmm6
	.loc	6 38 8
	cmpq	$3, %r9
	jge	.LBB5_8
.LBB5_7:
	.loc	6 0 8
	vpxor	%xmm6, %xmm6, %xmm6
	vpcmpeqd	%xmm7, %xmm7, %xmm7
	.loc	6 38 8
	cmpq	$4, %r9
	jge	.LBB5_10
.LBB5_9:
	.loc	6 0 8
	vpxor	%xmm7, %xmm7, %xmm7
	vpcmpeqd	%xmm4, %xmm4, %xmm4
	.loc	6 38 8
	cmpq	$5, %r9
	jge	.LBB5_12
.LBB5_11:
	.loc	6 0 8
	vpxor	%xmm4, %xmm4, %xmm4
	vpcmpeqd	%xmm9, %xmm9, %xmm9
	.loc	6 38 8
	cmpq	$6, %r9
	jge	.LBB5_14
.LBB5_13:
	.loc	6 0 8
	vpxor	%xmm9, %xmm9, %xmm9
	vpcmpeqd	%xmm10, %xmm10, %xmm10
	.loc	6 38 8
	cmpq	$7, %r9
	jl	.LBB5_15
	jmp	.LBB5_16
.LBB5_21:
	.loc	6 46 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	.loc	6 46 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp19:
.Lfunc_end5:
	.size	fragment_dispatch_1_reduction_Dx16_f32, .Lfunc_end5-fragment_dispatch_1_reduction_Dx16_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.prefalign	16
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin6:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end6:
	.size	iree_hal_executable_library_query, .Lfunc_end6-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end6-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin7:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB7_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB7_5
	testw	%cx, %cx
	je	.LBB7_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB7_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB7_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB7_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end7:
	.size	iree_h2f_ieee, .Lfunc_end7-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin8:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB8_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB8_6
	testl	%edx, %edx
	je	.LBB8_4
	orl	$32767, %eax
	retq
.LBB8_1:
	movl	%ecx, %edi
.LBB8_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB8_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB8_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB8_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB8_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end8:
	.size	iree_f2h_ieee, .Lfunc_end8-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin9:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB9_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB9_5
	testw	%cx, %cx
	je	.LBB9_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB9_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB9_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB9_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end9:
	.size	__gnu_h2f_ieee, .Lfunc_end9-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin10:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB10_6
	cmpl	$31744, %esi
	jne	.LBB10_5
	testw	%dx, %dx
	je	.LBB10_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB10_6:
	orl	$864026624, %eax
	movzwl	%dx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB10_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	addl	%ecx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB10_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end10:
	.size	__extendhfsf2, .Lfunc_end10-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin11:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB11_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB11_6
	testl	%edx, %edx
	je	.LBB11_4
	orl	$32767, %eax
	retq
.LBB11_1:
	movl	%ecx, %edi
.LBB11_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB11_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB11_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB11_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB11_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end11:
	.size	__gnu_f2h_ieee, .Lfunc_end11-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin12:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB12_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB12_6
	testl	%edx, %edx
	je	.LBB12_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB12_1:
	movl	%ecx, %edi
	jmp	.LBB12_9
.LBB12_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB12_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB12_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	jmp	.LBB12_9
.LBB12_4:
	movl	$31744, %edi
.LBB12_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end12:
	.size	__truncsfhf2, .Lfunc_end12-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin13:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB13_6
	cmpl	$31744, %esi
	jne	.LBB13_5
	testw	%dx, %dx
	je	.LBB13_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB13_6:
	orl	$864026624, %eax
	movzwl	%dx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB13_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	addl	%ecx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB13_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end13:
	.size	__extendhfdf2, .Lfunc_end13-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin14:
	.cfi_startproc
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB14_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB14_6
	testl	%edx, %edx
	je	.LBB14_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB14_1:
	movl	%ecx, %edi
	jmp	.LBB14_9
.LBB14_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB14_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB14_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	jmp	.LBB14_9
.LBB14_4:
	movl	$31744, %edi
.LBB14_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end14:
	.size	__truncdfhf2, .Lfunc_end14-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.prefalign	16
	.type	fma,@function
fma:
.Lfunc_begin15:
	.cfi_startproc
	vfmadd213sd	%xmm2, %xmm1, %xmm0
	retq
.Lfunc_end15:
	.size	fma, .Lfunc_end15-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.prefalign	16
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin16:
	.cfi_startproc
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end16:
	.size	__math_invalidf, .Lfunc_end16-__math_invalidf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI17_0:
	.long	0xf0000000
	.long	0x70000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI17_1:
	.long	0x70000000
	.section	.text.__math_oflowf,"ax",@progbits
	.prefalign	16
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin17:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI17_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI17_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end17:
	.size	__math_oflowf, .Lfunc_end17-__math_oflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI18_0:
	.long	0x80000000
	.section	.text.__math_xflowf,"ax",@progbits
	.prefalign	16
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin18:
	.cfi_startproc
	vmovaps	%xmm0, %xmm1
	testl	%edi, %edi
	je	.LBB18_2
	vbroadcastss	.LCPI18_0(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm1
.LBB18_2:
	vmovss	%xmm1, -4(%rsp)
	vmulss	-4(%rsp), %xmm0, %xmm0
	retq
.Lfunc_end18:
	.size	__math_xflowf, .Lfunc_end18-__math_xflowf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI19_0:
	.long	0x90000000
	.long	0x10000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI19_1:
	.long	0x10000000
	.section	.text.__math_uflowf,"ax",@progbits
	.prefalign	16
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin19:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI19_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI19_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end19:
	.size	__math_uflowf, .Lfunc_end19-__math_uflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI20_0:
	.long	0x7b800000
.LCPI20_1:
	.long	0x80000000
.LCPI20_2:
	.long	0x3f800000
	.section	.text.ceilf,"ax",@progbits
	.prefalign	16
	.type	ceilf,@function
ceilf:
.Lfunc_begin20:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB20_1
.LBB20_8:
	retq
.LBB20_1:
	cmpl	$127, %ecx
	jb	.LBB20_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB20_8
	vaddss	.LCPI20_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$-8388608, %edi
	sarxl	%ecx, %edi, %ecx
	cmovsl	%esi, %edx
	addl	%eax, %edx
	andl	%ecx, %edx
	vmovd	%edx, %xmm0
	retq
.LBB20_4:
	vaddss	.LCPI20_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	testl	%eax, %eax
	js	.LBB20_5
	je	.LBB20_8
	vmovss	.LCPI20_2(%rip), %xmm0
	retq
.LBB20_5:
	vmovss	.LCPI20_1(%rip), %xmm0
	retq
.Lfunc_end20:
	.size	ceilf, .Lfunc_end20-ceilf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI21_0:
	.long	0xff800000
.LCPI21_1:
	.long	0x42b17217
.LCPI21_2:
	.long	0xc2cff1b4
.LCPI21_3:
	.long	0x10000000
.LCPI21_4:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI21_5:
	.quad	0x40471547652b82fe
.LCPI21_6:
	.quad	0x4338000000000000
.LCPI21_7:
	.quad	0xc338000000000000
.LCPI21_8:
	.quad	0x3ebc6af84b912394
.LCPI21_9:
	.quad	0x3f2ebfce50fac4f3
.LCPI21_10:
	.quad	0x3f962e42ff0c52d6
.LCPI21_11:
	.quad	0x3ff0000000000000
	.section	.text.expf,"ax",@progbits
	.prefalign	16
	.type	expf,@function
expf:
.Lfunc_begin21:
	.cfi_startproc
	vmovd	%xmm0, %eax
	shrl	$20, %eax
	andl	$2047, %eax
	cmpl	$1067, %eax
	jae	.LBB21_1
.LBB21_8:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LCPI21_5(%rip), %xmm0, %xmm0
	vaddsd	.LCPI21_6(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vaddsd	.LCPI21_7(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	movl	%eax, %ecx
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI21_8(%rip), %xmm2
	vfmadd213sd	.LCPI21_9(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI21_10(%rip), %xmm4
	vfmadd213sd	.LCPI21_11(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm1
.LBB21_9:
	vmovaps	%xmm1, %xmm0
	retq
.LBB21_1:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI21_0(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	jae	.LBB21_9
	cmpl	$2040, %eax
	jae	.LBB21_3
	vucomiss	.LCPI21_1(%rip), %xmm0
	jbe	.LBB21_6
	movl	$1879048192, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI21_4(%rip), %xmm0, %xmm0
	retq
.LBB21_3:
	vaddss	%xmm0, %xmm0, %xmm0
	retq
.LBB21_6:
	vmovss	.LCPI21_2(%rip), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB21_8
	movl	$268435456, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI21_3(%rip), %xmm0, %xmm0
	retq
.Lfunc_end21:
	.size	expf, .Lfunc_end21-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.prefalign	16
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin22:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	feclearexcept, .Lfunc_end22-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.prefalign	16
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin23:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	feraiseexcept, .Lfunc_end23-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.prefalign	16
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin24:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	fetestexcept, .Lfunc_end24-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.prefalign	16
	.type	fegetround,@function
fegetround:
.Lfunc_begin25:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	fegetround, .Lfunc_end25-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.prefalign	16
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin26:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	__fesetround, .Lfunc_end26-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.prefalign	16
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin27:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end27:
	.size	fegetenv, .Lfunc_end27-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.prefalign	16
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin28:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	fesetenv, .Lfunc_end28-fesetenv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI29_0:
	.long	0x7b800000
.LCPI29_1:
	.long	0xbf800000
	.section	.text.floorf,"ax",@progbits
	.prefalign	16
	.type	floorf,@function
floorf:
.Lfunc_begin29:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB29_1
	retq
.LBB29_1:
	cmpl	$127, %ecx
	jb	.LBB29_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB29_6
	vaddss	.LCPI29_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	movl	$-8388608, %esi
	sarxl	%ecx, %esi, %ecx
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%eax, %esi
	andl	%ecx, %esi
	vmovd	%esi, %xmm0
	retq
.LBB29_4:
	vaddss	.LCPI29_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	testl	%eax, %eax
	jns	.LBB29_5
	vucomiss	%xmm1, %xmm0
	vmovaps	%xmm0, %xmm1
	jne	.LBB29_8
	jp	.LBB29_8
.LBB29_5:
	vmovaps	%xmm1, %xmm0
.LBB29_6:
	retq
.LBB29_8:
	vmovss	.LCPI29_1(%rip), %xmm1
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end29:
	.size	floorf, .Lfunc_end29-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.prefalign	16
	.type	fmaf,@function
fmaf:
.Lfunc_begin30:
	.cfi_startproc
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movl	%eax, %ecx
	andl	$536870911, %ecx
	cmpl	$268435456, %ecx
	setne	%cl
	movabsq	$9218868437227405312, %rdx
	andnq	%rdx, %rax, %rdx
	sete	%dl
	orb	%cl, %dl
	jne	.LBB30_7
	vsubsd	%xmm1, %xmm0, %xmm3
	vucomisd	%xmm2, %xmm3
	jne	.LBB30_3
	jp	.LBB30_3
	vsubsd	%xmm2, %xmm0, %xmm3
	vucomisd	%xmm1, %xmm3
	jne	.LBB30_3
	jp	.LBB30_3
.LBB30_7:
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.LBB30_3:
	testq	%rax, %rax
	sets	%cl
	vucomisd	%xmm1, %xmm2
	setbe	%dl
	xorb	%cl, %dl
	jne	.LBB30_4
	vsubsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	jmp	.LBB30_6
.LBB30_4:
	vsubsd	%xmm0, %xmm1, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
.LBB30_6:
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	setbe	%dl
	xorb	%dl, %cl
	movq	%rax, %rdx
	orq	$1, %rdx
	decq	%rax
	testb	%cl, %cl
	cmovneq	%rdx, %rax
	vmovq	%rax, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end30:
	.size	fmaf, .Lfunc_end30-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.prefalign	16
	.type	fmodf,@function
fmodf:
.Lfunc_begin31:
	.cfi_startproc
	vmovd	%xmm1, %edx
	movl	%edx, %esi
	addl	%edx, %esi
	je	.LBB31_2
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	movl	%edx, %edi
	andl	$2147483647, %edi
	cmpl	$2139095041, %edi
	setb	%dil
	cmpl	$255, %ecx
	setne	%r8b
	testb	%r8b, %dil
	jne	.LBB31_3
.LBB31_2:
	vmulss	%xmm1, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB31_3:
	leal	(%rax,%rax), %edi
	cmpl	%esi, %edi
	jbe	.LBB31_4
	movl	%edx, %esi
	shrl	$23, %esi
	movzbl	%sil, %edi
	testl	%ecx, %ecx
	je	.LBB31_7
	movl	%eax, %esi
	andl	$8388607, %esi
	orl	$8388608, %esi
	testl	%edi, %edi
	je	.LBB31_12
.LBB31_15:
	andl	$8388607, %edx
	orl	$8388608, %edx
	cmpl	%edi, %ecx
	jg	.LBB31_17
.LBB31_21:
	movl	%esi, %edi
	subl	%edx, %edi
	jns	.LBB31_22
	jmp	.LBB31_23
.LBB31_4:
	je	.LBB31_5
	retq
.LBB31_7:
	movl	%eax, %esi
	xorl	%ecx, %ecx
	shll	$9, %esi
	js	.LBB31_9
	.p2align	4
.LBB31_8:
	decl	%ecx
	addl	%esi, %esi
	jns	.LBB31_8
.LBB31_9:
	movb	$1, %sil
	subb	%cl, %sil
	shlxl	%esi, %eax, %esi
	testl	%edi, %edi
	jne	.LBB31_15
.LBB31_12:
	movl	%edx, %r8d
	xorl	%edi, %edi
	shll	$9, %r8d
	js	.LBB31_14
	.p2align	4
.LBB31_13:
	decl	%edi
	addl	%r8d, %r8d
	jns	.LBB31_13
.LBB31_14:
	movb	$1, %r8b
	subb	%dil, %r8b
	shlxl	%r8d, %edx, %edx
	cmpl	%edi, %ecx
	jg	.LBB31_17
	jmp	.LBB31_21
	.p2align	4
.LBB31_19:
	addl	%esi, %esi
	decl	%ecx
	cmpl	%edi, %ecx
	jle	.LBB31_20
.LBB31_17:
	movl	%esi, %r8d
	subl	%edx, %r8d
	js	.LBB31_19
	movl	%r8d, %esi
	jne	.LBB31_19
	jmp	.LBB31_5
.LBB31_20:
	movl	%edi, %ecx
	movl	%esi, %edi
	subl	%edx, %edi
	js	.LBB31_23
.LBB31_22:
	movl	%edi, %esi
	je	.LBB31_5
.LBB31_23:
	cmpl	$8388607, %esi
	ja	.LBB31_24
	.p2align	4
.LBB31_25:
	leal	(%rsi,%rsi), %edx
	decl	%ecx
	cmpl	$4194304, %esi
	movl	%edx, %esi
	jb	.LBB31_25
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jle	.LBB31_28
.LBB31_27:
	addl	$-8388608, %edx
	shll	$23, %ecx
	orl	%edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.LBB31_5:
	vpxor	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB31_24:
	movl	%esi, %edx
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jg	.LBB31_27
.LBB31_28:
	movb	$1, %sil
	subb	%cl, %sil
	shrxl	%esi, %edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.Lfunc_end31:
	.size	fmodf, .Lfunc_end31-fmodf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI32_0:
	.long	0x5f800000
	.section	.text.frexpf,"ax",@progbits
	.prefalign	16
	.type	frexpf,@function
frexpf:
.Lfunc_begin32:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	cmpb	$-1, %cl
	je	.LBB32_7
	movzbl	%cl, %edx
	testl	%edx, %edx
	jne	.LBB32_6
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB32_4
	jnp	.LBB32_3
.LBB32_4:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	vmulss	.LCPI32_0(%rip), %xmm0, %xmm0
	movq	%rdi, %rbx
	callq	frexpf
	movq	%rbx, %rdi
	movl	(%rbx), %eax
	addl	$-64, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movl	%eax, (%rdi)
	retq
.LBB32_6:
	movzbl	%cl, %ecx
	addl	$-126, %ecx
	movl	%ecx, (%rdi)
	andl	$-2139095041, %eax
	orl	$1056964608, %eax
	vmovd	%eax, %xmm0
.LBB32_7:
	retq
.LBB32_3:
	xorl	%eax, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end32:
	.size	frexpf, .Lfunc_end32-frexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI33_0:
	.long	0x0c800000
.LCPI33_1:
	.long	0x7f000000
	.section	.text.ldexpf,"ax",@progbits
	.prefalign	16
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin33:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB33_4
	vmulss	.LCPI33_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB33_2
	vmulss	.LCPI33_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB33_8
.LBB33_4:
	cmpl	$-127, %edi
	jg	.LBB33_9
	vmulss	.LCPI33_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB33_6
	vmulss	.LCPI33_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB33_8:
	movl	%eax, %edi
	jmp	.LBB33_9
.LBB33_2:
	addl	$-127, %edi
	jmp	.LBB33_9
.LBB33_6:
	addl	$102, %edi
.LBB33_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end33:
	.size	ldexpf, .Lfunc_end33-ldexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI34_0:
	.long	0x0c800000
.LCPI34_1:
	.long	0x7f000000
	.section	.text.scalbnf,"ax",@progbits
	.prefalign	16
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin34:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB34_4
	vmulss	.LCPI34_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB34_2
	vmulss	.LCPI34_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB34_8
.LBB34_4:
	cmpl	$-127, %edi
	jg	.LBB34_9
	vmulss	.LCPI34_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB34_6
	vmulss	.LCPI34_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB34_8:
	movl	%eax, %edi
	jmp	.LBB34_9
.LBB34_2:
	addl	$-127, %edi
	jmp	.LBB34_9
.LBB34_6:
	addl	$102, %edi
.LBB34_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end34:
	.size	scalbnf, .Lfunc_end34-scalbnf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI35_0:
	.long	0x3f800000
.LCPI35_1:
	.long	0x80000000
.LCPI35_2:
	.long	0x4b000000
.LCPI35_12:
	.long	0x10000000
.LCPI35_20:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI35_3:
	.quad	0xbff0000000000000
.LCPI35_4:
	.quad	0x3fd27616c9496e0b
.LCPI35_5:
	.quad	0xbfd71969a075c67a
.LCPI35_6:
	.quad	0x3fdec70a6ca7badd
.LCPI35_7:
	.quad	0xbfe7154748bef6c8
.LCPI35_8:
	.quad	0x3ff71547652ab82b
.LCPI35_9:
	.quad	0x405fffffffd1d571
.LCPI35_10:
	.quad	0xc062c00000000000
.LCPI35_11:
	.long	0x90000000
	.long	0x10000000
.LCPI35_13:
	.quad	0x42e8000000000000
.LCPI35_14:
	.quad	0xc2e8000000000000
.LCPI35_15:
	.quad	0x3fac6af84b912394
.LCPI35_16:
	.quad	0x3fcebfce50fac4f3
.LCPI35_17:
	.quad	0x3fe62e42ff0c52d6
.LCPI35_18:
	.quad	0x3ff0000000000000
.LCPI35_19:
	.long	0xf0000000
	.long	0x70000000
	.section	.text.powf,"ax",@progbits
	.prefalign	16
	.type	powf,@function
powf:
.Lfunc_begin35:
	.cfi_startproc
	vmovd	%xmm0, %edx
	vmovd	%xmm1, %ecx
	leal	-2139095040(%rdx), %eax
	cmpl	$-2130706432, %eax
	jb	.LBB35_2
	xorl	%eax, %eax
	leal	16777216(,%rcx,2), %esi
	cmpl	$16777216, %esi
	jbe	.LBB35_2
.LBB35_28:
	leal	-1060306944(%rdx), %ecx
	movl	%ecx, %esi
	andl	$-8388608, %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	sarl	$23, %esi
	shrl	$15, %ecx
	andl	$240, %ecx
	leaq	__powf_log2_data(%rip), %rdi
	vmovsd	(%rcx,%rdi), %xmm0
	vmovd	%edx, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd213sd	.LCPI35_3(%rip), %xmm0, %xmm2
	vcvtsi2sd	%esi, %xmm15, %xmm0
	vaddsd	8(%rcx,%rdi), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm3
	vmovsd	.LCPI35_4(%rip), %xmm4
	vfmadd213sd	.LCPI35_5(%rip), %xmm2, %xmm4
	vmovsd	.LCPI35_6(%rip), %xmm5
	vfmadd213sd	.LCPI35_7(%rip), %xmm2, %xmm5
	vmulsd	%xmm3, %xmm3, %xmm6
	vfmadd231sd	.LCPI35_8(%rip), %xmm2, %xmm0
	vfmadd231sd	%xmm5, %xmm3, %xmm0
	vfmadd231sd	%xmm6, %xmm4, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	movabsq	$9223231299366420480, %rdx
	andq	%rcx, %rdx
	movabsq	$4638426141214900225, %rcx
	cmpq	%rcx, %rdx
	jae	.LBB35_29
.LBB35_33:
	vaddsd	.LCPI35_13(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rcx
	vaddsd	.LCPI35_14(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	addl	%ecx, %eax
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI35_15(%rip), %xmm2
	vfmadd213sd	.LCPI35_16(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI35_17(%rip), %xmm4
	vfmadd213sd	.LCPI35_18(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
.LBB35_34:
	retq
.LBB35_2:
	leal	(%rcx,%rcx), %eax
	leal	-1(%rax), %esi
	cmpl	$-16777217, %esi
	jae	.LBB35_3
	leal	-1(,%rdx,2), %eax
	cmpl	$-16777217, %eax
	jae	.LBB35_11
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.LBB35_20
	cmpl	$8388607, %edx
	ja	.LBB35_28
.LBB35_27:
	vmulss	.LCPI35_2(%rip), %xmm0, %xmm0
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	addl	$-192937984, %edx
	jmp	.LBB35_28
.LBB35_29:
	vucomisd	.LCPI35_9(%rip), %xmm0
	jbe	.LBB35_31
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI35_19(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI35_20(%rip), %xmm0, %xmm0
	retq
.LBB35_20:
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	cmpl	$127, %edx
	jb	.LBB35_35
	cmpl	$150, %edx
	jbe	.LBB35_22
.LBB35_24:
	xorl	%eax, %eax
.LBB35_25:
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	cmpl	$8388607, %edx
	ja	.LBB35_28
	jmp	.LBB35_27
.LBB35_31:
	vmovsd	.LCPI35_10(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jb	.LBB35_33
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI35_11(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI35_12(%rip), %xmm0, %xmm0
	retq
.LBB35_22:
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	je	.LBB35_23
.LBB35_35:
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB35_23:
	movl	$1, %eax
	shlxl	%edx, %eax, %edx
	movl	$65536, %eax
	testl	%ecx, %edx
	jne	.LBB35_25
	jmp	.LBB35_24
.LBB35_3:
	vmovdqa	%xmm0, %xmm2
	vmovss	.LCPI35_0(%rip), %xmm0
	cmpl	$1065353216, %edx
	je	.LBB35_34
	testl	%eax, %eax
	je	.LBB35_34
	addl	%edx, %edx
	cmpl	$-16777215, %edx
	setb	%sil
	cmpl	$-16777215, %eax
	setb	%al
	testb	%al, %sil
	jne	.LBB35_7
	vaddss	%xmm1, %xmm2, %xmm0
	retq
.LBB35_11:
	vmulss	%xmm0, %xmm0, %xmm0
	testl	%edx, %edx
	jns	.LBB35_17
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	addl	$-151, %edx
	cmpl	$-24, %edx
	jb	.LBB35_17
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	movzbl	%dl, %eax
	vmovaps	%xmm0, %xmm1
	jne	.LBB35_15
	vbroadcastss	.LCPI35_1(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm1
.LBB35_15:
	btl	%eax, %ecx
	jae	.LBB35_17
	vmovaps	%xmm1, %xmm0
.LBB35_17:
	testl	%ecx, %ecx
	jns	.LBB35_34
	vmovss	.LCPI35_0(%rip), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -12(%rsp)
	vmovss	-12(%rsp), %xmm0
	retq
.LBB35_7:
	cmpl	$2130706432, %edx
	je	.LBB35_34
	setb	%al
	testl	%ecx, %ecx
	sets	%cl
	xorb	%al, %cl
	vxorps	%xmm0, %xmm0, %xmm0
	jne	.LBB35_34
	vmulss	%xmm1, %xmm1, %xmm0
	retq
.Lfunc_end35:
	.size	powf, .Lfunc_end35-powf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI36_0:
	.long	0xcb000000
.LCPI36_1:
	.long	0x4b000000
.LCPI36_2:
	.long	0x80000000
	.section	.text.rintf,"ax",@progbits
	.prefalign	16
	.type	rintf,@function
rintf:
.Lfunc_begin36:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2130706432, %ecx
	cmpl	$1249902592, %ecx
	ja	.LBB36_8
	vmovss	.LCPI36_0(%rip), %xmm1
	vmovss	.LCPI36_1(%rip), %xmm2
	testl	%eax, %eax
	jns	.LBB36_2
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB36_8
	jnp	.LBB36_5
.LBB36_8:
	retq
.LBB36_2:
	vaddss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB36_8
	jp	.LBB36_8
.LBB36_5:
	testl	%eax, %eax
	jns	.LBB36_7
	vmovss	.LCPI36_2(%rip), %xmm1
.LBB36_7:
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end36:
	.size	rintf, .Lfunc_end36-rintf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI37_0:
	.long	0x7fffffff
.LCPI37_1:
	.long	0x4b000000
.LCPI37_2:
	.long	0xcb000000
.LCPI37_3:
	.long	0x3f000000
.LCPI37_4:
	.long	0xbf000000
.LCPI37_5:
	.long	0x3f800000
.LCPI37_6:
	.long	0xbf800000
.LCPI37_7:
	.long	0x80000000
	.section	.text.roundf,"ax",@progbits
	.prefalign	16
	.type	roundf,@function
roundf:
.Lfunc_begin37:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB37_1
.LBB37_9:
	retq
.LBB37_1:
	vpbroadcastd	.LCPI37_0(%rip), %xmm1
	vpand	%xmm1, %xmm0, %xmm1
	vaddss	.LCPI37_1(%rip), %xmm1, %xmm2
	cmpl	$125, %ecx
	ja	.LBB37_3
	vmovss	%xmm2, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB37_3:
	vaddss	.LCPI37_2(%rip), %xmm2, %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	.LCPI37_3(%rip), %xmm0
	jbe	.LBB37_5
	vaddss	%xmm0, %xmm1, %xmm0
	vaddss	.LCPI37_6(%rip), %xmm0, %xmm0
	jmp	.LBB37_7
.LBB37_5:
	vmovss	.LCPI37_4(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	vaddss	%xmm0, %xmm1, %xmm0
	jb	.LBB37_7
	vaddss	.LCPI37_5(%rip), %xmm0, %xmm0
.LBB37_7:
	testl	%eax, %eax
	jns	.LBB37_9
	vbroadcastss	.LCPI37_7(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end37:
	.size	roundf, .Lfunc_end37-roundf
	.cfi_endproc

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"dynamic_linked"
	.size	__unnamed_1, 15

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.long	6
	.zero	4
	.quad	__unnamed_1
	.long	0
	.long	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	matmul_dispatch_0_matmul_Dx16x32_f32
	.quad	_encoding_0_encode_Dx32xf32_to_Dx32xf32
	.quad	_encoding_1_encode_32x16xf32_to_32x16xf32
	.quad	bias_relu_dispatch_0_elementwise_Dx16_f32
	.quad	row_sum_dispatch_0_reduction_Dx16_f32
	.quad	fragment_dispatch_1_reduction_Dx16_f32
	.size	iree_hal_executable_library_query_v0_funcs, 48

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	4
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	2
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	2
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	2
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	4
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 384

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"matmul_dispatch_0_matmul_Dx16x32_f32"
	.size	__unnamed_2, 37

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"_encoding_0_encode_Dx32xf32_to_Dx32xf32"
	.size	__unnamed_3, 40

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"_encoding_1_encode_32x16xf32_to_32x16xf32"
	.size	__unnamed_4, 42

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"bias_relu_dispatch_0_elementwise_Dx16_f32"
	.size	__unnamed_5, 42

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"row_sum_dispatch_0_reduction_Dx16_f32"
	.size	__unnamed_6, 38

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"fragment_dispatch_1_reduction_Dx16_f32"
	.size	__unnamed_7, 39

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.quad	__unnamed_3
	.quad	__unnamed_4
	.quad	__unnamed_5
	.quad	__unnamed_6
	.quad	__unnamed_7
	.size	iree_hal_executable_library_query_v0_names, 48

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module_matmul_dispatch_0.mlir"
	.size	__unnamed_8, 167

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module__encoding_0.mlir"
	.size	__unnamed_9, 161

	.type	__unnamed_10,@object
	.section	.rodata.__unnamed_10,"a",@progbits
__unnamed_10:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module__encoding_1.mlir"
	.size	__unnamed_10, 161

	.type	__unnamed_11,@object
	.section	.rodata.__unnamed_11,"a",@progbits
__unnamed_11:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module_bias_relu_dispatch_0.mlir"
	.size	__unnamed_11, 170

	.type	__unnamed_12,@object
	.section	.rodata.__unnamed_12,"a",@progbits
__unnamed_12:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module_row_sum_dispatch_0.mlir"
	.size	__unnamed_12, 168

	.type	__unnamed_13,@object
	.section	.rodata.__unnamed_13,"a",@progbits
__unnamed_13:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables/configured_module_fragment_dispatch_1.mlir"
	.size	__unnamed_13, 169

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	166
	.quad	__unnamed_8
	.long	3
	.long	160
	.quad	__unnamed_9
	.long	3
	.long	160
	.quad	__unnamed_10
	.long	3
	.long	169
	.quad	__unnamed_11
	.long	3
	.long	167
	.quad	__unnamed_12
	.long	3
	.long	168
	.quad	__unnamed_13
	.size	iree_hal_executable_library_query_v0_source_locations, 96

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names:
	.size	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names:
	.size	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names, 0

	.type	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_Dx16x32_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_names
	.quad	iree_hal_executable_library_query_v0__encoding_0_encode_Dx32xf32_to_Dx32xf32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_names
	.quad	iree_hal_executable_library_query_v0__encoding_1_encode_32x16xf32_to_32x16xf32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_bias_relu_dispatch_0_elementwise_Dx16_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_row_sum_dispatch_0_reduction_Dx16_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_fragment_dispatch_1_reduction_Dx16_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 144

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	6
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.type	__exp2f_data,@object
	.section	.rodata.__exp2f_data,"a",@progbits
	.p2align	3, 0x0
__exp2f_data:
	.quad	4607182418800017408
	.quad	4607140297302181236
	.quad	4607100335213349135
	.quad	4607062579818421073
	.quad	4607027079437701499
	.quad	4606993883449571754
	.quad	4606963042313658936
	.quad	4606934607594512097
	.quad	4606908631985796885
	.quad	4606885169335019979
	.quad	4606864274668794914
	.quad	4606846004218661165
	.quad	4606830415447468583
	.quad	4606817567076339586
	.quad	4606807519112221737
	.quad	4606800332876043653
	.quad	4606796071031487437
	.quad	4606794797614391156
	.quad	4606796578062795143
	.quad	4606801479247646227
	.quad	4606809569504174299
	.quad	4606820918663955941
	.quad	4606835598087680144
	.quad	4606853680698631517
	.quad	4606875241016906669
	.quad	4606900355194379847
	.quad	4606929101050434204
	.quad	4606961558108475497
	.quad	4606997807633245319
	.quad	4607037932668951391
	.quad	4607082018078232794
	.quad	4607130150581978432
	.quad	0x42e8000000000000
	.quad	0x3fac6af84b912394
	.quad	0x3fcebfce50fac4f3
	.quad	0x3fe62e42ff0c52d6
	.quad	0x4338000000000000
	.quad	0x40471547652b82fe
	.quad	0x3ebc6af84b912394
	.quad	0x3f2ebfce50fac4f3
	.quad	0x3f962e42ff0c52d6
	.size	__exp2f_data, 328

	.type	__powf_log2_data,@object
	.section	.rodata.__powf_log2_data,"a",@progbits
	.p2align	3, 0x0
__powf_log2_data:
	.quad	0x3ff661ec79f8f3be
	.quad	0xbfdefec65b963019
	.quad	0x3ff571ed4aaf883d
	.quad	0xbfdb0b6832d4fca4
	.quad	0x3ff49539f0f010b0
	.quad	0xbfd7418b0a1fb77b
	.quad	0x3ff3c995b0b80385
	.quad	0xbfd39de91a6dcf7b
	.quad	0x3ff30d190c8864a5
	.quad	0xbfd01d9bf3f2b631
	.quad	0x3ff25e227b0b8ea0
	.quad	0xbfc97c1d1b3b7af0
	.quad	0x3ff1bb4a4a1a343f
	.quad	0xbfc2f9e393af3c9f
	.quad	0x3ff12358f08ae5ba
	.quad	0xbfb960cbbf788d5c
	.quad	0x3ff0953f419900a7
	.quad	0xbfaa6f9db6475fce
	.quad	0x3ff0000000000000
	.quad	0x0000000000000000
	.quad	0x3fee608cfd9a47ac
	.quad	0x3fb338ca9f24f53d
	.quad	0x3feca4b31f026aa0
	.quad	0x3fc476a9543891ba
	.quad	0x3feb2036576afce6
	.quad	0x3fce840b4ac4e4d2
	.quad	0x3fe9c2d163a1aa2d
	.quad	0x3fd40645f0c6651c
	.quad	0x3fe886e6037841ed
	.quad	0x3fd88e9c2c1b9ff8
	.quad	0x3fe767dcf5534862
	.quad	0x3fdce0a44eb17bcc
	.quad	0x3fd27616c9496e0b
	.quad	0xbfd71969a075c67a
	.quad	0x3fdec70a6ca7badd
	.quad	0xbfe7154748bef6c8
	.quad	0x3ff71547652ab82b
	.size	__powf_log2_data, 296

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	16
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	86
	.long	.Linfo_string8
	.long	.Linfo_string8
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string9
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string3
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	86
	.long	.Linfo_string10
	.long	.Linfo_string10
	.byte	2
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string4
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	86
	.long	.Linfo_string11
	.long	.Linfo_string11
	.byte	3
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3
.Ldebug_info_start3:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string5
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	4
	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	86
	.long	.Linfo_string12
	.long	.Linfo_string12
	.byte	4
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end3:
.Lcu_begin4:
	.long	.Ldebug_info_end4-.Ldebug_info_start4
.Ldebug_info_start4:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string6
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	4
	.quad	.Lfunc_begin4
	.long	.Lfunc_end4-.Lfunc_begin4
	.byte	1
	.byte	86
	.long	.Linfo_string13
	.long	.Linfo_string13
	.byte	5
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end4:
.Lcu_begin5:
	.long	.Ldebug_info_end5-.Ldebug_info_start5
.Ldebug_info_start5:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string7
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	4
	.quad	.Lfunc_begin5
	.long	.Lfunc_end5-.Lfunc_begin5
	.byte	1
	.byte	86
	.long	.Linfo_string14
	.long	.Linfo_string14
	.byte	6
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end5:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_matmul_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/home/postedism/Desktop/compliers/B-tensor-lowering-qualification/evidence/local-20260906/artifacts/dynamic-tiled/executables"
.Linfo_string3:
	.asciz	"configured_module__encoding_0.mlir"
.Linfo_string4:
	.asciz	"configured_module__encoding_1.mlir"
.Linfo_string5:
	.asciz	"configured_module_bias_relu_dispatch_0.mlir"
.Linfo_string6:
	.asciz	"configured_module_row_sum_dispatch_0.mlir"
.Linfo_string7:
	.asciz	"configured_module_fragment_dispatch_1.mlir"
.Linfo_string8:
	.asciz	"matmul_dispatch_0_matmul_Dx16x32_f32"
.Linfo_string9:
	.asciz	"int"
.Linfo_string10:
	.asciz	"_encoding_0_encode_Dx32xf32_to_Dx32xf32"
.Linfo_string11:
	.asciz	"_encoding_1_encode_32x16xf32_to_32x16xf32"
.Linfo_string12:
	.asciz	"bias_relu_dispatch_0_elementwise_Dx16_f32"
.Linfo_string13:
	.asciz	"row_sum_dispatch_0_reduction_Dx16_f32"
.Linfo_string14:
	.asciz	"fragment_dispatch_1_reduction_Dx16_f32"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"matmul_dispatch_0_matmul_Dx16x32_f32"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	71
	.asciz	"int"
	.long	0
.LpubTypes_end0:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	42
	.asciz	"_encoding_0_encode_Dx32xf32_to_Dx32xf32"
	.long	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	42
	.asciz	"_encoding_1_encode_32x16xf32_to_32x16xf32"
	.long	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	0
.LpubTypes_end2:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end3-.LpubNames_start3
.LpubNames_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	42
	.asciz	"bias_relu_dispatch_0_elementwise_Dx16_f32"
	.long	0
.LpubNames_end3:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end3-.LpubTypes_start3
.LpubTypes_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	0
.LpubTypes_end3:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end4-.LpubNames_start4
.LpubNames_start4:
	.short	2
	.long	.Lcu_begin4
	.long	72
	.long	42
	.asciz	"row_sum_dispatch_0_reduction_Dx16_f32"
	.long	0
.LpubNames_end4:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end4-.LpubTypes_start4
.LpubTypes_start4:
	.short	2
	.long	.Lcu_begin4
	.long	72
	.long	0
.LpubTypes_end4:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end5-.LpubNames_start5
.LpubNames_start5:
	.short	2
	.long	.Lcu_begin5
	.long	72
	.long	42
	.asciz	"fragment_dispatch_1_reduction_Dx16_f32"
	.long	0
.LpubNames_end5:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end5-.LpubTypes_start5
.LpubTypes_start5:
	.short	2
	.long	.Lcu_begin5
	.long	72
	.long	0
.LpubTypes_end5:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
