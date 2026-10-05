	.intel_syntax noprefix
	.file	"devirtualization_test_main.bf5669205f1998ef-cgu.0"
	.section	.text._RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.hidden	_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main
	.globl	_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main
	.p2align	4
	.type	_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main,@function
_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	qword ptr [rsp], rdi
	lea	rsi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.0]
	mov	rdi, rsp
	call	qword ptr [rip + _RNvNtCs9k3SxhrAWiO_3std2rt19lang_start_internal@GOTPCREL]
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end0:
	.size	_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end0-_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text.unlikely._RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.type	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main,@function
_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	lea	rax, [rsp + 24]
	mov	qword ptr [rax], rdi
	lea	rcx, [rsp + 32]
	mov	qword ptr [rcx], rsi
	mov	qword ptr [rsp + 8], rdx
	lea	rdx, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.1]
	xor	edi, edi
	mov	rsi, rax
	mov	r8, rdx
	xor	r9d, r9d
	call	qword ptr [rip + _RNvNtCsgxBkk5gSRhY_4core9panicking19assert_failed_inner@GOTPCREL]
.Lfunc_end1:
	.size	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end1-_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text._RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main,@function
_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	call	rdi
	#APP
	#NO_APP
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end2:
	.size	_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end2-_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text._RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main,@function
_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdi, qword ptr [rdi]
	call	_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main
	xor	eax, eax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end3:
	.size	_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end3-_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text._RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main,@function
_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdi, qword ptr [rdi]
	call	_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main
	xor	eax, eax
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end4:
	.size	_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end4-_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text._RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static,"ax",@progbits
	.p2align	4
	.type	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static,@function
_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 24
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant3now@GOTPCREL]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 16], edx
	mov	eax, 1000000000
	xor	r14d, r14d
	mov	rcx, rsp
	.p2align	4
.LBB5_1:
	mov	qword ptr [rsp], r14
	#APP
	#NO_APP
	mov	r14, qword ptr [rsp]
	inc	r14
	dec	rax
	jne	.LBB5_1
	lea	rdi, [rsp + 8]
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant7elapsed@GOTPCREL]
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 8], edx
	mov	qword ptr [rbx + 16], r14
	add	rsp, 24
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end5:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static, .Lfunc_end5-_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static
	.cfi_endproc

	.section	.text._RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic,"ax",@progbits
	.p2align	4
	.type	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic,@function
_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r14, rsi
	mov	rbx, rdi
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant3now@GOTPCREL]
	mov	qword ptr [rsp + 24], rax
	mov	dword ptr [rsp + 32], edx
	mov	r15d, 1000000000
	xor	eax, eax
	lea	r12, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.2]
	lea	r13, [rsp + 8]
	mov	rbp, rsp
	.p2align	4
.LBB6_1:
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 16], r12
	#APP
	#NO_APP
	mov	qword ptr [rsp], rax
	#APP
	#NO_APP
	mov	rdi, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp]
	call	qword ptr [rax + 24]
	dec	r15
	jne	.LBB6_1
	lea	rdi, [rsp + 24]
	mov	r14, rax
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant7elapsed@GOTPCREL]
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 8], edx
	mov	qword ptr [rbx + 16], r14
	add	rsp, 40
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end6:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic, .Lfunc_end6-_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_0:
	.quad	4294967295
	.quad	4294967295
.LCPI7_1:
	.quad	4841369599423283200
	.quad	4841369599423283200
.LCPI7_2:
	.quad	4985484787499139072
	.quad	4985484787499139072
.LCPI7_3:
	.quad	0x4530000000100000
	.quad	0x4530000000100000
.LCPI7_4:
	.long	1127219200
	.long	1160773632
	.long	0
	.long	0
.LCPI7_5:
	.quad	0x4330000000000000
	.quad	0x4530000000000000
.LCPI7_8:
	.quad	0x41cdcd6500000000
	.quad	0x41cdcd6500000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI7_6:
	.quad	0x41cdcd6500000000
.LCPI7_7:
	.quad	0x408f400000000000
	.section	.text._RNvCsgqu5hhwAJIh_26devirtualization_test_main4main,"ax",@progbits
	.hidden	_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main
	.globl	_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main
	.p2align	4
	.type	_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main,@function
_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 184
	.cfi_def_cfa_offset 240
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	lea	rax, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.3]
	mov	qword ptr [rsp + 16], rax
	mov	rax, qword ptr [rip + _RNvXsd_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impyNtB9_7Display3fmt@GOTPCREL]
	mov	qword ptr [rsp + 24], rax
	lea	rdi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.4]
	mov	rbx, qword ptr [rip + _RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6__print@GOTPCREL]
	lea	rsi, [rsp + 16]
	call	rbx
	lea	rdi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.5]
	mov	esi, 3
	call	rbx
	mov	eax, 1
	.p2align	4
.LBB7_1:
	lea	r13, [rax + 1]
	cmp	rax, 5
	cmove	r13, rax
	mov	qword ptr [rsp + 96], rax
	mov	qword ptr [rsp + 104], rax
	lea	r14, [rsp + 16]
	mov	rdi, r14
	call	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static
	mov	rbx, qword ptr [rsp + 16]
	mov	r15d, dword ptr [rsp + 24]
	mov	rbp, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 8], rbp
	mov	rdi, r14
	lea	rsi, [rsp + 7]
	call	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic
	movaps	xmm0, xmmword ptr [rsp + 16]
	movaps	xmmword ptr [rsp + 160], xmm0
	mov	r12d, dword ptr [rsp + 24]
	mov	r14, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 112], r14
	lea	rdi, [rsp + 16]
	call	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static
	mov	rcx, qword ptr [rsp + 16]
	mov	eax, dword ptr [rsp + 24]
	mov	rdx, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 120], rdx
	cmp	rbp, r14
	jne	.LBB7_6
	cmp	rbp, rdx
	jne	.LBB7_7
	movq	xmm0, rbx
	movdqa	xmm4, xmmword ptr [rsp + 160]
	punpcklqdq	xmm4, xmm0
	movdqa	xmm0, xmm4
	pand	xmm0, xmmword ptr [rip + .LCPI7_0]
	por	xmm0, xmmword ptr [rip + .LCPI7_1]
	psrlq	xmm4, 32
	por	xmm4, xmmword ptr [rip + .LCPI7_2]
	subpd	xmm4, xmmword ptr [rip + .LCPI7_3]
	addpd	xmm4, xmm0
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, r15d
	movq	xmm1, rcx
	punpckldq	xmm1, xmmword ptr [rip + .LCPI7_4]
	subpd	xmm1, xmmword ptr [rip + .LCPI7_5]
	movapd	xmm2, xmm1
	unpckhpd	xmm2, xmm1
	addsd	xmm2, xmm1
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm1, qword ptr [rip + .LCPI7_6]
	addsd	xmm1, xmm2
	movsd	xmm3, qword ptr [rip + .LCPI7_7]
	mulsd	xmm1, xmm3
	xorps	xmm2, xmm2
	cvtsi2sd	xmm2, r12d
	movsd	qword ptr [rsp + 136], xmm1
	unpcklpd	xmm2, xmm0
	divpd	xmm2, xmmword ptr [rip + .LCPI7_8]
	addpd	xmm2, xmm4
	movapd	xmm0, xmm2
	unpckhpd	xmm0, xmm2
	movapd	xmm1, xmm2
	divsd	xmm2, xmm0
	mulsd	xmm0, xmm3
	movsd	qword ptr [rsp + 128], xmm0
	mulsd	xmm1, xmm3
	movsd	qword ptr [rsp + 144], xmm1
	movsd	qword ptr [rsp + 152], xmm2
	lea	rax, [rsp + 104]
	mov	qword ptr [rsp + 16], rax
	mov	rax, qword ptr [rip + _RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt@GOTPCREL]
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rsp + 128]
	mov	qword ptr [rsp + 32], rax
	mov	rax, qword ptr [rip + _RNvXs7_NtNtCsgxBkk5gSRhY_4core3fmt5floatdNtB7_7Display3fmt@GOTPCREL]
	mov	qword ptr [rsp + 40], rax
	lea	rcx, [rsp + 136]
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 56], rax
	lea	rcx, [rsp + 144]
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 72], rax
	lea	rcx, [rsp + 152]
	mov	qword ptr [rsp + 80], rcx
	mov	qword ptr [rsp + 88], rax
	lea	rdi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.9]
	lea	rsi, [rsp + 16]
	call	qword ptr [rip + _RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6__print@GOTPCREL]
	cmp	qword ptr [rsp + 96], 5
	je	.LBB7_5
	mov	rax, r13
	cmp	r13, 5
	jbe	.LBB7_1
