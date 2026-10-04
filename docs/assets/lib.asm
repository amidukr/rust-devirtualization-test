	.intel_syntax noprefix
	.file	"devirtualization_test_lib.5e4c2ad99bd6f4b1-cgu.0"
	.section	.text._RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch,"ax",@progbits
	.globl	_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch
	.p2align	4
	.type	_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch,@function
_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch:
	.cfi_startproc
	mov	rax, rdx
	test	rcx, rcx
	je	.LBB0_4
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r13
	.cfi_def_cfa_offset 32
	push	r12
	.cfi_def_cfa_offset 40
	push	rbx
	.cfi_def_cfa_offset 48
	sub	rsp, 32
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -48
	.cfi_offset r12, -40
	.cfi_offset r13, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rcx
	mov	r14, rsi
	mov	r15, rdi
	lea	r12, [rsp + 16]
	lea	r13, [rsp + 8]
	.p2align	4
.LBB0_2:
	mov	qword ptr [rsp + 16], r15
	mov	qword ptr [rsp + 24], r14
	#APP
	#NO_APP
	mov	qword ptr [rsp + 8], rax
	#APP
	#NO_APP
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, qword ptr [rsp + 24]
	mov	rsi, qword ptr [rsp + 8]
	call	qword ptr [rax + 24]
	dec	rbx
	jne	.LBB0_2
	add	rsp, 32
	.cfi_def_cfa_offset 48
	pop	rbx
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r12
	.cfi_restore r13
	.cfi_restore r14
	.cfi_restore r15
.LBB0_4:
	ret
.Lfunc_end0:
	.size	_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch, .Lfunc_end0-_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch
	.cfi_endproc

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits
