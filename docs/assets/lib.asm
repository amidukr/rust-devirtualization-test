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
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rcx
	mov	r14, rdi
	mov	r15, qword ptr [rsi + 24]
	.p2align	4
.LBB0_2:
	mov	rdi, r14
	mov	rsi, rax
	call	r15
	dec	rbx
	jne	.LBB0_2
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	.cfi_restore rbx
	.cfi_restore r14
	.cfi_restore r15
.LBB0_4:
	ret
.Lfunc_end0:
	.size	_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch, .Lfunc_end0-_RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch
	.cfi_endproc

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits
