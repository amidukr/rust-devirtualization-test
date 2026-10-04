	.intel_syntax noprefix
	.file	"devirtualization_test_main.bf5669205f1998ef-cgu.0"
	.section	.text._RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main,@function
_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	mov	rax, rdi
	test	rsi, rsi
	je	.LBB0_3
	lea	rcx, [rsp - 8]
	.p2align	4
.LBB0_2:
	mov	qword ptr [rsp - 8], rax
	#APP
	#NO_APP
	mov	rax, qword ptr [rsp - 8]
	inc	rax
	dec	rsi
	jne	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end0-_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main
	.cfi_endproc

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
.Lfunc_end1:
	.size	_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end1-_RINvNtCs9k3SxhrAWiO_3std2rt10lang_startuECsgqu5hhwAJIh_26devirtualization_test_main
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
	lea	rdx, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.7]
	mov	qword ptr [rsp + 8], rdx
	lea	rdx, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.1]
	xor	edi, edi
	mov	rsi, rax
	mov	r8, rdx
	xor	r9d, r9d
	call	qword ptr [rip + _RNvNtCsgxBkk5gSRhY_4core9panicking19assert_failed_inner@GOTPCREL]
.Lfunc_end2:
	.size	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end2-_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main
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
.Lfunc_end3:
	.size	_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end3-_RINvNtNtCs9k3SxhrAWiO_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECsgqu5hhwAJIh_26devirtualization_test_main
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
.Lfunc_end4:
	.size	_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end4-_RNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0Csgqu5hhwAJIh_26devirtualization_test_main
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
.Lfunc_end5:
	.size	_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end5-_RNSNvYNCINvNtCs9k3SxhrAWiO_3std2rt10lang_startuE0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_once6vtableCsgqu5hhwAJIh_26devirtualization_test_main
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
	sub	rsp, 40
	.cfi_def_cfa_offset 64
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	r14, rsi
	mov	rbx, rdi
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant3now@GOTPCREL]
	mov	qword ptr [rsp + 24], rax
	mov	dword ptr [rsp + 32], edx
	mov	qword ptr [rsp + 16], r14
	lea	rax, [rsp + 16]
	#APP
	#NO_APP
	mov	qword ptr [rsp + 8], 0
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	qword ptr [rsp], 1000000000
	mov	rax, rsp
	#APP
	#NO_APP
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp]
	call	_RINvCs85WuWpnC3RJ_25devirtualization_test_lib15static_dispatchNtB2_6AddOneECsgqu5hhwAJIh_26devirtualization_test_main
	mov	qword ptr [rsp], rax
	mov	rax, rsp
	#APP
	#NO_APP
	lea	rdi, [rsp + 24]
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant7elapsed@GOTPCREL]
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 8], edx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 16], rax
	add	rsp, 40
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end6:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static, .Lfunc_end6-_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static
	.cfi_endproc

	.section	.text._RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic,"ax",@progbits
	.p2align	4
	.type	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic,@function
_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic:
	.cfi_startproc
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	sub	rsp, 56
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	r14, rsi
	mov	rbx, rdi
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant3now@GOTPCREL]
	mov	qword ptr [rsp + 40], rax
	mov	dword ptr [rsp + 48], edx
	mov	qword ptr [rsp + 24], r14
	lea	rax, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.2]
	mov	qword ptr [rsp + 32], rax
	lea	rax, [rsp + 24]
	#APP
	#NO_APP
	mov	qword ptr [rsp + 16], 0
	lea	rax, [rsp + 16]
	#APP
	#NO_APP
	mov	qword ptr [rsp + 8], 1000000000
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	mov	rdi, qword ptr [rsp + 24]
	mov	rsi, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 8]
	call	qword ptr [rip + _RNvCs85WuWpnC3RJ_25devirtualization_test_lib16dynamic_dispatch@GOTPCREL]
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rsp + 8]
	#APP
	#NO_APP
	lea	rdi, [rsp + 40]
	call	qword ptr [rip + _RNvMNtCs9k3SxhrAWiO_3std4timeNtB2_7Instant7elapsed@GOTPCREL]
	mov	qword ptr [rbx], rax
	mov	dword ptr [rbx + 8], edx
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 16], rax
	add	rsp, 56
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end7:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic, .Lfunc_end7-_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_0:
	.quad	4294967295
	.quad	4294967295
.LCPI8_1:
	.quad	4841369599423283200
	.quad	4841369599423283200
.LCPI8_2:
	.quad	4985484787499139072
	.quad	4985484787499139072
.LCPI8_3:
	.quad	0x4530000000100000
	.quad	0x4530000000100000
.LCPI8_4:
	.quad	0x41cdcd6500000000
	.quad	0x41cdcd6500000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_5:
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
	sub	rsp, 136
	.cfi_def_cfa_offset 192
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
	mov	r14, qword ptr [rip + _RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6__print@GOTPCREL]
	lea	r12, [rsp + 16]
	mov	rsi, r12
	call	r14
	lea	rdi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.5]
	mov	esi, 3
	call	r14
	mov	r13d, 1
	.p2align	4
.LBB8_1:
	mov	qword ptr [rsp + 88], r13
	mov	rdi, r12
	lea	rbx, [rsp + 15]
	mov	rsi, rbx
	call	_RNvCsgqu5hhwAJIh_26devirtualization_test_main16benchmark_static
	mov	r14, qword ptr [rsp + 16]
	mov	r15d, dword ptr [rsp + 24]
	mov	rbp, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 96], rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	_RNvCsgqu5hhwAJIh_26devirtualization_test_main17benchmark_dynamic
	movdqa	xmm0, xmmword ptr [rsp + 16]
	mov	eax, dword ptr [rsp + 24]
	mov	rcx, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 104], rcx
	cmp	rbp, rcx
	jne	.LBB8_5
	lea	rbp, [r13 + 1]
	movq	xmm1, r14
	punpcklqdq	xmm0, xmm1
	movdqa	xmm1, xmm0
	pand	xmm1, xmmword ptr [rip + .LCPI8_0]
	por	xmm1, xmmword ptr [rip + .LCPI8_1]
	psrlq	xmm0, 32
	por	xmm0, xmmword ptr [rip + .LCPI8_2]
	subpd	xmm0, xmmword ptr [rip + .LCPI8_3]
	xorps	xmm2, xmm2
	cvtsi2sd	xmm2, r15d
	addpd	xmm0, xmm1
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	unpcklpd	xmm1, xmm2
	divpd	xmm1, xmmword ptr [rip + .LCPI8_4]
	addpd	xmm1, xmm0
	movapd	xmm0, xmm1
	unpckhpd	xmm0, xmm1
	movapd	xmm2, xmm1
	divsd	xmm1, xmm0
	movsd	xmm3, qword ptr [rip + .LCPI8_5]
	mulsd	xmm0, xmm3
	movsd	qword ptr [rsp + 112], xmm0
	mulsd	xmm2, xmm3
	movsd	qword ptr [rsp + 120], xmm2
	movsd	qword ptr [rsp + 128], xmm1
	lea	rax, [rsp + 88]
	mov	qword ptr [rsp + 16], rax
	mov	rax, qword ptr [rip + _RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt@GOTPCREL]
	mov	qword ptr [rsp + 24], rax
	lea	rax, [rsp + 112]
	mov	qword ptr [rsp + 32], rax
	mov	rax, qword ptr [rip + _RNvXs7_NtNtCsgxBkk5gSRhY_4core3fmt5floatdNtB7_7Display3fmt@GOTPCREL]
	mov	qword ptr [rsp + 40], rax
	lea	rcx, [rsp + 120]
	mov	qword ptr [rsp + 48], rcx
	mov	qword ptr [rsp + 56], rax
	lea	rcx, [rsp + 128]
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 72], rax
	lea	rdi, [rip + .Lanon.28ec369c4c5b3c2b396c0c8054611a41.8]
	mov	rsi, r12
	call	qword ptr [rip + _RNvNtNtCs9k3SxhrAWiO_3std2io5stdio6__print@GOTPCREL]
	cmp	r13, 5
	cmovne	r13, rbp
	je	.LBB8_4
	cmp	r13, 5
	jbe	.LBB8_1
.LBB8_4:
	add	rsp, 136
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
.LBB8_5:
	.cfi_def_cfa_offset 192
	lea	rdi, [rsp + 96]
	lea	rsi, [rsp + 104]
	call	_RINvNtCsgxBkk5gSRhY_4core9panicking13assert_failedxxECsgqu5hhwAJIh_26devirtualization_test_main
.Lfunc_end8:
	.size	_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main, .Lfunc_end8-_RNvCsgqu5hhwAJIh_26devirtualization_test_main4main
	.cfi_endproc

	.section	.text._RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply,"ax",@progbits
	.p2align	4
	.type	_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply,@function
_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply:
	.cfi_startproc
	lea	rax, [rsi + 1]
	ret
.Lfunc_end9:
	.size	_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply, .Lfunc_end9-_RNvXCs85WuWpnC3RJ_25devirtualization_test_libNtB2_6AddOneNtB2_9Operation5apply
	.cfi_endproc

	.section	.text._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main,"ax",@progbits
	.p2align	4
	.type	_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main,@function
_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main:
	.cfi_startproc
	mov	rdi, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 16]
	test	eax, 33554432
	jne	.LBB10_3
	test	eax, 67108864
	jne	.LBB10_2
	jmp	qword ptr [rip + _RNvXse_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impxNtB9_7Display3fmt@GOTPCREL]
.LBB10_3:
	jmp	qword ptr [rip + _RNvXsD_NtNtCsgxBkk5gSRhY_4core3fmt3numxNtB7_8LowerHex3fmt@GOTPCREL]
.LBB10_2:
	jmp	qword ptr [rip + _RNvXsF_NtNtCsgxBkk5gSRhY_4core3fmt3numxNtB7_8UpperHex3fmt@GOTPCREL]
.Lfunc_end10:
	.size	_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main, .Lfunc_end10-_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRxNtB6_5Debug3fmtCsgqu5hhwAJIh_26devirtualization_test_main
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
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
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
	.asciz	"\026\000\000\000\000\000\000\000.\000\000\000\t\000\000"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.7, 24

	.type	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8,@object
	.section	.rodata..Lanon.28ec369c4c5b3c2b396c0c8054611a41.8,"a",@progbits
.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8:
	.asciz	"\004run \300\013: static = \307 \000\000x\b\000\003\000\020 ms | dynamic = \307 \000\000x\b\000\003\000\027 ms | dynamic/static = \305 \000\000p\002\000\002x\n"
	.size	.Lanon.28ec369c4c5b3c2b396c0c8054611a41.8, 88

	.ident	"rustc version 1.98.1 (48a229cea 2026-09-01)"
	.section	".note.GNU-stack","",@progbits