.LBB7_5:
	add	rsp, 184
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB7_6:
	.cfi_def_cfa_offset 240
	lea	rdx, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.7]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 112]
	call	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main
.LBB7_7:
	lea	rdx, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.8]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 120]
	call	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main
.Lfunc_end7:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main, .Lfunc_end7-_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main
	.cfi_endproc

	.section	.text._RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply,"ax",@progbits
	.p2align	4
	.type	_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply,@function
_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply:
	.cfi_startproc
	lea	rax, [rsi + 1]
	ret
.Lfunc_end8:
	.size	_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply, .Lfunc_end8-_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply
	.cfi_endproc

	.section	.text._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main,@function
_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	mov	rdi, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 16]
	test	eax, 33554432
	jne	.LBB9_3
	test	eax, 67108864
	jne	.LBB9_2
	jmp	qword ptr [rip + _RNvXse_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impxNtB9_7Display3fmt@GOTPCREL]
.LBB9_3:
	jmp	qword ptr [rip + _RNvXsD_NtNtCsgxBkk5gSRhY_4core3fmt3numxNtB7_8LowerHex3fmt@GOTPCREL]
.LBB9_2:
	jmp	qword ptr [rip + _RNvXsF_NtNtCsgxBkk5gSRhY_4core3fmt3numxNtB7_8UpperHex3fmt@GOTPCREL]
.Lfunc_end9:
	.size	_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end9-_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	push	rax
	.cfi_def_cfa_offset 16
	mov	rcx, rsi
	movsxd	rdx, edi
	lea	rax, [rip + _RNvCsgqu5hhwAJIh_26devirtualization_test_main4main]
	mov	qword ptr [rsp], rax
	lea	rsi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.0]
	mov	rdi, rsp
	xor	r8d, r8d
	call	qword ptr [rip + _RNvNtCs9k3SxhrAWiO_3std2rt19lang_start_internal@GOTPCREL]
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.0,@object
	.section	.data.rel.ro..Lanon.28ec369c4c5b3c2b396c0c8054611a41.0,"aw",@progbits
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main
	.quad	_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main
	.quad	_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.0, 48

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.1,@object
	.section	.data.rel.ro..Lanon.28ec369c4c5b3c2b396c0c8054611a41.1,"aw",@progbits
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.1:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.1, 32

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.2,@object
	.section	.data.rel.ro..Lanon.28ec369c4c5b3c2b396c0c8054611a41.2,"aw",@progbits
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.2:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000"
	.quad	_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.2, 32

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.3,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.3:
	.asciz	"\000\312\232;\000\000\000"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.3, 8

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.4,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.4:
	.asciz	"\fIterations: \300\001\n"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.4, 17

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.5,@object
	.section	.rodata..Lanon.28ec369c4c5b3c2b396c0c8054611a41.5,"a",@progbits
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.5:
	.byte	10
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.5, 1

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.6,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.6:
	.asciz	"main-crate/src/main.rs"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.6, 23

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.7,@object
	.section	.data.rel.ro..Lanon.28ec369c4c5b3c2b396c0c8054611a41.7,"aw",@progbits
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.7:
	.quad	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.6
	.asciz	"\026\000\000\000\000\000\000\0000\000\000\000\t\000\000"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.7, 24

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8,@object
	.section	.data.rel.ro..Lanon.28ec369c4c5b3c2b396c0c8054611a41.8,"aw",@progbits
	.p2align	3, 0x0
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8:
	.quad	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.6
	.asciz	"\026\000\000\000\000\000\000\0001\000\000\000\t\000\000"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8, 24

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.9,@object
	.section	.rodata..Lanon.28ec369c4c5b3c2b396c0c8054611a41.9,"a",@progbits
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.9:
	.asciz	"\004run \300\013: static = \307 \000\000x\b\000\003\000\017 ms | devirt = \307 \000\000x\b\000\003\000\r | dynamic = \307 \000\000x\b\000\003\000\027 ms | dynamic/static = \305 \000\000p\002\000\002x\n"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.9, 110

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits
