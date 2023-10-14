	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #336
	.cfi_def_cfa_offset 336
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #256]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #288]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	w21, #0
	mov	w19, #0
	add	x8, sp, #64
	add	x8, x8, #8
	str	x8, [sp]                        ; 8-byte Folded Spill
Lloh0:
	adrp	x24, __ZNSt3__14coutE@GOTPAGE
Lloh1:
	ldr	x24, [x24, __ZNSt3__14coutE@GOTPAGEOFF]
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
                                        ;       Child Loop BB0_10 Depth 3
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	x22, x0
Lloh2:
	adrp	x0, l_.str.3@PAGE
Lloh3:
	add	x0, x0, l_.str.3@PAGEOFF
	mov	w1, #0
	bl	_open
	mov	x28, x0
	add	x1, sp, #88
	bl	_fstat
	cbz	w0, LBB0_5
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
Lloh4:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh5:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh6:
	adrp	x1, l_.str.10@PAGE
Lloh7:
	add	x1, x1, l_.str.10@PAGEOFF
	mov	w2, #31
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x20, x0
	bl	___error
	ldr	w0, [x0]
	bl	_strerror
	mov	x23, x0
	bl	_strlen
	mov	x2, x0
	mov	x0, x20
	mov	x1, x23
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #64
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	add	x0, sp, #64
Lloh8:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh9:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp2:
	mov	w1, #10
	blr	x8
Ltmp3:
; %bb.4:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	add	x0, sp, #64
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x20
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	x22, [sp, #8]                   ; 8-byte Folded Spill
	mov	x22, x24
	ldr	x1, [sp, #184]
	mov	x0, #0
	mov	w2, #1
	mov	w3, #2
	mov	x4, x28
	mov	x5, #0
	bl	_mmap
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	stp	xzr, xzr, [x8]
	str	x8, [sp, #64]
	ldr	x24, [sp, #184]
	cmp	x24, #1
	b.lt	LBB0_32
; %bb.6:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	x20, x0
	mov	x8, #0
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_8 Depth=2
	add	x20, x27, #1
	add	x8, x24, #1
	ldr	x24, [sp, #184]
	cmp	x8, x24
	b.ge	LBB0_32
LBB0_8:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_10 Depth 3
	subs	x11, x24, x8
	b.le	LBB0_42
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	mov	x10, #0
	sub	w9, w24, w8
	add	x27, x20, x11
	sub	x11, x8, x24
LBB0_10:                                ;   Parent Loop BB0_1 Depth=1
                                        ;     Parent Loop BB0_8 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldrb	w12, [x20, x10]
	cmp	w12, #10
	b.eq	LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=3
	add	x10, x10, #1
	cmn	x11, x10
	b.ne	LBB0_10
	b	LBB0_13
LBB0_12:                                ;   in Loop: Header=BB0_8 Depth=2
	add	x27, x20, x10
	add	x24, x8, x10
	mov	x9, x10
LBB0_13:                                ;   in Loop: Header=BB0_8 Depth=2
	cbz	w9, LBB0_42
; %bb.14:                               ;   in Loop: Header=BB0_8 Depth=2
	sxtw	x8, w9
	sub	x23, x8, #1
	cmp	w23, #23
	b.hs	LBB0_18
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	add	x25, sp, #40
	strb	w23, [sp, #63]
	cbnz	w23, LBB0_20
; %bb.16:                               ;   in Loop: Header=BB0_8 Depth=2
	strb	wzr, [x25, x23]
	ldrsb	w25, [sp, #63]
	tbnz	w25, #31, LBB0_21
LBB0_17:                                ;   in Loop: Header=BB0_8 Depth=2
	ldur	q0, [sp, #40]
	str	q0, [sp, #16]
	ldr	x8, [sp, #56]
	str	x8, [sp, #32]
	b	LBB0_27
LBB0_18:                                ;   in Loop: Header=BB0_8 Depth=2
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
Ltmp5:
	mov	x0, x26
	bl	__Znwm
Ltmp6:
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #48]
	str	x0, [sp, #40]
LBB0_20:                                ;   in Loop: Header=BB0_8 Depth=2
	mov	x0, x25
	mov	x1, x20
	mov	x2, x23
	bl	_memmove
	strb	wzr, [x25, x23]
	ldrsb	w25, [sp, #63]
	tbz	w25, #31, LBB0_17
LBB0_21:                                ;   in Loop: Header=BB0_8 Depth=2
	ldp	x20, x26, [sp, #40]
	cmp	x26, #22
	b.hi	LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_8 Depth=2
	add	x0, sp, #16
	strb	w26, [sp, #39]
	b	LBB0_26
LBB0_23:                                ;   in Loop: Header=BB0_8 Depth=2
	mov	x8, #9223372036854775792
	cmp	x26, x8
	b.hs	LBB0_43
; %bb.24:                               ;   in Loop: Header=BB0_8 Depth=2
	add	x8, x26, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp8:
	mov	x0, x23
	bl	__Znwm
Ltmp9:
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	orr	x8, x23, #0x8000000000000000
	stp	x26, x8, [sp, #24]
	str	x0, [sp, #16]
LBB0_26:                                ;   in Loop: Header=BB0_8 Depth=2
	add	x2, x26, #1
	mov	x1, x20
	bl	_memmove
LBB0_27:                                ;   in Loop: Header=BB0_8 Depth=2
Ltmp14:
	add	x0, sp, #64
	add	x1, sp, #16
	bl	__ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp15:
; %bb.28:                               ;   in Loop: Header=BB0_8 Depth=2
	ldrsb	w8, [sp, #39]
	tbnz	w8, #31, LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_8 Depth=2
	tbz	w25, #31, LBB0_7
	b	LBB0_31
LBB0_30:                                ;   in Loop: Header=BB0_8 Depth=2
	ldr	x0, [sp, #16]
	bl	__ZdlPv
	tbz	w25, #31, LBB0_7
LBB0_31:                                ;   in Loop: Header=BB0_8 Depth=2
	ldr	x0, [sp, #40]
	bl	__ZdlPv
	b	LBB0_7
LBB0_32:                                ;   in Loop: Header=BB0_1 Depth=1
Ltmp17:
	mov	x0, x28
	bl	_close
Ltmp18:
; %bb.33:                               ;   in Loop: Header=BB0_1 Depth=1
Ltmp19:
	add	x0, sp, #64
	bl	__ZN9Processor13computeResultEv
Ltmp20:
; %bb.34:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	ldr	x1, [sp, #72]
	add	x0, sp, #64
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	x20, x0
	mov	x24, x22
	mov	x0, x22
Lloh10:
	adrp	x22, l_.str.4@PAGE
Lloh11:
	add	x22, x22, l_.str.4@PAGEOFF
	mov	x1, x22
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh12:
	adrp	x1, l_.str.5@PAGE
Lloh13:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #7
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl
	mov	x28, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp22:
	add	x0, sp, #88
Lloh14:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh15:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp23:
; %bb.35:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp24:
	mov	w1, #10
	blr	x8
Ltmp25:
; %bb.36:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	mov	x8, #2097
	movk	x8, #7340, lsl #16
	movk	x8, #25690, lsl #32
	movk	x8, #57147, lsl #48
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	smulh	x8, x9, x8
	asr	x9, x8, #7
	add	x8, x9, x8, lsr #63
	mov	x9, #63439
	movk	x9, #58195, lsl #16
	movk	x9, #39845, lsl #32
	movk	x9, #8388, lsl #48
	smulh	x9, x20, x9
	asr	x10, x9, #7
	add	x9, x10, x9, lsr #63
	add	x20, x9, x8
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x28
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	x0, x24
	mov	x1, x22
	mov	w2, #4
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Lloh16:
	adrp	x1, l_.str.6@PAGE
Lloh17:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #15
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Lloh18:
	adrp	x1, l_.str.7@PAGE
Lloh19:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x27, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp27:
	add	x0, sp, #88
Lloh20:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh21:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp28:
; %bb.37:                               ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp29:
	mov	w1, #10
	blr	x8
Ltmp30:
; %bb.38:                               ;   in Loop: Header=BB0_1 Depth=1
	mov	x23, x0
	add	w21, w21, w20
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x27
	mov	x1, x23
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x27
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	add	w19, w19, #1
	cmp	w19, #3
	b.ne	LBB0_1
; %bb.39:
Lloh22:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh23:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh24:
	adrp	x1, l_.str.8@PAGE
Lloh25:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #12
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	scvtf	d0, w21
	fmov	d1, #3.00000000
	fdiv	d0, d0, d1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh26:
	adrp	x1, l_.str.7@PAGE
Lloh27:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #88
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp32:
Lloh28:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh29:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #88
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp33:
; %bb.40:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp34:
	mov	w1, #10
	blr	x8
Ltmp35:
; %bb.41:
	mov	x20, x0
	add	x0, sp, #88
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	w0, #0
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #304]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #288]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB0_42:
Ltmp37:
	add	x0, sp, #40
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp38:
	b	LBB0_44
LBB0_43:
Ltmp11:
	add	x0, sp, #16
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp12:
LBB0_44:
	brk	#0x1
LBB0_45:
Ltmp36:
	b	LBB0_50
LBB0_46:
Ltmp4:
	mov	x19, x0
	add	x0, sp, #64
	b	LBB0_51
LBB0_47:
Ltmp21:
	b	LBB0_62
LBB0_48:
Ltmp26:
	b	LBB0_50
LBB0_49:
Ltmp31:
LBB0_50:
	mov	x19, x0
	add	x0, sp, #88
LBB0_51:
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_52:
Ltmp13:
	mov	x19, x0
	b	LBB0_60
LBB0_53:
Ltmp10:
	mov	x19, x0
	b	LBB0_60
LBB0_54:
Ltmp7:
	b	LBB0_62
LBB0_55:
Ltmp16:
	mov	x19, x0
	ldrsb	w8, [sp, #39]
	tbnz	w8, #31, LBB0_58
; %bb.56:
	tbnz	w25, #31, LBB0_59
LBB0_57:
	ldr	x1, [sp, #72]
	add	x0, sp, #64
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_58:
	ldr	x0, [sp, #16]
	bl	__ZdlPv
	tbz	w25, #31, LBB0_57
LBB0_59:
	ldr	x20, [sp, #40]
LBB0_60:
	mov	x0, x20
	bl	__ZdlPv
	ldr	x1, [sp, #72]
	add	x0, sp, #64
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_61:
Ltmp39:
LBB0_62:
	mov	x19, x0
	ldr	x1, [sp, #72]
	add	x0, sp, #64
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh0, Lloh1
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh28, Lloh29
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpLdrGot	Lloh22, Lloh23
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp5-Ltmp3                    ;   Call between Ltmp3 and Ltmp5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0             ;     jumps to Ltmp7
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp8-Ltmp6                    ;   Call between Ltmp6 and Ltmp8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Ltmp9-Ltmp8                    ;   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 7 <<
	.uleb128 Ltmp14-Ltmp9                   ;   Call between Ltmp9 and Ltmp14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp20-Ltmp17                  ;   Call between Ltmp17 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp22-Ltmp20                  ;   Call between Ltmp20 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp25-Ltmp22                  ;   Call between Ltmp22 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp27-Ltmp25                  ;   Call between Ltmp25 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp30-Ltmp27                  ;   Call between Ltmp27 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp32-Ltmp30                  ;   Call between Ltmp30 and Ltmp32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp35-Ltmp32                  ;   Call between Ltmp32 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp37-Ltmp35                  ;   Call between Ltmp35 and Ltmp37
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin0            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin0            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Lfunc_end0-Ltmp12              ;   Call between Ltmp12 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh30:
	adrp	x0, l_.str.9@PAGE
Lloh31:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh30, Lloh31
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB6v15006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB6v15006EPKc
	.globl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB6v15006EPKc: ; @_ZNSt3__120__throw_length_errorB6v15006EPKc
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp40:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B6v15006EPKc
Ltmp41:
; %bb.1:
Lloh32:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh33:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh34:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh35:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB2_2:
Ltmp42:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh32, Lloh33
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp40-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp40
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin1            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp41              ;   Call between Ltmp41 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B6v15006EPKc ; -- Begin function _ZNSt12length_errorC1B6v15006EPKc
	.globl	__ZNSt12length_errorC1B6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B6v15006EPKc
	.p2align	2
__ZNSt12length_errorC1B6v15006EPKc:     ; @_ZNSt12length_errorC1B6v15006EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh36:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh37:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh36, Lloh37
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB6v15006v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB6v15006v
	.globl	__ZSt28__throw_bad_array_new_lengthB6v15006v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB6v15006v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB6v15006v: ; @_ZSt28__throw_bad_array_new_lengthB6v15006v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh38:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh39:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh40:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh41:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh40, Lloh41
	.loh AdrpLdrGot	Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.globl	__ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE ; -- Begin function _ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	2
__ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ; @_ZN9Processor7addLineENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #256
	.cfi_def_cfa_offset 256
	stp	x28, x27, [sp, #160]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #176]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #224]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #240]            ; 16-byte Folded Spill
	add	x29, sp, #240
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x1
	mov	x25, x0
	mov	x23, x0
	ldr	x24, [x23, #8]!
	cbz	x24, LBB6_65
; %bb.1:
	str	x25, [sp, #8]                   ; 8-byte Folded Spill
	mov	x25, #-17
	movk	x25, #32767, lsl #48
	sub	x26, x29, #112
	orr	x9, x26, #0x1
	add	x8, sp, #64
	orr	x8, x8, #0x1
	stp	x8, x9, [sp, #16]               ; 16-byte Folded Spill
	b	LBB6_3
LBB6_2:                                 ;   in Loop: Header=BB6_3 Depth=1
	mov	x24, x8
LBB6_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_22 Depth 2
                                        ;     Child Loop BB6_53 Depth 2
	ldrsb	w8, [x20, #23]
	tbnz	w8, #31, LBB6_6
; %bb.4:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	q0, [x20]
	stur	q0, [x29, #-112]
	ldr	x8, [x20, #16]
	stur	x8, [x29, #-96]
	add	x28, x24, #32
	ldrsb	w8, [x24, #55]
	tbnz	w8, #31, LBB6_11
LBB6_5:                                 ;   in Loop: Header=BB6_3 Depth=1
	ldr	q0, [x28]
	str	q0, [sp, #96]
	ldr	x8, [x28, #16]
	str	x8, [sp, #112]
	b	LBB6_17
LBB6_6:                                 ;   in Loop: Header=BB6_3 Depth=1
	ldp	x21, x19, [x20]
	cmp	x19, #22
	b.hi	LBB6_8
; %bb.7:                                ;   in Loop: Header=BB6_3 Depth=1
	sub	x0, x29, #112
	sturb	w19, [x29, #-89]
	b	LBB6_10
LBB6_8:                                 ;   in Loop: Header=BB6_3 Depth=1
	cmp	x19, x25
	b.hi	LBB6_79
; %bb.9:                                ;   in Loop: Header=BB6_3 Depth=1
	add	x8, x19, #16
	and	x22, x8, #0xfffffffffffffff0
	mov	x0, x22
	bl	__Znwm
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [x29, #-104]
	stur	x0, [x29, #-112]
LBB6_10:                                ;   in Loop: Header=BB6_3 Depth=1
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
	add	x28, x24, #32
	ldrsb	w8, [x24, #55]
	tbz	w8, #31, LBB6_5
LBB6_11:                                ;   in Loop: Header=BB6_3 Depth=1
	ldp	x21, x19, [x24, #32]
	cmp	x19, #22
	b.hi	LBB6_13
; %bb.12:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x0, sp, #96
	strb	w19, [sp, #119]
	b	LBB6_16
LBB6_13:                                ;   in Loop: Header=BB6_3 Depth=1
	cmp	x19, x25
	b.hi	LBB6_80
; %bb.14:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x8, x19, #16
	and	x22, x8, #0xfffffffffffffff0
Ltmp43:
	mov	x0, x22
	bl	__Znwm
Ltmp44:
; %bb.15:                               ;   in Loop: Header=BB6_3 Depth=1
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #104]
	str	x0, [sp, #96]
LBB6_16:                                ;   in Loop: Header=BB6_3 Depth=1
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
LBB6_17:                                ;   in Loop: Header=BB6_3 Depth=1
	ldurb	w27, [x29, #-89]
	sxtb	w8, w27
	ldur	x21, [x29, #-104]
	cmp	w8, #0
	csel	x2, x21, x27, lt
	ldrb	w8, [sp, #119]
	sxtb	w22, w8
	ldr	x9, [sp, #104]
	cmp	w22, #0
	csel	x19, x9, x8, lt
	cmp	x2, x19
	b.ne	LBB6_24
; %bb.18:                               ;   in Loop: Header=BB6_3 Depth=1
	sxtb	w9, w27
	ldur	x8, [x29, #-112]
	cmp	w9, #0
	csel	x0, x8, x26, lt
	ldr	x9, [sp, #96]
	cmp	w22, #0
	add	x10, sp, #96
	csel	x1, x9, x10, lt
	tbnz	w27, #7, LBB6_30
; %bb.19:                               ;   in Loop: Header=BB6_3 Depth=1
	cbz	x2, LBB6_32
; %bb.20:                               ;   in Loop: Header=BB6_3 Depth=1
	ldrb	w9, [x1]
	cmp	w9, w8, uxtb
	mov	x21, x27
	b.ne	LBB6_25
; %bb.21:                               ;   in Loop: Header=BB6_3 Depth=1
	sub	x8, x27, #1
	add	x9, x1, #1
	ldr	x10, [sp, #24]                  ; 8-byte Folded Reload
LBB6_22:                                ;   Parent Loop BB6_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x8, LBB6_32
; %bb.23:                               ;   in Loop: Header=BB6_22 Depth=2
	ldrb	w11, [x10], #1
	ldrb	w12, [x9], #1
	sub	x8, x8, #1
	cmp	w11, w12
	b.eq	LBB6_22
LBB6_24:                                ;   in Loop: Header=BB6_3 Depth=1
	mov	x21, x2
LBB6_25:                                ;   in Loop: Header=BB6_3 Depth=1
	cmp	x21, x19
	cset	w19, hs
	tbnz	w22, #31, LBB6_33
LBB6_26:                                ;   in Loop: Header=BB6_3 Depth=1
	tbnz	w27, #7, LBB6_34
LBB6_27:                                ;   in Loop: Header=BB6_3 Depth=1
	cbz	w19, LBB6_35
LBB6_28:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	x8, [x24]
	cbz	x8, LBB6_66
; %bb.29:                               ;   in Loop: Header=BB6_3 Depth=1
	mov	x23, x24
	b	LBB6_2
LBB6_30:                                ;   in Loop: Header=BB6_3 Depth=1
	cbz	x2, LBB6_32
; %bb.31:                               ;   in Loop: Header=BB6_3 Depth=1
	bl	_memcmp
	cbnz	w0, LBB6_25
LBB6_32:                                ;   in Loop: Header=BB6_3 Depth=1
	mov	w19, #0
	tbz	w22, #31, LBB6_26
LBB6_33:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	tbz	w27, #7, LBB6_27
LBB6_34:                                ;   in Loop: Header=BB6_3 Depth=1
	ldur	x0, [x29, #-112]
	bl	__ZdlPv
	cbnz	w19, LBB6_28
LBB6_35:                                ;   in Loop: Header=BB6_3 Depth=1
	ldrsb	w8, [x28, #23]
	tbnz	w8, #31, LBB6_38
; %bb.36:                               ;   in Loop: Header=BB6_3 Depth=1
	ldr	q0, [x28]
	str	q0, [sp, #64]
	ldr	x8, [x28, #16]
	str	x8, [sp, #80]
	ldrsb	w8, [x20, #23]
	tbnz	w8, #31, LBB6_42
LBB6_37:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	q0, [x20]
	str	q0, [sp, #32]
	ldr	x8, [x20, #16]
	str	x8, [sp, #48]
	b	LBB6_48
LBB6_38:                                ;   in Loop: Header=BB6_3 Depth=1
	ldp	x21, x19, [x24, #32]
	cmp	x19, #22
	b.hi	LBB6_40
; %bb.39:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x0, sp, #64
	strb	w19, [sp, #87]
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
	ldrsb	w8, [x20, #23]
	tbz	w8, #31, LBB6_37
	b	LBB6_42
LBB6_40:                                ;   in Loop: Header=BB6_3 Depth=1
	cmp	x19, x25
	b.hi	LBB6_81
; %bb.41:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x8, x19, #16
	and	x22, x8, #0xfffffffffffffff0
	mov	x0, x22
	bl	__Znwm
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #72]
	str	x0, [sp, #64]
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
	ldrsb	w8, [x20, #23]
	tbz	w8, #31, LBB6_37
LBB6_42:                                ;   in Loop: Header=BB6_3 Depth=1
	ldp	x21, x19, [x20]
	cmp	x19, #22
	b.hi	LBB6_44
; %bb.43:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x0, sp, #32
	strb	w19, [sp, #55]
	b	LBB6_47
LBB6_44:                                ;   in Loop: Header=BB6_3 Depth=1
	cmp	x19, x25
	b.hi	LBB6_82
; %bb.45:                               ;   in Loop: Header=BB6_3 Depth=1
	add	x8, x19, #16
	and	x22, x8, #0xfffffffffffffff0
Ltmp49:
	mov	x0, x22
	bl	__Znwm
Ltmp50:
; %bb.46:                               ;   in Loop: Header=BB6_3 Depth=1
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #40]
	str	x0, [sp, #32]
LBB6_47:                                ;   in Loop: Header=BB6_3 Depth=1
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
LBB6_48:                                ;   in Loop: Header=BB6_3 Depth=1
	ldrb	w21, [sp, #87]
	sxtb	w8, w21
	ldr	x27, [sp, #72]
	cmp	w8, #0
	csel	x2, x27, x21, lt
	ldrb	w8, [sp, #55]
	sxtb	w22, w8
	ldr	x9, [sp, #40]
	cmp	w22, #0
	csel	x19, x9, x8, lt
	cmp	x2, x19
	b.ne	LBB6_55
; %bb.49:                               ;   in Loop: Header=BB6_3 Depth=1
	sxtb	w9, w21
	ldr	x8, [sp, #64]
	cmp	w9, #0
	add	x9, sp, #64
	csel	x0, x8, x9, lt
	ldr	x9, [sp, #32]
	cmp	w22, #0
	add	x10, sp, #32
	csel	x1, x9, x10, lt
	tbnz	w21, #7, LBB6_59
; %bb.50:                               ;   in Loop: Header=BB6_3 Depth=1
	cbz	x2, LBB6_61
; %bb.51:                               ;   in Loop: Header=BB6_3 Depth=1
	ldrb	w9, [x1]
	cmp	w9, w8, uxtb
	mov	x27, x21
	b.ne	LBB6_56
; %bb.52:                               ;   in Loop: Header=BB6_3 Depth=1
	sub	x8, x21, #1
	add	x9, x1, #1
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
LBB6_53:                                ;   Parent Loop BB6_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cbz	x8, LBB6_61
; %bb.54:                               ;   in Loop: Header=BB6_53 Depth=2
	ldrb	w11, [x10], #1
	ldrb	w12, [x9], #1
	sub	x8, x8, #1
	cmp	w11, w12
	b.eq	LBB6_53
LBB6_55:                                ;   in Loop: Header=BB6_3 Depth=1
	mov	x27, x2
LBB6_56:                                ;   in Loop: Header=BB6_3 Depth=1
	cmp	x27, x19
	cset	w19, hs
	tbnz	w22, #31, LBB6_62
LBB6_57:                                ;   in Loop: Header=BB6_3 Depth=1
	tbnz	w21, #7, LBB6_63
LBB6_58:                                ;   in Loop: Header=BB6_3 Depth=1
	cbnz	w19, LBB6_64
	b	LBB6_67
LBB6_59:                                ;   in Loop: Header=BB6_3 Depth=1
	cbz	x2, LBB6_61
; %bb.60:                               ;   in Loop: Header=BB6_3 Depth=1
	bl	_memcmp
	cbnz	w0, LBB6_56
LBB6_61:                                ;   in Loop: Header=BB6_3 Depth=1
	mov	w19, #0
	tbz	w22, #31, LBB6_57
LBB6_62:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	tbz	w21, #7, LBB6_58
LBB6_63:                                ;   in Loop: Header=BB6_3 Depth=1
	ldr	x0, [sp, #64]
	bl	__ZdlPv
	cbz	w19, LBB6_67
LBB6_64:                                ;   in Loop: Header=BB6_3 Depth=1
	mov	x23, x24
	ldr	x8, [x23, #8]!
	cbnz	x8, LBB6_2
	b	LBB6_67
LBB6_65:
	add	x24, x25, #8
	mov	x23, x24
	ldr	x8, [x23]
	cbnz	x8, LBB6_72
	b	LBB6_68
LBB6_66:
	mov	x23, x24
LBB6_67:
	ldr	x25, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x8, [x23]
	cbnz	x8, LBB6_72
LBB6_68:
	mov	w0, #56
	bl	__Znwm
	mov	x21, x0
	add	x0, x0, #32
	ldrsb	w8, [x20, #23]
	tbnz	w8, #31, LBB6_73
; %bb.69:
	ldr	q0, [x20]
	str	q0, [x0]
	ldr	x8, [x20, #16]
	str	x8, [x0, #16]
	stp	xzr, xzr, [x21]
	str	x24, [x21, #16]
	str	x21, [x23]
	ldr	x8, [x25]
	ldr	x8, [x8]
	cbz	x8, LBB6_71
LBB6_70:
	str	x8, [x25]
	ldr	x21, [x23]
LBB6_71:
	ldr	x0, [x25, #8]
	mov	x1, x21
	bl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	ldr	x8, [x25, #16]
	add	x8, x8, #1
	str	x8, [x25, #16]
LBB6_72:
	ldp	x29, x30, [sp, #240]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #224]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #192]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #176]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #256
	ret
LBB6_73:
	ldp	x22, x19, [x20]
	cmp	x19, #22
	b.hi	LBB6_75
; %bb.74:
	strb	w19, [x0, #23]
	b	LBB6_78
LBB6_75:
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x19, x8
	b.hi	LBB6_83
; %bb.76:
	add	x8, x19, #16
	and	x20, x8, #0xfffffffffffffff0
Ltmp55:
	mov	x0, x20
	bl	__Znwm
Ltmp56:
; %bb.77:
	orr	x8, x20, #0x8000000000000000
	stp	x19, x8, [x21, #40]
	str	x0, [x21, #32]
LBB6_78:
	add	x2, x19, #1
	mov	x1, x22
	bl	_memmove
	stp	xzr, xzr, [x21]
	str	x24, [x21, #16]
	str	x21, [x23]
	ldr	x8, [x25]
	ldr	x8, [x8]
	cbnz	x8, LBB6_70
	b	LBB6_71
LBB6_79:
	sub	x0, x29, #112
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB6_80:
Ltmp46:
	add	x0, sp, #96
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp47:
	b	LBB6_84
LBB6_81:
	add	x0, sp, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB6_82:
Ltmp52:
	add	x0, sp, #32
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp53:
	b	LBB6_84
LBB6_83:
Ltmp57:
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp58:
LBB6_84:
	brk	#0x1
LBB6_85:
Ltmp59:
	mov	x19, x0
	mov	x0, x21
	b	LBB6_94
LBB6_86:
Ltmp54:
	b	LBB6_88
LBB6_87:
Ltmp51:
LBB6_88:
	mov	x19, x0
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB6_95
; %bb.89:
	ldr	x0, [sp, #64]
	b	LBB6_94
LBB6_90:
Ltmp48:
	b	LBB6_92
LBB6_91:
Ltmp45:
LBB6_92:
	mov	x19, x0
	ldursb	w8, [x29, #-89]
	tbz	w8, #31, LBB6_95
; %bb.93:
	ldur	x0, [x29, #-112]
LBB6_94:
	bl	__ZdlPv
LBB6_95:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp43-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp43
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin2            ;     jumps to Ltmp45
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp49-Ltmp44                  ;   Call between Ltmp44 and Ltmp49
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin2            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp55-Ltmp50                  ;   Call between Ltmp50 and Ltmp55
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp56-Ltmp55                  ;   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp59-Lfunc_begin2            ;     jumps to Ltmp59
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp46-Ltmp56                  ;   Call between Ltmp56 and Ltmp46
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin2            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp52-Ltmp47                  ;   Call between Ltmp47 and Ltmp52
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin2            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin2            ; >> Call Site 11 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin2            ;     jumps to Ltmp59
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin2            ; >> Call Site 12 <<
	.uleb128 Lfunc_end2-Ltmp58              ;   Call between Ltmp58 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9Processor13computeResultEv ; -- Begin function _ZN9Processor13computeResultEv
	.weak_def_can_be_hidden	__ZN9Processor13computeResultEv
	.p2align	2
__ZN9Processor13computeResultEv:        ; @_ZN9Processor13computeResultEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #208
	.cfi_def_cfa_offset 208
	stp	x28, x27, [sp, #112]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #128]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x0
	stp	xzr, xzr, [sp, #88]
	str	xzr, [sp, #104]
	ldr	x28, [x20], #8
	cmp	x28, x20
	b.eq	LBB7_64
; %bb.1:
	mov	x24, #0
	mov	x27, #0
	mov	w23, #-1
	mov	w26, #-1
	b	LBB7_4
LBB7_2:                                 ;   in Loop: Header=BB7_4 Depth=1
	mov	x28, x9
LBB7_3:                                 ;   in Loop: Header=BB7_4 Depth=1
	cmp	x28, x20
	b.eq	LBB7_32
LBB7_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_29 Depth 2
                                        ;     Child Loop BB7_31 Depth 2
	ldrsb	w8, [x28, #55]
	tbnz	w8, #31, LBB7_6
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x8, x28, #32
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	b	LBB7_12
LBB7_6:                                 ;   in Loop: Header=BB7_4 Depth=1
	ldp	x21, x19, [x28, #32]
	cmp	x19, #22
	b.hi	LBB7_8
; %bb.7:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x0, sp, #64
	strb	w19, [sp, #87]
	b	LBB7_11
LBB7_8:                                 ;   in Loop: Header=BB7_4 Depth=1
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x19, x8
	b.hi	LBB7_72
; %bb.9:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x8, x19, #16
	and	x22, x8, #0xfffffffffffffff0
Ltmp60:
	mov	x0, x22
	bl	__Znwm
Ltmp61:
; %bb.10:                               ;   in Loop: Header=BB7_4 Depth=1
	orr	x8, x22, #0x8000000000000000
	stp	x19, x8, [sp, #72]
	str	x0, [sp, #64]
LBB7_11:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x2, x19, #1
	mov	x1, x21
	bl	_memmove
LBB7_12:                                ;   in Loop: Header=BB7_4 Depth=1
	ldrb	w8, [sp, #87]
	sxtb	w9, w8
	ldr	x10, [sp, #72]
	cmp	w9, #0
	csel	x19, x10, x8, lt
	cmp	x19, w23, sxtw
	b.eq	LBB7_25
; %bb.13:                               ;   in Loop: Header=BB7_4 Depth=1
Ltmp66:
	mov	w0, #24
	bl	__Znwm
Ltmp67:
; %bb.14:                               ;   in Loop: Header=BB7_4 Depth=1
	mov	x21, x0
	str	xzr, [x0, #16]
	mov	x8, x0
	str	xzr, [x8, #8]!
	str	x8, [x0]
	ldr	x8, [sp, #104]
	cmp	x27, x8
	b.hs	LBB7_16
; %bb.15:                               ;   in Loop: Header=BB7_4 Depth=1
	str	x21, [x27], #8
	str	x27, [sp, #96]
	ldr	x22, [sp, #88]
	b	LBB7_24
LBB7_16:                                ;   in Loop: Header=BB7_4 Depth=1
	sub	x23, x27, x24
	asr	x27, x23, #3
	add	x9, x27, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB7_71
; %bb.17:                               ;   in Loop: Header=BB7_4 Depth=1
	mov	x11, x24
	sub	x8, x8, x24
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800
	cmp	x8, x10
	mov	x8, #2305843009213693951
	csel	x25, x9, x8, lo
	cbz	x25, LBB7_21
; %bb.18:                               ;   in Loop: Header=BB7_4 Depth=1
	lsr	x8, x25, #61
	cbnz	x8, LBB7_73
; %bb.19:                               ;   in Loop: Header=BB7_4 Depth=1
	lsl	x0, x25, #3
Ltmp68:
	bl	__Znwm
Ltmp69:
; %bb.20:                               ;   in Loop: Header=BB7_4 Depth=1
	mov	x22, x0
	b	LBB7_22
LBB7_21:                                ;   in Loop: Header=BB7_4 Depth=1
	mov	x22, #0
LBB7_22:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x27, x22, x27, lsl #3
	add	x25, x22, x25, lsl #3
	str	x21, [x27], #8
	mov	x0, x22
	mov	x1, x24
	mov	x2, x23
	bl	_memmove
	stp	x22, x27, [sp, #88]
	str	x25, [sp, #104]
	cbz	x24, LBB7_24
; %bb.23:                               ;   in Loop: Header=BB7_4 Depth=1
	mov	x0, x24
	bl	__ZdlPv
LBB7_24:                                ;   in Loop: Header=BB7_4 Depth=1
	add	w26, w26, #1
	mov	x24, x22
	mov	x23, x19
LBB7_25:                                ;   in Loop: Header=BB7_4 Depth=1
	ldr	x0, [x24, w26, sxtw #3]
Ltmp76:
	add	x1, sp, #64
	add	x2, sp, #64
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_
Ltmp77:
; %bb.26:                               ;   in Loop: Header=BB7_4 Depth=1
	ldrsb	w8, [sp, #87]
	tbnz	w8, #31, LBB7_28
; %bb.27:                               ;   in Loop: Header=BB7_4 Depth=1
	ldr	x8, [x28, #8]
	cbnz	x8, LBB7_29
	b	LBB7_30
LBB7_28:                                ;   in Loop: Header=BB7_4 Depth=1
	ldr	x0, [sp, #64]
	bl	__ZdlPv
	ldr	x8, [x28, #8]
	cbz	x8, LBB7_30
LBB7_29:                                ;   Parent Loop BB7_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x28, x8
	ldr	x8, [x8]
	cbnz	x8, LBB7_29
	b	LBB7_3
LBB7_30:                                ;   in Loop: Header=BB7_4 Depth=1
	mov	x8, x28
	ldr	x9, [x8, #16]!
	ldr	x10, [x9]
	cmp	x10, x28
	b.eq	LBB7_2
LBB7_31:                                ;   Parent Loop BB7_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [x8]
	mov	x8, x9
	ldr	x28, [x8, #16]!
	ldr	x10, [x28]
	cmp	x10, x9
	b.ne	LBB7_31
	b	LBB7_3
LBB7_32:
	cmp	x24, x27
	b.eq	LBB7_65
; %bb.33:
	mov	x20, #0
	str	x24, [sp, #8]                   ; 8-byte Folded Spill
	mov	x26, x24
	b	LBB7_37
LBB7_34:                                ;   in Loop: Header=BB7_37 Depth=1
	ldr	x21, [sp, #16]                  ; 8-byte Folded Reload
	cbz	x21, LBB7_36
LBB7_35:                                ;   in Loop: Header=BB7_37 Depth=1
	ldr	x1, [x21, #8]
	mov	x0, x21
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	x0, x21
	bl	__ZdlPv
LBB7_36:                                ;   in Loop: Header=BB7_37 Depth=1
	add	x26, x26, #8
	ldr	x27, [sp, #24]                  ; 8-byte Folded Reload
	cmp	x26, x27
	b.eq	LBB7_66
LBB7_37:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_41 Depth 2
                                        ;       Child Loop BB7_61 Depth 3
                                        ;       Child Loop BB7_63 Depth 3
	str	x27, [sp, #24]                  ; 8-byte Folded Spill
	ldr	x21, [x26]
	ldr	x24, [x21]
	add	x27, x21, #8
	cmp	x24, x27
	b.eq	LBB7_35
; %bb.38:                               ;   in Loop: Header=BB7_37 Depth=1
	mov	w19, #0
	str	x21, [sp, #16]                  ; 8-byte Folded Spill
	ldr	w28, [x21, #16]
	b	LBB7_41
LBB7_39:                                ;   in Loop: Header=BB7_41 Depth=2
	mov	x24, x9
LBB7_40:                                ;   in Loop: Header=BB7_41 Depth=2
	mov	x19, x21
	cmp	x24, x27
	b.eq	LBB7_34
LBB7_41:                                ;   Parent Loop BB7_37 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB7_61 Depth 3
                                        ;       Child Loop BB7_63 Depth 3
	ldrsb	w8, [x24, #55]
	tbnz	w8, #31, LBB7_43
; %bb.42:                               ;   in Loop: Header=BB7_41 Depth=2
	add	x8, x24, #32
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	add	w21, w19, #1
	ldrsb	w25, [sp, #87]
	cbnz	w19, LBB7_48
	b	LBB7_51
LBB7_43:                                ;   in Loop: Header=BB7_41 Depth=2
	ldp	x22, x21, [x24, #32]
	cmp	x21, #22
	b.hi	LBB7_45
; %bb.44:                               ;   in Loop: Header=BB7_41 Depth=2
	add	x0, sp, #64
	strb	w21, [sp, #87]
	add	x2, x21, #1
	mov	x1, x22
	bl	_memmove
	add	w21, w19, #1
	ldrsb	w25, [sp, #87]
	cbnz	w19, LBB7_48
	b	LBB7_51
LBB7_45:                                ;   in Loop: Header=BB7_41 Depth=2
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x21, x8
	b.hi	LBB7_69
; %bb.46:                               ;   in Loop: Header=BB7_41 Depth=2
	add	x8, x21, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp79:
	mov	x0, x23
	bl	__Znwm
Ltmp80:
; %bb.47:                               ;   in Loop: Header=BB7_41 Depth=2
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [sp, #72]
	str	x0, [sp, #64]
	add	x2, x21, #1
	mov	x1, x22
	bl	_memmove
	add	w21, w19, #1
	ldrsb	w25, [sp, #87]
	cbz	w19, LBB7_51
LBB7_48:                                ;   in Loop: Header=BB7_41 Depth=2
	cmp	w21, w28
	b.eq	LBB7_51
; %bb.49:                               ;   in Loop: Header=BB7_41 Depth=2
	tbnz	w25, #31, LBB7_53
; %bb.50:                               ;   in Loop: Header=BB7_41 Depth=2
	ldr	q0, [sp, #64]
	str	q0, [sp, #32]
	ldr	x8, [sp, #80]
	str	x8, [sp, #48]
	add	x0, sp, #32
	bl	__ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	add	x20, x0, x20
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB7_59
LBB7_51:                                ;   in Loop: Header=BB7_41 Depth=2
	tbnz	w25, #31, LBB7_60
LBB7_52:                                ;   in Loop: Header=BB7_41 Depth=2
	ldr	x8, [x24, #8]
	cbnz	x8, LBB7_61
	b	LBB7_62
LBB7_53:                                ;   in Loop: Header=BB7_41 Depth=2
	ldp	x22, x19, [sp, #64]
	cmp	x19, #22
	b.hi	LBB7_55
; %bb.54:                               ;   in Loop: Header=BB7_41 Depth=2
	add	x0, sp, #32
	strb	w19, [sp, #55]
	b	LBB7_58
LBB7_55:                                ;   in Loop: Header=BB7_41 Depth=2
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x19, x8
	b.hi	LBB7_70
; %bb.56:                               ;   in Loop: Header=BB7_41 Depth=2
	add	x8, x19, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp85:
	mov	x0, x23
	bl	__Znwm
Ltmp86:
; %bb.57:                               ;   in Loop: Header=BB7_41 Depth=2
	orr	x8, x23, #0x8000000000000000
	stp	x19, x8, [sp, #40]
	str	x0, [sp, #32]
LBB7_58:                                ;   in Loop: Header=BB7_41 Depth=2
	add	x2, x19, #1
	mov	x1, x22
	bl	_memmove
	add	x0, sp, #32
	bl	__ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	add	x20, x0, x20
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB7_51
LBB7_59:                                ;   in Loop: Header=BB7_41 Depth=2
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	tbz	w25, #31, LBB7_52
LBB7_60:                                ;   in Loop: Header=BB7_41 Depth=2
	ldr	x0, [sp, #64]
	bl	__ZdlPv
	ldr	x8, [x24, #8]
	cbz	x8, LBB7_62
LBB7_61:                                ;   Parent Loop BB7_37 Depth=1
                                        ;     Parent Loop BB7_41 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x24, x8
	ldr	x8, [x8]
	cbnz	x8, LBB7_61
	b	LBB7_40
LBB7_62:                                ;   in Loop: Header=BB7_41 Depth=2
	mov	x8, x24
	ldr	x9, [x8, #16]!
	ldr	x10, [x9]
	cmp	x10, x24
	b.eq	LBB7_39
LBB7_63:                                ;   Parent Loop BB7_37 Depth=1
                                        ;     Parent Loop BB7_41 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x9, [x8]
	mov	x8, x9
	ldr	x24, [x8, #16]!
	ldr	x10, [x24]
	cmp	x10, x9
	b.ne	LBB7_63
	b	LBB7_40
LBB7_64:
	mov	x20, #0
	b	LBB7_68
LBB7_65:
	str	x24, [sp, #8]                   ; 8-byte Folded Spill
	mov	x20, #0
LBB7_66:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	cbz	x0, LBB7_68
; %bb.67:
	bl	__ZdlPv
LBB7_68:
	mov	x0, x20
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #176]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #128]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #208
	ret
LBB7_69:
Ltmp82:
	add	x0, sp, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp83:
	b	LBB7_74
LBB7_70:
Ltmp88:
	add	x0, sp, #32
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp89:
	b	LBB7_74
LBB7_71:
Ltmp73:
	add	x0, sp, #88
	bl	__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev
Ltmp74:
	b	LBB7_74
LBB7_72:
Ltmp63:
	add	x0, sp, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp64:
	b	LBB7_74
LBB7_73:
Ltmp71:
	bl	__ZSt28__throw_bad_array_new_lengthB6v15006v
Ltmp72:
LBB7_74:
	brk	#0x1
LBB7_75:
Ltmp65:
	mov	x20, x0
	ldr	x0, [sp, #88]
	b	LBB7_90
LBB7_76:
Ltmp62:
	mov	x20, x0
	ldr	x0, [sp, #88]
	b	LBB7_90
LBB7_77:
Ltmp75:
	b	LBB7_80
LBB7_78:
Ltmp70:
	b	LBB7_80
LBB7_79:
Ltmp78:
LBB7_80:
	mov	x20, x0
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB7_82
; %bb.81:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB7_82:
	ldr	x0, [sp, #88]
	b	LBB7_90
LBB7_83:
Ltmp90:
	b	LBB7_85
LBB7_84:
Ltmp87:
LBB7_85:
	mov	x20, x0
	mov	x0, x22
	bl	__ZdlPv
	b	LBB7_89
LBB7_86:
Ltmp84:
	b	LBB7_88
LBB7_87:
Ltmp81:
LBB7_88:
	mov	x20, x0
LBB7_89:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
LBB7_90:
	cbz	x0, LBB7_92
; %bb.91:
	str	x0, [sp, #96]
	bl	__ZdlPv
LBB7_92:
	mov	x0, x20
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp60-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin3            ;     jumps to Ltmp62
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp66-Ltmp61                  ;   Call between Ltmp61 and Ltmp66
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp69-Ltmp66                  ;   Call between Ltmp66 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin3            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp76-Ltmp69                  ;   Call between Ltmp69 and Ltmp76
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp77-Ltmp76                  ;   Call between Ltmp76 and Ltmp77
	.uleb128 Ltmp78-Lfunc_begin3            ;     jumps to Ltmp78
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp79-Ltmp77                  ;   Call between Ltmp77 and Ltmp79
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp79-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp80-Ltmp79                  ;   Call between Ltmp79 and Ltmp80
	.uleb128 Ltmp81-Lfunc_begin3            ;     jumps to Ltmp81
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp80-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp85-Ltmp80                  ;   Call between Ltmp80 and Ltmp85
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp85-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp86-Ltmp85                  ;   Call between Ltmp85 and Ltmp86
	.uleb128 Ltmp87-Lfunc_begin3            ;     jumps to Ltmp87
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp86-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Ltmp82-Ltmp86                  ;   Call between Ltmp86 and Ltmp82
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp82-Lfunc_begin3            ; >> Call Site 11 <<
	.uleb128 Ltmp83-Ltmp82                  ;   Call between Ltmp82 and Ltmp83
	.uleb128 Ltmp84-Lfunc_begin3            ;     jumps to Ltmp84
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp88-Lfunc_begin3            ; >> Call Site 12 <<
	.uleb128 Ltmp89-Ltmp88                  ;   Call between Ltmp88 and Ltmp89
	.uleb128 Ltmp90-Lfunc_begin3            ;     jumps to Ltmp90
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin3            ; >> Call Site 13 <<
	.uleb128 Ltmp74-Ltmp73                  ;   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp75-Lfunc_begin3            ;     jumps to Ltmp75
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin3            ; >> Call Site 14 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin3            ;     jumps to Ltmp65
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin3            ; >> Call Site 15 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp75-Lfunc_begin3            ;     jumps to Ltmp75
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin3            ; >> Call Site 16 <<
	.uleb128 Lfunc_end3-Ltmp72              ;   Call between Ltmp72 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_ ; -- Begin function _ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.weak_def_can_be_hidden	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.p2align	2
__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_: ; @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	.cfi_startproc
; %bb.0:
	cmp	x1, x0
	cset	w8, eq
	strb	w8, [x1, #24]
	b.eq	LBB8_26
; %bb.1:
	mov	w10, #1
	b	LBB8_3
LBB8_2:                                 ;   in Loop: Header=BB8_3 Depth=1
	strb	w10, [x9, #24]
	mov	x1, x8
	cmp	x8, x0
	cset	w9, eq
	strb	w9, [x8, #24]
	strb	w10, [x11]
	b.eq	LBB8_26
LBB8_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x1, #16]
	ldrb	w8, [x9, #24]
	cbnz	w8, LBB8_26
; %bb.4:                                ;   in Loop: Header=BB8_3 Depth=1
	ldr	x8, [x9, #16]
	ldr	x11, [x8]
	cmp	x11, x9
	b.eq	LBB8_7
; %bb.5:                                ;   in Loop: Header=BB8_3 Depth=1
	cbz	x11, LBB8_13
; %bb.6:                                ;   in Loop: Header=BB8_3 Depth=1
	ldrb	w12, [x11, #24]!
	cbz	w12, LBB8_2
	b	LBB8_13
LBB8_7:                                 ;   in Loop: Header=BB8_3 Depth=1
	ldr	x11, [x8, #8]
	cbz	x11, LBB8_9
; %bb.8:                                ;   in Loop: Header=BB8_3 Depth=1
	ldrb	w12, [x11, #24]!
	cbz	w12, LBB8_2
LBB8_9:
	ldr	x10, [x9]
	cmp	x10, x1
	b.eq	LBB8_21
; %bb.10:
	ldr	x10, [x9, #8]
	ldr	x11, [x10]
	str	x11, [x9, #8]
	cbz	x11, LBB8_12
; %bb.11:
	str	x9, [x11, #16]
	ldr	x8, [x9, #16]
LBB8_12:
	str	x8, [x10, #16]
	ldr	x8, [x9, #16]
	ldr	x11, [x8]
	cmp	x11, x9
	cset	w11, ne
	str	x10, [x8, w11, uxtw #3]
	str	x9, [x10]
	str	x10, [x9, #16]
	ldr	x8, [x10, #16]
	b	LBB8_22
LBB8_13:
	ldr	x10, [x9]
	cmp	x10, x1
	b.eq	LBB8_15
; %bb.14:
	mov	x1, x9
	b	LBB8_18
LBB8_15:
	ldr	x10, [x1, #8]
	str	x10, [x9]
	cbz	x10, LBB8_17
; %bb.16:
	str	x9, [x10, #16]
	ldr	x8, [x9, #16]
LBB8_17:
	str	x8, [x1, #16]
	ldr	x8, [x9, #16]
	ldr	x10, [x8]
	cmp	x10, x9
	cset	w10, ne
	str	x1, [x8, w10, uxtw #3]
	str	x9, [x1, #8]
	str	x1, [x9, #16]
	ldr	x8, [x1, #16]
LBB8_18:
	mov	w9, #1
	strb	w9, [x1, #24]
	strb	wzr, [x8, #24]
	ldr	x9, [x8, #8]
	ldr	x10, [x9]
	str	x10, [x8, #8]
	cbz	x10, LBB8_20
; %bb.19:
	str	x8, [x10, #16]
LBB8_20:
	mov	x10, x8
	ldr	x11, [x10, #16]!
	str	x11, [x9, #16]
	ldr	x11, [x10]
	ldr	x12, [x11]
	cmp	x12, x8
	cset	w12, ne
	str	x9, [x11, w12, uxtw #3]
	str	x8, [x9]
	b	LBB8_25
LBB8_21:
	mov	x10, x9
LBB8_22:
	mov	w9, #1
	strb	w9, [x10, #24]
	strb	wzr, [x8, #24]
	ldr	x9, [x8]
	ldr	x10, [x9, #8]
	str	x10, [x8]
	cbz	x10, LBB8_24
; %bb.23:
	str	x8, [x10, #16]
LBB8_24:
	mov	x10, x8
	ldr	x11, [x10, #16]!
	str	x11, [x9, #16]
	ldr	x11, [x10]
	ldr	x12, [x11]
	cmp	x12, x8
	cset	w12, ne
	str	x9, [x11, w12, uxtw #3]
	str	x8, [x9, #8]
LBB8_25:
	str	x9, [x10]
LBB8_26:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE ; -- Begin function _ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	2
__ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ; @_ZN9Processor9_sumCharsENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x24, x0
	ldrsb	w9, [x0, #23]
	and	x8, x9, #0xff
	tbnz	w9, #31, LBB9_9
; %bb.1:
	mov	x26, x8
	cmp	x26, #1
	b.lt	LBB9_10
LBB9_2:
Lloh42:
	adrp	x9, __MergedGlobals@PAGE
Lloh43:
	add	x9, x9, __MergedGlobals@PAGEOFF
	ldrb	w10, [x9, #23]
	sxtb	w11, w10
	cmp	w11, #0
	ldp	x12, x11, [x9]
	csel	x20, x11, x10, lt
	csel	x21, x12, x9, lt
	ldrb	w10, [x9, #47]
	sxtb	w11, w10
	ldr	x12, [x9, #32]
	cmp	w11, #0
	csel	x22, x12, x10, lt
	ldr	x10, [x9, #24]!
	csel	x23, x10, x9, lt
	mov	x19, #0
	cbz	x20, LBB9_11
; %bb.3:
	cbz	x22, LBB9_15
; %bb.4:
	tbnz	w8, #7, LBB9_17
; %bb.5:
	mov	x27, #-1
	b	LBB9_7
LBB9_6:                                 ;   in Loop: Header=BB9_7 Depth=1
	mov	x0, x23
	mov	x1, x25
	mov	x2, x22
	bl	_memchr
	sub	x8, x0, x23
	cmp	x0, #0
	ccmp	x8, x27, #4, ne
	cset	w8, ne
	add	x19, x19, x8
	add	x24, x24, #1
	subs	x26, x26, #1
	b.eq	LBB9_25
LBB9_7:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w25, [x24]
	mov	x0, x21
	mov	x1, x25
	mov	x2, x20
	bl	_memchr
	sub	x8, x0, x21
	cmp	x0, #0
	ccmn	x8, #1, #4, ne
	b.eq	LBB9_6
; %bb.8:                                ;   in Loop: Header=BB9_7 Depth=1
	mov	w8, #2
	add	x19, x19, x8
	add	x24, x24, #1
	subs	x26, x26, #1
	b.ne	LBB9_7
	b	LBB9_25
LBB9_9:
	ldr	x26, [x24, #8]
	cmp	x26, #1
	b.ge	LBB9_2
LBB9_10:
	mov	x19, #0
	b	LBB9_25
LBB9_11:
	cbz	x22, LBB9_25
; %bb.12:
	tbnz	w8, #7, LBB9_21
; %bb.13:
	mov	x20, #-1
LBB9_14:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w1, [x24], #1
	mov	x0, x23
	mov	x2, x22
	bl	_memchr
	sub	x8, x0, x23
	cmp	x0, #0
	ccmp	x8, x20, #4, ne
	cinc	x19, x19, ne
	subs	x26, x26, #1
	b.ne	LBB9_14
	b	LBB9_25
LBB9_15:
	tbnz	w8, #7, LBB9_23
LBB9_16:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w1, [x24], #1
	mov	x0, x21
	mov	x2, x20
	bl	_memchr
	sub	x8, x0, x21
	cmn	x8, #1
	ccmp	x0, #0, #4, ne
	add	x8, x19, #2
	csel	x19, x19, x8, eq
	subs	x26, x26, #1
	b.ne	LBB9_16
	b	LBB9_25
LBB9_17:
	ldr	x25, [x24]
	mov	x27, #-1
	b	LBB9_19
LBB9_18:                                ;   in Loop: Header=BB9_19 Depth=1
	mov	x0, x23
	mov	x1, x24
	mov	x2, x22
	bl	_memchr
	sub	x8, x0, x23
	cmp	x0, #0
	ccmp	x8, x27, #4, ne
	cset	w8, ne
	add	x19, x19, x8
	add	x25, x25, #1
	subs	x26, x26, #1
	b.eq	LBB9_25
LBB9_19:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w24, [x25]
	mov	x0, x21
	mov	x1, x24
	mov	x2, x20
	bl	_memchr
	sub	x8, x0, x21
	cmp	x0, #0
	ccmn	x8, #1, #4, ne
	b.eq	LBB9_18
; %bb.20:                               ;   in Loop: Header=BB9_19 Depth=1
	mov	w8, #2
	add	x19, x19, x8
	add	x25, x25, #1
	subs	x26, x26, #1
	b.ne	LBB9_19
	b	LBB9_25
LBB9_21:
	ldr	x20, [x24]
	mov	x21, #-1
LBB9_22:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w1, [x20], #1
	mov	x0, x23
	mov	x2, x22
	bl	_memchr
	sub	x8, x0, x23
	cmp	x0, #0
	ccmp	x8, x21, #4, ne
	cinc	x19, x19, ne
	subs	x26, x26, #1
	b.ne	LBB9_22
	b	LBB9_25
LBB9_23:
	ldr	x22, [x24]
LBB9_24:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w1, [x22], #1
	mov	x0, x21
	mov	x2, x20
	bl	_memchr
	sub	x8, x0, x21
	cmn	x8, #1
	ccmp	x0, #0, #4, ne
	add	x8, x19, #2
	csel	x19, x19, x8, eq
	subs	x26, x26, #1
	b.ne	LBB9_24
LBB9_25:
	mov	x0, x19
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev ; -- Begin function _ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev
	.globl	__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev
	.p2align	2
__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev: ; @_ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS7_S7_E_NS5_IS7_EEEENS5_ISD_EEE20__throw_length_errorB6v15006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh44:
	adrp	x0, l_.str.11@PAGE
Lloh45:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh44, Lloh45
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_ ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_
	.p2align	2
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_: ; @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE25__emplace_unique_key_argsIS6_JRKS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x23, x2
	mov	x2, x1
	mov	x20, x0
	add	x1, sp, #8
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_
	ldr	x19, [x0]
	cbz	x19, LBB11_2
; %bb.1:
	mov	x1, #0
	b	LBB11_14
LBB11_2:
	mov	x21, x0
	mov	w0, #56
	bl	__Znwm
	mov	x19, x0
	add	x0, x0, #32
	ldrsb	w8, [x23, #23]
	tbnz	w8, #31, LBB11_4
; %bb.3:
	ldr	q0, [x23]
	str	q0, [x0]
	ldr	x8, [x23, #16]
	str	x8, [x0, #16]
	b	LBB11_10
LBB11_4:
	ldp	x22, x24, [x23]
	cmp	x24, #22
	b.hi	LBB11_6
; %bb.5:
	strb	w24, [x0, #23]
	b	LBB11_9
LBB11_6:
	mov	x8, #9223372036854775792
	cmp	x24, x8
	b.hs	LBB11_15
; %bb.7:
	add	x8, x24, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp91:
	mov	x0, x23
	bl	__Znwm
Ltmp92:
; %bb.8:
	orr	x8, x23, #0x8000000000000000
	stp	x24, x8, [x19, #40]
	str	x0, [x19, #32]
LBB11_9:
	add	x2, x24, #1
	mov	x1, x22
	bl	_memmove
LBB11_10:
	ldr	x8, [sp, #8]
	stp	xzr, xzr, [x19]
	str	x8, [x19, #16]
	str	x19, [x21]
	ldr	x8, [x20]
	ldr	x8, [x8]
	cbz	x8, LBB11_12
; %bb.11:
	str	x8, [x20]
	ldr	x1, [x21]
	b	LBB11_13
LBB11_12:
	mov	x1, x19
LBB11_13:
	ldr	x0, [x20, #8]
	bl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	ldr	x8, [x20, #16]
	add	x8, x8, #1
	str	x8, [x20, #16]
	mov	w1, #1
LBB11_14:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB11_15:
Ltmp93:
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp94:
; %bb.16:
	brk	#0x1
LBB11_17:
Ltmp95:
	mov	x20, x0
	mov	x0, x19
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp91-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp91
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp92-Ltmp91                  ;   Call between Ltmp91 and Ltmp92
	.uleb128 Ltmp95-Lfunc_begin4            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp93-Lfunc_begin4            ; >> Call Site 4 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin4            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp94-Lfunc_begin4            ; >> Call Site 5 <<
	.uleb128 Lfunc_end4-Ltmp94              ;   Call between Ltmp94 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_ ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_
	.p2align	2
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_: ; @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISG_EERKT_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x0
	ldr	x24, [x20, #8]!
	cbz	x24, LBB12_50
; %bb.1:
	mov	x21, x2
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	add	x20, x0, #8
	b	LBB12_5
LBB12_2:                                ;   in Loop: Header=BB12_5 Depth=1
	ldr	x8, [x24]
	cbz	x8, LBB12_51
; %bb.3:                                ;   in Loop: Header=BB12_5 Depth=1
	mov	x20, x24
LBB12_4:                                ;   in Loop: Header=BB12_5 Depth=1
	mov	x24, x8
LBB12_5:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB12_8
; %bb.6:                                ;   in Loop: Header=BB12_5 Depth=1
	ldr	q0, [x21]
	str	q0, [sp, #112]
	ldr	x8, [x21, #16]
	str	x8, [sp, #128]
	add	x26, x24, #32
	ldrsb	w8, [x24, #55]
	tbnz	w8, #31, LBB12_13
LBB12_7:                                ;   in Loop: Header=BB12_5 Depth=1
	ldr	q0, [x26]
	str	q0, [sp, #80]
	ldr	x8, [x26, #16]
	str	x8, [sp, #96]
	b	LBB12_19
LBB12_8:                                ;   in Loop: Header=BB12_5 Depth=1
	ldp	x22, x25, [x21]
	cmp	x25, #22
	b.hi	LBB12_10
; %bb.9:                                ;   in Loop: Header=BB12_5 Depth=1
	add	x0, sp, #112
	strb	w25, [sp, #135]
	b	LBB12_12
LBB12_10:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x25, x8
	b.hi	LBB12_53
; %bb.11:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x8, x25, #16
	and	x23, x8, #0xfffffffffffffff0
	mov	x0, x23
	bl	__Znwm
	orr	x8, x23, #0x8000000000000000
	stp	x25, x8, [sp, #120]
	str	x0, [sp, #112]
LBB12_12:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x2, x25, #1
	mov	x1, x22
	bl	_memmove
	add	x26, x24, #32
	ldrsb	w8, [x24, #55]
	tbz	w8, #31, LBB12_7
LBB12_13:                               ;   in Loop: Header=BB12_5 Depth=1
	ldp	x22, x25, [x24, #32]
	cmp	x25, #22
	b.hi	LBB12_15
; %bb.14:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x0, sp, #80
	strb	w25, [sp, #103]
	b	LBB12_18
LBB12_15:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x25, x8
	b.hi	LBB12_54
; %bb.16:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x8, x25, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp96:
	mov	x0, x23
	bl	__Znwm
Ltmp97:
; %bb.17:                               ;   in Loop: Header=BB12_5 Depth=1
	orr	x8, x23, #0x8000000000000000
	stp	x25, x8, [sp, #88]
	str	x0, [sp, #80]
LBB12_18:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x2, x25, #1
	mov	x1, x22
	bl	_memmove
LBB12_19:                               ;   in Loop: Header=BB12_5 Depth=1
	ldrb	w8, [sp, #103]
	sxtb	w25, w8
	ldp	x22, x9, [sp, #80]
	cmp	w25, #0
	csel	x28, x9, x8, lt
	ldrb	w8, [sp, #135]
	sxtb	w27, w8
	ldr	x9, [sp, #120]
	cmp	w27, #0
	csel	x19, x9, x8, lt
	cmp	x28, x19
	csel	x2, x28, x19, lo
	cbz	x2, LBB12_24
; %bb.20:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	x8, [sp, #112]
	cmp	w27, #0
	add	x9, sp, #112
	csel	x0, x8, x9, lt
	cmp	w25, #0
	add	x8, sp, #80
	csel	x1, x22, x8, lt
	bl	_memcmp
	mov	x23, x0
	cbz	w0, LBB12_24
; %bb.21:                               ;   in Loop: Header=BB12_5 Depth=1
	tbnz	w25, #31, LBB12_25
LBB12_22:                               ;   in Loop: Header=BB12_5 Depth=1
	tbnz	w27, #31, LBB12_26
LBB12_23:                               ;   in Loop: Header=BB12_5 Depth=1
	tbz	w23, #31, LBB12_27
	b	LBB12_2
LBB12_24:                               ;   in Loop: Header=BB12_5 Depth=1
	cmp	x28, x19
	cset	w8, lo
	cmp	x19, x28
	csinv	w23, w8, wzr, hs
	tbz	w25, #31, LBB12_22
LBB12_25:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x0, x22
	bl	__ZdlPv
	tbz	w27, #31, LBB12_23
LBB12_26:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	x0, [sp, #112]
	bl	__ZdlPv
	tbnz	w23, #31, LBB12_2
LBB12_27:                               ;   in Loop: Header=BB12_5 Depth=1
	ldrsb	w8, [x26, #23]
	tbnz	w8, #31, LBB12_30
; %bb.28:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	q0, [x26]
	str	q0, [sp, #48]
	ldr	x8, [x26, #16]
	str	x8, [sp, #64]
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB12_34
LBB12_29:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	q0, [x21]
	str	q0, [sp, #16]
	ldr	x8, [x21, #16]
	str	x8, [sp, #32]
	b	LBB12_40
LBB12_30:                               ;   in Loop: Header=BB12_5 Depth=1
	ldp	x22, x25, [x24, #32]
	cmp	x25, #22
	b.hi	LBB12_32
; %bb.31:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x0, sp, #48
	strb	w25, [sp, #71]
	add	x2, x25, #1
	mov	x1, x22
	bl	_memmove
	ldrsb	w8, [x21, #23]
	tbz	w8, #31, LBB12_29
	b	LBB12_34
LBB12_32:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x25, x8
	b.hi	LBB12_55
; %bb.33:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x8, x25, #16
	and	x23, x8, #0xfffffffffffffff0
	mov	x0, x23
	bl	__Znwm
	orr	x8, x23, #0x8000000000000000
	stp	x25, x8, [sp, #56]
	str	x0, [sp, #48]
	add	x2, x25, #1
	mov	x1, x22
	bl	_memmove
	ldrsb	w8, [x21, #23]
	tbz	w8, #31, LBB12_29
LBB12_34:                               ;   in Loop: Header=BB12_5 Depth=1
	ldp	x22, x25, [x21]
	cmp	x25, #22
	b.hi	LBB12_36
; %bb.35:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x0, sp, #16
	strb	w25, [sp, #39]
	b	LBB12_39
LBB12_36:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x8, #-17
	movk	x8, #32767, lsl #48
	cmp	x25, x8
	b.hi	LBB12_56
; %bb.37:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x8, x25, #16
	and	x23, x8, #0xfffffffffffffff0
Ltmp102:
	mov	x0, x23
	bl	__Znwm
Ltmp103:
; %bb.38:                               ;   in Loop: Header=BB12_5 Depth=1
	orr	x8, x23, #0x8000000000000000
	stp	x25, x8, [sp, #24]
	str	x0, [sp, #16]
LBB12_39:                               ;   in Loop: Header=BB12_5 Depth=1
	add	x2, x25, #1
	mov	x1, x22
	bl	_memmove
LBB12_40:                               ;   in Loop: Header=BB12_5 Depth=1
	ldrb	w8, [sp, #39]
	sxtb	w25, w8
	ldp	x22, x9, [sp, #16]
	cmp	w25, #0
	csel	x27, x9, x8, lt
	ldrb	w8, [sp, #71]
	sxtb	w26, w8
	ldr	x9, [sp, #56]
	cmp	w26, #0
	csel	x19, x9, x8, lt
	cmp	x27, x19
	csel	x2, x27, x19, lo
	cbz	x2, LBB12_45
; %bb.41:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	x8, [sp, #48]
	cmp	w26, #0
	add	x9, sp, #48
	csel	x0, x8, x9, lt
	cmp	w25, #0
	add	x8, sp, #16
	csel	x1, x22, x8, lt
	bl	_memcmp
	mov	x23, x0
	cbz	w0, LBB12_45
; %bb.42:                               ;   in Loop: Header=BB12_5 Depth=1
	tbnz	w25, #31, LBB12_46
LBB12_43:                               ;   in Loop: Header=BB12_5 Depth=1
	tbnz	w26, #31, LBB12_47
LBB12_44:                               ;   in Loop: Header=BB12_5 Depth=1
	tbnz	w23, #31, LBB12_48
	b	LBB12_49
LBB12_45:                               ;   in Loop: Header=BB12_5 Depth=1
	cmp	x27, x19
	cset	w8, lo
	cmp	x19, x27
	csinv	w23, w8, wzr, hs
	tbz	w25, #31, LBB12_43
LBB12_46:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x0, x22
	bl	__ZdlPv
	tbz	w26, #31, LBB12_44
LBB12_47:                               ;   in Loop: Header=BB12_5 Depth=1
	ldr	x0, [sp, #48]
	bl	__ZdlPv
	tbz	w23, #31, LBB12_49
LBB12_48:                               ;   in Loop: Header=BB12_5 Depth=1
	mov	x20, x24
	ldr	x8, [x20, #8]!
	cbnz	x8, LBB12_4
LBB12_49:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x24, [x8]
	b	LBB12_52
LBB12_50:
	str	x20, [x1]
	b	LBB12_52
LBB12_51:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x24, [x8]
	mov	x20, x24
LBB12_52:
	mov	x0, x20
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB12_53:
	add	x0, sp, #112
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB12_54:
Ltmp99:
	add	x0, sp, #80
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp100:
	b	LBB12_57
LBB12_55:
	add	x0, sp, #48
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB12_56:
Ltmp105:
	add	x0, sp, #16
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
Ltmp106:
LBB12_57:
	brk	#0x1
LBB12_58:
Ltmp107:
	b	LBB12_60
LBB12_59:
Ltmp104:
LBB12_60:
	mov	x19, x0
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB12_67
; %bb.61:
	ldr	x0, [sp, #48]
	b	LBB12_66
LBB12_62:
Ltmp101:
	b	LBB12_64
LBB12_63:
Ltmp98:
LBB12_64:
	mov	x19, x0
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB12_67
; %bb.65:
	ldr	x0, [sp, #112]
LBB12_66:
	bl	__ZdlPv
LBB12_67:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp96-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp96
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin5            ;     jumps to Ltmp98
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp102-Ltmp97                 ;   Call between Ltmp97 and Ltmp102
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp103-Ltmp102                ;   Call between Ltmp102 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin5           ;     jumps to Ltmp104
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp99-Ltmp103                 ;   Call between Ltmp103 and Ltmp99
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin5            ; >> Call Site 6 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin5           ;     jumps to Ltmp101
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp105-Ltmp100                ;   Call between Ltmp100 and Ltmp105
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp105-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp106-Ltmp105                ;   Call between Ltmp105 and Ltmp106
	.uleb128 Ltmp107-Lfunc_begin5           ;     jumps to Ltmp107
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Lfunc_end5-Ltmp106             ;   Call between Ltmp106 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	.weak_def_can_be_hidden	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	.p2align	2
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE: ; @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB13_3
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x1
	mov	x20, x0
	ldr	x1, [x1]
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldr	x1, [x19, #8]
	mov	x0, x20
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKZN9Processor13computeResultEvEUlS6_S6_E_NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldrsb	w8, [x19, #55]
	tbnz	w8, #31, LBB13_4
; %bb.2:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
LBB13_3:
	.cfi_def_cfa wsp, 0
	.cfi_same_value w30
	.cfi_same_value w29
	.cfi_same_value w19
	.cfi_same_value w20
	ret
LBB13_4:
	.cfi_restore_state
	ldr	x0, [x19, #32]
	bl	__ZdlPv
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE: ; @"_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE"
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB14_3
; %bb.1:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_remember_state
	mov	x19, x1
	mov	x20, x0
	ldr	x1, [x1]
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldr	x1, [x19, #8]
	mov	x0, x20
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEKN9Processor3$_0ENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldrsb	w8, [x19, #55]
	tbnz	w8, #31, LBB14_4
; %bb.2:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
LBB14_3:
	.cfi_def_cfa wsp, 0
	.cfi_same_value w30
	.cfi_same_value w29
	.cfi_same_value w19
	.cfi_same_value w20
	ret
LBB14_4:
	.cfi_restore_state
	ldr	x0, [x19, #32]
	bl	__ZdlPv
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp108:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp109:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB15_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB15_7
; %bb.3:
Ltmp111:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp112:
; %bb.4:
Ltmp113:
Lloh46:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh47:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp114:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp115:
	mov	w1, #32
	blr	x8
Ltmp116:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB15_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp118:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp119:
; %bb.8:
	cbnz	x0, LBB15_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp121:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp122:
LBB15_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_12:
Ltmp123:
	b	LBB15_15
LBB15_13:
Ltmp117:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB15_16
LBB15_14:
Ltmp120:
LBB15_15:
	mov	x20, x0
LBB15_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB15_18
LBB15_17:
Ltmp110:
	mov	x20, x0
LBB15_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp124:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp125:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB15_11
LBB15_20:
Ltmp126:
	mov	x19, x0
Ltmp127:
	bl	___cxa_end_catch
Ltmp128:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB15_22:
Ltmp129:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh46, Lloh47
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp108-Lfunc_begin6           ; >> Call Site 1 <<
	.uleb128 Ltmp109-Ltmp108                ;   Call between Ltmp108 and Ltmp109
	.uleb128 Ltmp110-Lfunc_begin6           ;     jumps to Ltmp110
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp111-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp112-Ltmp111                ;   Call between Ltmp111 and Ltmp112
	.uleb128 Ltmp120-Lfunc_begin6           ;     jumps to Ltmp120
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp113-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp116-Ltmp113                ;   Call between Ltmp113 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin6           ;     jumps to Ltmp117
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp118-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp119-Ltmp118                ;   Call between Ltmp118 and Ltmp119
	.uleb128 Ltmp120-Lfunc_begin6           ;     jumps to Ltmp120
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp121-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp122-Ltmp121                ;   Call between Ltmp121 and Ltmp122
	.uleb128 Ltmp123-Lfunc_begin6           ;     jumps to Ltmp123
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp122-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp124-Ltmp122                ;   Call between Ltmp122 and Ltmp124
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp125-Ltmp124                ;   Call between Ltmp124 and Ltmp125
	.uleb128 Ltmp126-Lfunc_begin6           ;     jumps to Ltmp126
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp127-Ltmp125                ;   Call between Ltmp125 and Ltmp127
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp128-Ltmp127                ;   Call between Ltmp127 and Ltmp128
	.uleb128 Ltmp129-Lfunc_begin6           ;     jumps to Ltmp129
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp128-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp128             ;   Call between Ltmp128 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB16_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB16_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB16_15
LBB16_3:
	cmp	x23, #1
	b.lt	LBB16_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB16_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB16_7
; %bb.6:
	add	x25, sp, #8
	strb	w23, [sp, #31]
	b	LBB16_8
LBB16_7:
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB16_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp130:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp131:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB16_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB16_15
	b	LBB16_12
LBB16_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB16_15
LBB16_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB16_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB16_15
LBB16_14:
	str	xzr, [x20, #24]
	b	LBB16_16
LBB16_15:
	mov	x19, #0
LBB16_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB16_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB16_18:
Ltmp132:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB16_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB16_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table16:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp130-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp130
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp131-Ltmp130                ;   Call between Ltmp130 and Ltmp131
	.uleb128 Ltmp132-Lfunc_begin7           ;     jumps to Ltmp132
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp131             ;   Call between Ltmp131 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ; -- Begin function _GLOBAL__sub_I_main.cpp
lCPI17_0:
	.quad	43                              ; 0x2b
	.quad	-9223372036854775760            ; 0x8000000000000030
lCPI17_1:
	.quad	32                              ; 0x20
	.quad	-9223372036854775760            ; 0x8000000000000030
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2
__GLOBAL__sub_I_main.cpp:               ; @_GLOBAL__sub_I_main.cpp
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	w0, #48
	bl	__Znwm
Lloh48:
	adrp	x19, __MergedGlobals@PAGE
Lloh49:
	add	x19, x19, __MergedGlobals@PAGEOFF
	str	x0, [x19]
Lloh50:
	adrp	x8, lCPI17_0@PAGE
Lloh51:
	ldr	q0, [x8, lCPI17_0@PAGEOFF]
	stur	q0, [x19, #8]
Lloh52:
	adrp	x8, l_.str@PAGE
Lloh53:
	add	x8, x8, l_.str@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	ldur	q0, [x8, #27]
	stur	q0, [x0, #27]
	strb	wzr, [x0, #43]
Lloh54:
	adrp	x20, __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@GOTPAGE
Lloh55:
	ldr	x20, [x20, __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@GOTPAGEOFF]
Lloh56:
	adrp	x21, ___dso_handle@PAGE
Lloh57:
	add	x21, x21, ___dso_handle@PAGEOFF
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	bl	___cxa_atexit
	mov	w0, #48
	bl	__Znwm
	str	x0, [x19, #24]!
Lloh58:
	adrp	x8, lCPI17_1@PAGE
Lloh59:
	ldr	q0, [x8, lCPI17_1@PAGEOFF]
	stur	q0, [x19, #8]
Lloh60:
	adrp	x8, l_.str.2@PAGE
Lloh61:
	add	x8, x8, l_.str.2@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x0]
	strb	wzr, [x0, #32]
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	___cxa_atexit
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdrp	Lloh58, Lloh60
	.loh AdrpLdr	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpLdrGot	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdrp	Lloh50, Lloh52
	.loh AdrpLdr	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aeiouy\303\241\303\251\303\255\303\263\303\272\303\243\341\272\275\304\251\303\265\305\251\303\242\303\252\303\256\303\264\303\273\303\245\303\244\303\266"

l_.str.2:                               ; @.str.2
	.asciz	"bcdfghjklmnpqrstvwxz\312\203\312\222\312\247\312\244\316\270\303\260"

l_.str.3:                               ; @.str.3
	.asciz	"loTSoFWOrds.txt"

l_.str.4:                               ; @.str.4
	.asciz	"Run "

l_.str.5:                               ; @.str.5
	.asciz	", Sum: "

l_.str.6:                               ; @.str.6
	.asciz	", Time taken:  "

l_.str.7:                               ; @.str.7
	.asciz	"ms"

l_.str.8:                               ; @.str.8
	.asciz	"Avg. time:  "

l_.str.9:                               ; @.str.9
	.asciz	"basic_string"

l_.str.10:                              ; @.str.10
	.asciz	"Error reading loTSoFWOrds.txt: "

l_.str.11:                              ; @.str.11
	.asciz	"vector"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	__GLOBAL__sub_I_main.cpp
.zerofill __DATA,__bss,__MergedGlobals,48,3 ; @_MergedGlobals
.subsections_via_symbols
