	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	__Z8sumCharsNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE ; -- Begin function _Z8sumCharsNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	2
__Z8sumCharsNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ; @_Z8sumCharsNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x0
	mov	x24, #0
	mov	x19, #0
Lloh0:
	adrp	x21, __ZL6VOCALS@PAGE
Lloh1:
	add	x21, x21, __ZL6VOCALS@PAGEOFF
Lloh2:
	adrp	x22, __ZL10CONSONANTS@PAGE
Lloh3:
	add	x22, x22, __ZL10CONSONANTS@PAGEOFF
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldrsb	w8, [x20, #23]
	tbnz	w8, #31, LBB0_3
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	and	x9, x8, #0xff
	mov	x8, x20
	cmp	x24, x9
	b.lo	LBB0_5
	b	LBB0_9
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [x20, #8]
	cmp	x8, x24
	b.ls	LBB0_9
; %bb.4:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [x20]
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrsb	w23, [x8, x24]
	mov	x0, x21
	mov	x1, x23
	mov	x2, #0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm
	cmn	x0, #1
	b.eq	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #2
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	and	w8, w23, #0xff
	sxtb	w1, w8
	mov	x0, x22
	mov	x2, #0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm
	cmn	x0, #1
	cset	w8, ne
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	x19, x19, x8
	add	x24, x24, #1
	b	LBB0_1
LBB0_9:
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
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
	sub	sp, sp, #864
Lloh4:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh5:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh6:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	x19, x0
Lloh7:
	adrp	x1, l_.str.3@PAGE
Lloh8:
	add	x1, x1, l_.str.3@PAGEOFF
	add	x20, sp, #272
	add	x0, sp, #272
	mov	w2, #8
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	ldr	x8, [sp, #272]
	ldur	x9, [x8, #-24]
	add	x9, x20, x9
	ldrb	w9, [x9, #32]
	mov	w10, #5
	tst	w9, w10
	b.eq	LBB1_8
; %bb.1:
Ltmp0:
Lloh9:
	adrp	x0, __ZNSt3__14cerrE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14cerrE@GOTPAGEOFF]
Lloh11:
	adrp	x1, l_.str.4@PAGE
Lloh12:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #23
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp1:
; %bb.2:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp2:
	add	x8, sp, #240
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp3:
; %bb.3:
Ltmp4:
Lloh13:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh14:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #240
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp5:
; %bb.4:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp6:
	mov	w1, #10
	blr	x8
Ltmp7:
; %bb.5:
	mov	x20, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
Ltmp9:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp10:
; %bb.6:
Ltmp11:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp12:
; %bb.7:
	mov	w19, #-1
	b	LBB1_193
LBB1_8:
	mov	x9, #2097
	movk	x9, #7340, lsl #16
	movk	x9, #25690, lsl #32
	movk	x9, #57147, lsl #48
	smulh	x9, x19, x9
	asr	x10, x9, #7
	add	x9, x10, x9, lsr #63
	str	x9, [sp]                        ; 8-byte Folded Spill
	add	x9, sp, #120
	add	x9, x9, #8
	stp	xzr, xzr, [sp, #128]
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	stp	xzr, x9, [sp, #112]
	stp	xzr, xzr, [sp, #96]
	add	x24, sp, #240
	orr	x9, x24, #0x1
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	add	x9, sp, #176
	orr	x9, x9, #0x1
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	add	x28, sp, #208
	add	x19, sp, #144
LBB1_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_16 Depth 2
                                        ;       Child Loop BB1_27 Depth 3
                                        ;       Child Loop BB1_45 Depth 3
	ldur	x8, [x8, #-24]
	add	x9, sp, #272
	add	x0, x9, x8
Ltmp14:
	add	x8, sp, #240
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp15:
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=1
Ltmp16:
	add	x0, sp, #240
Lloh15:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh16:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp17:
; %bb.11:                               ;   in Loop: Header=BB1_9 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp18:
	mov	w1, #10
	blr	x8
Ltmp19:
; %bb.12:                               ;   in Loop: Header=BB1_9 Depth=1
	mov	x20, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
Ltmp21:
	add	x0, sp, #272
	add	x1, sp, #96
	mov	x2, x20
	bl	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Ltmp22:
; %bb.13:                               ;   in Loop: Header=BB1_9 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldrb	w8, [x8, #32]
	mov	w9, #5
	tst	w8, w9
	b.ne	LBB1_75
; %bb.14:                               ;   in Loop: Header=BB1_9 Depth=1
	ldr	x20, [sp, #128]
	cbz	x20, LBB1_64
; %bb.15:                               ;   in Loop: Header=BB1_9 Depth=1
	ldr	x22, [sp, #48]                  ; 8-byte Folded Reload
LBB1_16:                                ;   Parent Loop BB1_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_27 Depth 3
                                        ;       Child Loop BB1_45 Depth 3
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_18
; %bb.17:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	q0, [sp, #96]
	str	q0, [sp, #240]
	ldr	x8, [sp, #112]
	str	x8, [sp, #256]
	b	LBB1_19
LBB1_18:                                ;   in Loop: Header=BB1_16 Depth=2
	ldp	x1, x2, [sp, #96]
Ltmp95:
	add	x0, sp, #240
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp96:
LBB1_19:                                ;   in Loop: Header=BB1_16 Depth=2
	add	x21, x20, #32
	ldrsb	w8, [x20, #55]
	tbnz	w8, #31, LBB1_21
; %bb.20:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	q0, [x21]
	str	q0, [sp, #208]
	ldr	x8, [x21, #16]
	str	x8, [sp, #224]
	b	LBB1_22
LBB1_21:                                ;   in Loop: Header=BB1_16 Depth=2
	ldp	x1, x2, [x20, #32]
Ltmp97:
	add	x0, sp, #208
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp98:
LBB1_22:                                ;   in Loop: Header=BB1_16 Depth=2
	ldrb	w8, [sp, #263]
	sxtb	w23, w8
	ldr	x26, [sp, #248]
	cmp	w23, #0
	csel	x2, x26, x8, lt
	ldrb	w9, [sp, #231]
	sxtb	w27, w9
	ldr	x10, [sp, #216]
	cmp	w27, #0
	csel	x25, x10, x9, lt
	cmp	x2, x25
	b.ne	LBB1_48
; %bb.23:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	x9, [sp, #240]
	cmp	w23, #0
	csel	x0, x9, x24, lt
	ldr	x10, [sp, #208]
	cmp	w27, #0
	csel	x1, x10, x28, lt
	tbnz	w23, #31, LBB1_29
; %bb.24:                               ;   in Loop: Header=BB1_16 Depth=2
	cbz	x2, LBB1_31
; %bb.25:                               ;   in Loop: Header=BB1_16 Depth=2
	ldrb	w10, [x1]
	cmp	w10, w9, uxtb
	b.ne	LBB1_47
; %bb.26:                               ;   in Loop: Header=BB1_16 Depth=2
	sub	x8, x8, #1
	add	x9, x1, #1
	ldr	x10, [sp, #56]                  ; 8-byte Folded Reload
LBB1_27:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_16 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cbz	x8, LBB1_31
; %bb.28:                               ;   in Loop: Header=BB1_27 Depth=3
	ldrb	w11, [x10], #1
	ldrb	w12, [x9], #1
	sub	x8, x8, #1
	cmp	w11, w12
	b.eq	LBB1_27
	b	LBB1_48
LBB1_29:                                ;   in Loop: Header=BB1_16 Depth=2
	cbz	x2, LBB1_31
; %bb.30:                               ;   in Loop: Header=BB1_16 Depth=2
	bl	_memcmp
	mov	x2, x26
	cbnz	w0, LBB1_48
LBB1_31:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	w25, #0
	tbz	w27, #31, LBB1_49
LBB1_32:                                ;   in Loop: Header=BB1_16 Depth=2
	ldr	x0, [sp, #208]
	bl	__ZdlPv
	ldrb	w23, [sp, #263]
	tbz	w23, #7, LBB1_50
LBB1_33:                                ;   in Loop: Header=BB1_16 Depth=2
	ldr	x0, [sp, #240]
	bl	__ZdlPv
	cbnz	w25, LBB1_51
LBB1_34:                                ;   in Loop: Header=BB1_16 Depth=2
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB1_36
; %bb.35:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	q0, [x21]
	str	q0, [sp, #176]
	ldr	x8, [x21, #16]
	str	x8, [sp, #192]
	b	LBB1_37
LBB1_36:                                ;   in Loop: Header=BB1_16 Depth=2
	ldp	x1, x2, [x20, #32]
Ltmp100:
	add	x0, sp, #176
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp101:
LBB1_37:                                ;   in Loop: Header=BB1_16 Depth=2
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_39
; %bb.38:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	q0, [sp, #96]
	str	q0, [sp, #144]
	ldr	x8, [sp, #112]
	str	x8, [sp, #160]
	b	LBB1_40
LBB1_39:                                ;   in Loop: Header=BB1_16 Depth=2
	ldp	x1, x2, [sp, #96]
Ltmp103:
	add	x0, sp, #144
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp104:
LBB1_40:                                ;   in Loop: Header=BB1_16 Depth=2
	ldrb	w8, [sp, #199]
	sxtb	w21, w8
	ldr	x26, [sp, #184]
	cmp	w21, #0
	csel	x2, x26, x8, lt
	ldrb	w9, [sp, #167]
	sxtb	w23, w9
	ldr	x10, [sp, #152]
	cmp	w23, #0
	csel	x25, x10, x9, lt
	cmp	x2, x25
	b.ne	LBB1_59
; %bb.41:                               ;   in Loop: Header=BB1_16 Depth=2
	ldr	x9, [sp, #176]
	cmp	w21, #0
	add	x10, sp, #176
	csel	x0, x9, x10, lt
	ldr	x10, [sp, #144]
	cmp	w23, #0
	csel	x1, x10, x19, lt
	tbnz	w21, #31, LBB1_53
; %bb.42:                               ;   in Loop: Header=BB1_16 Depth=2
	cbz	x2, LBB1_55
; %bb.43:                               ;   in Loop: Header=BB1_16 Depth=2
	ldrb	w10, [x1]
	cmp	w10, w9, uxtb
	b.ne	LBB1_58
; %bb.44:                               ;   in Loop: Header=BB1_16 Depth=2
	sub	x8, x8, #1
	add	x9, x1, #1
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
LBB1_45:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_16 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	cbz	x8, LBB1_55
; %bb.46:                               ;   in Loop: Header=BB1_45 Depth=3
	ldrb	w11, [x10], #1
	ldrb	w12, [x9], #1
	sub	x8, x8, #1
	cmp	w11, w12
	b.eq	LBB1_45
	b	LBB1_59
LBB1_47:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	x2, x8
LBB1_48:                                ;   in Loop: Header=BB1_16 Depth=2
	cmp	x2, x25
	cset	w25, hs
	tbnz	w27, #31, LBB1_32
LBB1_49:                                ;   in Loop: Header=BB1_16 Depth=2
	tbnz	w23, #7, LBB1_33
LBB1_50:                                ;   in Loop: Header=BB1_16 Depth=2
	cbz	w25, LBB1_34
LBB1_51:                                ;   in Loop: Header=BB1_16 Depth=2
	ldr	x8, [x20]
	cbz	x8, LBB1_65
; %bb.52:                               ;   in Loop: Header=BB1_16 Depth=2
	mov	x22, x20
	b	LBB1_63
LBB1_53:                                ;   in Loop: Header=BB1_16 Depth=2
	cbz	x2, LBB1_55
; %bb.54:                               ;   in Loop: Header=BB1_16 Depth=2
	bl	_memcmp
	mov	x2, x26
	cbnz	w0, LBB1_59
LBB1_55:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	w25, #0
	tbz	w23, #31, LBB1_60
LBB1_56:                                ;   in Loop: Header=BB1_16 Depth=2
	ldr	x0, [sp, #144]
	bl	__ZdlPv
	ldrb	w21, [sp, #199]
	tbz	w21, #7, LBB1_61
LBB1_57:                                ;   in Loop: Header=BB1_16 Depth=2
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	cbnz	w25, LBB1_62
	b	LBB1_66
LBB1_58:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	x2, x8
LBB1_59:                                ;   in Loop: Header=BB1_16 Depth=2
	cmp	x2, x25
	cset	w25, hs
	tbnz	w23, #31, LBB1_56
LBB1_60:                                ;   in Loop: Header=BB1_16 Depth=2
	tbnz	w21, #7, LBB1_57
LBB1_61:                                ;   in Loop: Header=BB1_16 Depth=2
	cbz	w25, LBB1_66
LBB1_62:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	x22, x20
	ldr	x8, [x22, #8]!
	cbz	x8, LBB1_66
LBB1_63:                                ;   in Loop: Header=BB1_16 Depth=2
	mov	x20, x8
	b	LBB1_16
LBB1_64:                                ;   in Loop: Header=BB1_9 Depth=1
	ldr	x22, [sp, #48]                  ; 8-byte Folded Reload
	mov	x20, x22
	b	LBB1_66
LBB1_65:                                ;   in Loop: Header=BB1_9 Depth=1
	mov	x22, x20
LBB1_66:                                ;   in Loop: Header=BB1_9 Depth=1
	ldr	x8, [x22]
	cbnz	x8, LBB1_74
; %bb.67:                               ;   in Loop: Header=BB1_9 Depth=1
Ltmp106:
	mov	w0, #56
	bl	__Znwm
Ltmp107:
; %bb.68:                               ;   in Loop: Header=BB1_9 Depth=1
	mov	x21, x0
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	stp	x0, x8, [sp, #240]
	strb	wzr, [sp, #256]
	add	x0, x0, #32
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_70
; %bb.69:                               ;   in Loop: Header=BB1_9 Depth=1
	ldr	q0, [sp, #96]
	str	q0, [x0]
	ldr	x8, [sp, #112]
	str	x8, [x0, #16]
	b	LBB1_71
LBB1_70:                                ;   in Loop: Header=BB1_9 Depth=1
	ldp	x1, x2, [sp, #96]
Ltmp109:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp110:
LBB1_71:                                ;   in Loop: Header=BB1_9 Depth=1
	stp	xzr, xzr, [x21]
	str	x20, [x21, #16]
	str	x21, [x22]
	ldr	x8, [sp, #120]
	ldr	x8, [x8]
	cbz	x8, LBB1_73
; %bb.72:                               ;   in Loop: Header=BB1_9 Depth=1
	str	x8, [sp, #120]
	ldr	x21, [x22]
LBB1_73:                                ;   in Loop: Header=BB1_9 Depth=1
	ldr	x0, [sp, #128]
	mov	x1, x21
	bl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	ldr	x8, [sp, #136]
	add	x8, x8, #1
	str	x8, [sp, #136]
LBB1_74:                                ;   in Loop: Header=BB1_9 Depth=1
	ldr	x8, [sp, #272]
	b	LBB1_9
LBB1_75:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB1_77
; %bb.76:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB1_77:
	add	x8, sp, #272
	add	x0, x8, #16
Ltmp23:
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp24:
; %bb.78:
	cbnz	x0, LBB1_80
; %bb.79:
	ldr	x8, [sp, #272]
	ldur	x8, [x8, #-24]
	add	x9, sp, #272
	add	x0, x9, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x4
Ltmp25:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp26:
LBB1_80:
	ldr	x23, [sp, #120]
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	cmp	x23, x8
	b.eq	LBB1_173
; %bb.81:
	str	xzr, [sp, #40]                  ; 8-byte Folded Spill
	mov	x28, #0
	str	xzr, [sp, #8]                   ; 8-byte Folded Spill
	mov	w8, #-1
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	mov	w8, #-1
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
LBB1_82:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_102 Depth 2
                                        ;     Child Loop BB1_147 Depth 2
                                        ;     Child Loop BB1_149 Depth 2
	ldrsb	w8, [x23, #55]
	tbnz	w8, #31, LBB1_84
; %bb.83:                               ;   in Loop: Header=BB1_82 Depth=1
	add	x8, x23, #32
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	x8, [x8, #16]
	str	x8, [sp, #112]
	b	LBB1_85
LBB1_84:                                ;   in Loop: Header=BB1_82 Depth=1
	ldp	x1, x2, [x23, #32]
Ltmp28:
	add	x0, sp, #96
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp29:
LBB1_85:                                ;   in Loop: Header=BB1_82 Depth=1
	ldrb	w8, [sp, #119]
	sxtb	w9, w8
	ldr	x10, [sp, #104]
	cmp	w9, #0
	csel	x24, x10, x8, lt
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	cmp	x24, w8, sxtw
	b.ne	LBB1_87
; %bb.86:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	w9, [sp, #36]                   ; 4-byte Folded Reload
	b	LBB1_100
LBB1_87:                                ;   in Loop: Header=BB1_82 Depth=1
Ltmp31:
	mov	w0, #24
	bl	__Znwm
Ltmp32:
; %bb.88:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x20, x0
	str	xzr, [x0, #16]
	mov	x8, x0
	str	xzr, [x8, #8]!
	str	x8, [x0]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	cmp	x28, x8
	b.hs	LBB1_90
; %bb.89:                               ;   in Loop: Header=BB1_82 Depth=1
	str	x20, [x28], #8
	b	LBB1_99
LBB1_90:                                ;   in Loop: Header=BB1_82 Depth=1
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	sub	x21, x28, x10
	asr	x19, x21, #3
	add	x8, x19, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB1_195
; %bb.91:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	sub	x9, x9, x10
	asr	x10, x9, #2
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775800
	cmp	x9, x10
	mov	x9, #2305843009213693951
	csel	x25, x8, x9, lo
	cbz	x25, LBB1_95
; %bb.92:                               ;   in Loop: Header=BB1_82 Depth=1
	lsr	x8, x25, #61
	cbnz	x8, LBB1_196
; %bb.93:                               ;   in Loop: Header=BB1_82 Depth=1
	lsl	x0, x25, #3
Ltmp33:
	bl	__Znwm
Ltmp34:
; %bb.94:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x22, x0
	b	LBB1_96
LBB1_95:                                ;   in Loop: Header=BB1_82 Depth=1
	mov	x22, #0
LBB1_96:                                ;   in Loop: Header=BB1_82 Depth=1
	add	x28, x22, x19, lsl #3
	add	x8, x22, x25, lsl #3
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x20, [x28], #8
	mov	x0, x22
	ldr	x19, [sp, #40]                  ; 8-byte Folded Reload
	mov	x1, x19
	mov	x2, x21
	bl	_memmove
	cbz	x19, LBB1_98
; %bb.97:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x0, x19
	bl	__ZdlPv
LBB1_98:                                ;   in Loop: Header=BB1_82 Depth=1
	str	x22, [sp, #40]                  ; 8-byte Folded Spill
LBB1_99:                                ;   in Loop: Header=BB1_82 Depth=1
	ldr	w9, [sp, #36]                   ; 4-byte Folded Reload
	add	w9, w9, #1
	mov	x8, x24
	str	w24, [sp, #20]                  ; 4-byte Folded Spill
LBB1_100:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [x8, w9, sxtw #3]
	mov	x22, x8
	ldr	x25, [x22, #8]!
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	cbz	x25, LBB1_134
; %bb.101:                              ;   in Loop: Header=BB1_82 Depth=1
	add	x22, x8, #8
	str	x28, [sp, #56]                  ; 8-byte Folded Spill
LBB1_102:                               ;   Parent Loop BB1_82 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_104
; %bb.103:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	q0, [sp, #96]
	str	q0, [sp, #240]
	ldr	x8, [sp, #112]
	str	x8, [sp, #256]
	b	LBB1_105
LBB1_104:                               ;   in Loop: Header=BB1_102 Depth=2
	ldp	x1, x2, [sp, #96]
Ltmp41:
	add	x0, sp, #240
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp42:
LBB1_105:                               ;   in Loop: Header=BB1_102 Depth=2
	add	x28, x25, #32
	ldrsb	w8, [x25, #55]
	tbnz	w8, #31, LBB1_107
; %bb.106:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	q0, [x28]
	str	q0, [sp, #208]
	ldr	x8, [x28, #16]
	str	x8, [sp, #224]
	b	LBB1_108
LBB1_107:                               ;   in Loop: Header=BB1_102 Depth=2
	ldp	x1, x2, [x25, #32]
Ltmp43:
	add	x0, sp, #208
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp44:
LBB1_108:                               ;   in Loop: Header=BB1_102 Depth=2
	ldrb	w8, [sp, #231]
	sxtb	w19, w8
	ldp	x20, x9, [sp, #208]
	cmp	w19, #0
	csel	x27, x9, x8, lt
	ldrb	w8, [sp, #263]
	sxtb	w26, w8
	ldr	x9, [sp, #248]
	cmp	w26, #0
	csel	x24, x9, x8, lt
	cmp	x27, x24
	csel	x2, x27, x24, lo
	cbz	x2, LBB1_115
; %bb.109:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	x8, [sp, #240]
	cmp	w26, #0
	add	x9, sp, #240
	csel	x0, x8, x9, lt
	cmp	w19, #0
	add	x8, sp, #208
	csel	x1, x20, x8, lt
	bl	_memcmp
	mov	x21, x0
	cbz	w0, LBB1_115
; %bb.110:                              ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w19, #31, LBB1_116
LBB1_111:                               ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w26, #7, LBB1_117
LBB1_112:                               ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w21, #31, LBB1_118
LBB1_113:                               ;   in Loop: Header=BB1_102 Depth=2
	ldrsb	w8, [x28, #23]
	tbnz	w8, #31, LBB1_120
; %bb.114:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	q0, [x28]
	str	q0, [sp, #176]
	ldr	x8, [x28, #16]
	str	x8, [sp, #192]
	ldr	x28, [sp, #56]                  ; 8-byte Folded Reload
	b	LBB1_121
LBB1_115:                               ;   in Loop: Header=BB1_102 Depth=2
	cmp	x27, x24
	cset	w8, lo
	cmp	x24, x27
	csinv	w21, w8, wzr, hs
	tbz	w19, #31, LBB1_111
LBB1_116:                               ;   in Loop: Header=BB1_102 Depth=2
	mov	x0, x20
	bl	__ZdlPv
	ldrb	w26, [sp, #263]
	tbz	w26, #7, LBB1_112
LBB1_117:                               ;   in Loop: Header=BB1_102 Depth=2
	ldr	x0, [sp, #240]
	bl	__ZdlPv
	tbz	w21, #31, LBB1_113
LBB1_118:                               ;   in Loop: Header=BB1_102 Depth=2
	ldr	x8, [x25]
	cbz	x8, LBB1_135
; %bb.119:                              ;   in Loop: Header=BB1_102 Depth=2
	mov	x22, x25
	b	LBB1_133
LBB1_120:                               ;   in Loop: Header=BB1_102 Depth=2
	ldp	x1, x2, [x25, #32]
Ltmp46:
	add	x0, sp, #176
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp47:
	ldr	x28, [sp, #56]                  ; 8-byte Folded Reload
LBB1_121:                               ;   in Loop: Header=BB1_102 Depth=2
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_123
; %bb.122:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	q0, [sp, #96]
	str	q0, [sp, #144]
	ldr	x8, [sp, #112]
	str	x8, [sp, #160]
	b	LBB1_124
LBB1_123:                               ;   in Loop: Header=BB1_102 Depth=2
	ldp	x1, x2, [sp, #96]
Ltmp49:
	add	x0, sp, #144
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp50:
LBB1_124:                               ;   in Loop: Header=BB1_102 Depth=2
	ldrb	w8, [sp, #167]
	sxtb	w19, w8
	ldp	x20, x9, [sp, #144]
	cmp	w19, #0
	csel	x27, x9, x8, lt
	ldrb	w8, [sp, #199]
	sxtb	w26, w8
	ldr	x9, [sp, #184]
	cmp	w26, #0
	csel	x24, x9, x8, lt
	cmp	x27, x24
	csel	x2, x27, x24, lo
	cbz	x2, LBB1_129
; %bb.125:                              ;   in Loop: Header=BB1_102 Depth=2
	ldr	x8, [sp, #176]
	cmp	w26, #0
	add	x9, sp, #176
	csel	x0, x8, x9, lt
	cmp	w19, #0
	add	x8, sp, #144
	csel	x1, x20, x8, lt
	bl	_memcmp
	mov	x21, x0
	cbz	w0, LBB1_129
; %bb.126:                              ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w19, #31, LBB1_130
LBB1_127:                               ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w26, #7, LBB1_131
LBB1_128:                               ;   in Loop: Header=BB1_102 Depth=2
	tbnz	w21, #31, LBB1_132
	b	LBB1_136
LBB1_129:                               ;   in Loop: Header=BB1_102 Depth=2
	cmp	x27, x24
	cset	w8, lo
	cmp	x24, x27
	csinv	w21, w8, wzr, hs
	tbz	w19, #31, LBB1_127
LBB1_130:                               ;   in Loop: Header=BB1_102 Depth=2
	mov	x0, x20
	bl	__ZdlPv
	ldrb	w26, [sp, #199]
	tbz	w26, #7, LBB1_128
LBB1_131:                               ;   in Loop: Header=BB1_102 Depth=2
	ldr	x0, [sp, #176]
	bl	__ZdlPv
	tbz	w21, #31, LBB1_136
LBB1_132:                               ;   in Loop: Header=BB1_102 Depth=2
	mov	x22, x25
	ldr	x8, [x22, #8]!
	cbz	x8, LBB1_136
LBB1_133:                               ;   in Loop: Header=BB1_102 Depth=2
	mov	x25, x8
	b	LBB1_102
LBB1_134:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x25, x22
	b	LBB1_136
LBB1_135:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x22, x25
	ldr	x28, [sp, #56]                  ; 8-byte Folded Reload
LBB1_136:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x8, [x22]
	cbnz	x8, LBB1_144
; %bb.137:                              ;   in Loop: Header=BB1_82 Depth=1
Ltmp52:
	mov	w0, #56
	bl	__Znwm
Ltmp53:
; %bb.138:                              ;   in Loop: Header=BB1_82 Depth=1
	mov	x21, x0
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, #8
	stp	x0, x8, [sp, #240]
	strb	wzr, [sp, #256]
	add	x0, x0, #32
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB1_140
; %bb.139:                              ;   in Loop: Header=BB1_82 Depth=1
	ldr	q0, [sp, #96]
	str	q0, [x0]
	ldr	x8, [sp, #112]
	str	x8, [x0, #16]
	b	LBB1_141
LBB1_140:                               ;   in Loop: Header=BB1_82 Depth=1
	ldp	x1, x2, [sp, #96]
Ltmp55:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp56:
LBB1_141:                               ;   in Loop: Header=BB1_82 Depth=1
	stp	xzr, xzr, [x21]
	str	x25, [x21, #16]
	str	x21, [x22]
	ldr	x19, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x8, [x19]
	ldr	x8, [x8]
	cbz	x8, LBB1_143
; %bb.142:                              ;   in Loop: Header=BB1_82 Depth=1
	str	x8, [x19]
	ldr	x21, [x22]
LBB1_143:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x0, [x19, #8]
	mov	x1, x21
	bl	__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
	ldr	x8, [x19, #16]
	add	x8, x8, #1
	str	x8, [x19, #16]
LBB1_144:                               ;   in Loop: Header=BB1_82 Depth=1
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB1_146
; %bb.145:                              ;   in Loop: Header=BB1_82 Depth=1
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB1_146:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x8, [x23, #8]
	cbz	x8, LBB1_148
LBB1_147:                               ;   Parent Loop BB1_82 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x23, x8
	ldr	x8, [x8]
	cbnz	x8, LBB1_147
	b	LBB1_151
LBB1_148:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x8, x23
	ldr	x9, [x8, #16]!
	ldr	x10, [x9]
	cmp	x10, x23
	b.eq	LBB1_150
LBB1_149:                               ;   Parent Loop BB1_82 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [x8]
	mov	x8, x9
	ldr	x23, [x8, #16]!
	ldr	x10, [x23]
	cmp	x10, x9
	b.ne	LBB1_149
	b	LBB1_151
LBB1_150:                               ;   in Loop: Header=BB1_82 Depth=1
	mov	x23, x9
LBB1_151:                               ;   in Loop: Header=BB1_82 Depth=1
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	cmp	x23, x8
	b.ne	LBB1_82
; %bb.152:
	ldr	x23, [sp, #40]                  ; 8-byte Folded Reload
	cmp	x23, x28
	b.eq	LBB1_174
; %bb.153:
	mov	x20, #0
	mov	x19, x23
LBB1_154:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_156 Depth 2
                                        ;       Child Loop BB1_164 Depth 3
                                        ;       Child Loop BB1_166 Depth 3
	ldr	x21, [x19]
	ldr	x8, [x21]
	add	x22, x21, #8
	cmp	x8, x22
	b.eq	LBB1_171
; %bb.155:                              ;   in Loop: Header=BB1_154 Depth=1
	mov	w23, #0
	ldr	w24, [x21, #16]
	mov	x25, x8
LBB1_156:                               ;   Parent Loop BB1_154 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_164 Depth 3
                                        ;       Child Loop BB1_166 Depth 3
	add	w23, w23, #1
	cmp	x25, x8
	b.eq	LBB1_163
; %bb.157:                              ;   in Loop: Header=BB1_156 Depth=2
	cmp	w23, w24
	b.eq	LBB1_163
; %bb.158:                              ;   in Loop: Header=BB1_156 Depth=2
	ldrsb	w8, [x25, #55]
	tbnz	w8, #31, LBB1_160
; %bb.159:                              ;   in Loop: Header=BB1_156 Depth=2
	add	x8, x25, #32
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	b	LBB1_161
LBB1_160:                               ;   in Loop: Header=BB1_156 Depth=2
	ldp	x1, x2, [x25, #32]
Ltmp58:
	add	x0, sp, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp59:
LBB1_161:                               ;   in Loop: Header=BB1_156 Depth=2
	add	x0, sp, #64
	bl	__Z8sumCharsNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	add	x20, x0, x20
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB1_163
; %bb.162:                              ;   in Loop: Header=BB1_156 Depth=2
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB1_163:                               ;   in Loop: Header=BB1_156 Depth=2
	ldr	x8, [x25, #8]
	cbz	x8, LBB1_165
LBB1_164:                               ;   Parent Loop BB1_154 Depth=1
                                        ;     Parent Loop BB1_156 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	mov	x25, x8
	ldr	x8, [x8]
	cbnz	x8, LBB1_164
	b	LBB1_168
LBB1_165:                               ;   in Loop: Header=BB1_156 Depth=2
	mov	x8, x25
	ldr	x9, [x8, #16]!
	ldr	x10, [x9]
	cmp	x10, x25
	b.eq	LBB1_167
LBB1_166:                               ;   Parent Loop BB1_154 Depth=1
                                        ;     Parent Loop BB1_156 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	x9, [x8]
	mov	x8, x9
	ldr	x25, [x8, #16]!
	ldr	x10, [x25]
	cmp	x10, x9
	b.ne	LBB1_166
	b	LBB1_168
LBB1_167:                               ;   in Loop: Header=BB1_156 Depth=2
	mov	x25, x9
LBB1_168:                               ;   in Loop: Header=BB1_156 Depth=2
	cmp	x25, x22
	b.eq	LBB1_170
; %bb.169:                              ;   in Loop: Header=BB1_156 Depth=2
	ldr	x8, [x21]
	b	LBB1_156
LBB1_170:                               ;   in Loop: Header=BB1_154 Depth=1
	ldr	x23, [sp, #40]                  ; 8-byte Folded Reload
	cbz	x21, LBB1_172
LBB1_171:                               ;   in Loop: Header=BB1_154 Depth=1
	ldr	x1, [x21, #8]
	mov	x0, x21
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	x0, x21
	bl	__ZdlPv
LBB1_172:                               ;   in Loop: Header=BB1_154 Depth=1
	add	x19, x19, #8
	cmp	x19, x28
	b.ne	LBB1_154
	b	LBB1_175
LBB1_173:
	mov	x23, #0
LBB1_174:
	mov	x20, #0
LBB1_175:
Ltmp61:
Lloh17:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh18:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh19:
	adrp	x1, l_.str.5@PAGE
Lloh20:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #10
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp62:
; %bb.176:
Ltmp63:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl
Ltmp64:
; %bb.177:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp65:
	add	x8, sp, #240
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp66:
; %bb.178:
Ltmp67:
Lloh21:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh22:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #240
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp68:
; %bb.179:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp69:
	mov	w1, #10
	blr	x8
Ltmp70:
; %bb.180:
	mov	x21, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
Ltmp72:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp73:
; %bb.181:
Ltmp74:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp75:
; %bb.182:
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	x20, x0
Ltmp77:
Lloh23:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh24:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh25:
	adrp	x1, l_.str.6@PAGE
Lloh26:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #13
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.183:
	mov	x8, #63439
	movk	x8, #58195, lsl #16
	movk	x8, #39845, lsl #32
	movk	x8, #8388, lsl #48
	smulh	x8, x20, x8
	asr	x9, x8, #7
	add	x8, x9, x8, lsr #63
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, x9
Ltmp79:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEx
Ltmp80:
; %bb.184:
Ltmp81:
Lloh27:
	adrp	x1, l_.str.7@PAGE
Lloh28:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #2
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.185:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp83:
	add	x8, sp, #240
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp84:
; %bb.186:
Ltmp85:
Lloh29:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh30:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #240
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp86:
; %bb.187:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp87:
	mov	w1, #10
	blr	x8
Ltmp88:
; %bb.188:
	mov	x21, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
Ltmp90:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp91:
; %bb.189:
Ltmp92:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp93:
; %bb.190:
	cbz	x23, LBB1_192
; %bb.191:
	mov	x0, x23
	bl	__ZdlPv
LBB1_192:
	ldr	x1, [sp, #128]
	add	x0, sp, #120
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	mov	w19, #0
LBB1_193:
Lloh31:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh32:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp, #272]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	add	x21, sp, #272
	str	x9, [x21, x8]
	add	x0, x21, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	add	x0, sp, #272
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x21, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldur	x8, [x29, #-96]
Lloh33:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh34:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh35:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_198
; %bb.194:
	mov	x0, x19
	add	sp, sp, #864
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB1_195:
Ltmp38:
	bl	__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS5_IS7_EEEENS5_ISB_EEE20__throw_length_errorB6v15006Ev
Ltmp39:
	b	LBB1_197
LBB1_196:
Ltmp36:
	bl	__ZSt28__throw_bad_array_new_lengthB6v15006v
Ltmp37:
LBB1_197:
	brk	#0x1
LBB1_198:
	bl	___stack_chk_fail
LBB1_199:
Ltmp27:
	mov	x20, x0
	b	LBB1_240
LBB1_200:
Ltmp89:
	b	LBB1_202
LBB1_201:
Ltmp71:
LBB1_202:
	mov	x20, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_230
LBB1_203:
Ltmp57:
	mov	x20, x0
	str	xzr, [sp, #240]
	add	x8, sp, #240
	add	x0, x8, #8
	mov	x1, x21
	bl	__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	b	LBB1_227
LBB1_204:
Ltmp8:
	mov	x20, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_241
LBB1_205:
Ltmp111:
	mov	x20, x0
	str	xzr, [sp, #240]
	add	x8, sp, #240
	add	x0, x8, #8
	mov	x1, x21
	bl	__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	b	LBB1_237
LBB1_206:
Ltmp76:
	b	LBB1_208
LBB1_207:
Ltmp94:
LBB1_208:
	mov	x20, x0
	b	LBB1_230
LBB1_209:
Ltmp13:
	mov	x20, x0
	b	LBB1_241
LBB1_210:
Ltmp54:
	b	LBB1_226
LBB1_211:
Ltmp30:
	b	LBB1_215
LBB1_212:
Ltmp40:
	b	LBB1_226
LBB1_213:
Ltmp35:
	b	LBB1_226
LBB1_214:
Ltmp60:
LBB1_215:
	mov	x20, x0
	b	LBB1_229
LBB1_216:
Ltmp51:
	mov	x20, x0
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB1_227
; %bb.217:
	ldr	x0, [sp, #176]
	b	LBB1_224
LBB1_218:
Ltmp20:
	mov	x20, x0
	add	x0, sp, #240
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_237
LBB1_219:
Ltmp108:
	b	LBB1_236
LBB1_220:
Ltmp105:
	mov	x20, x0
	ldrsb	w8, [sp, #199]
	tbz	w8, #31, LBB1_237
; %bb.221:
	ldr	x0, [sp, #176]
	b	LBB1_234
LBB1_222:
Ltmp45:
	mov	x20, x0
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB1_227
; %bb.223:
	ldr	x0, [sp, #240]
LBB1_224:
	bl	__ZdlPv
	b	LBB1_227
LBB1_225:
Ltmp48:
LBB1_226:
	mov	x20, x0
LBB1_227:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB1_229
; %bb.228:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB1_229:
	ldr	x23, [sp, #40]                  ; 8-byte Folded Reload
LBB1_230:
	cbz	x23, LBB1_240
; %bb.231:
	mov	x0, x23
	b	LBB1_239
LBB1_232:
Ltmp99:
	mov	x20, x0
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB1_237
; %bb.233:
	ldr	x0, [sp, #240]
LBB1_234:
	bl	__ZdlPv
	b	LBB1_237
LBB1_235:
Ltmp102:
LBB1_236:
	mov	x20, x0
LBB1_237:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB1_240
; %bb.238:
	ldr	x0, [sp, #96]
LBB1_239:
	bl	__ZdlPv
LBB1_240:
	ldr	x1, [sp, #128]
	add	x0, sp, #120
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
LBB1_241:
	add	x0, sp, #272
	bl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh4, Lloh5, Lloh6
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpLdrGot	Lloh15, Lloh16
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpLdrGot	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh21, Lloh22
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh23, Lloh24
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpLdrGotLdr	Lloh33, Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh31, Lloh32
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
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
	.uleb128 Ltmp13-Lfunc_begin0            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp4                    ;   Call between Ltmp4 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp12-Ltmp9                   ;   Call between Ltmp9 and Ltmp12
	.uleb128 Ltmp13-Lfunc_begin0            ;     jumps to Ltmp13
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp19-Ltmp16                  ;   Call between Ltmp16 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp96-Ltmp95                  ;   Call between Ltmp95 and Ltmp96
	.uleb128 Ltmp102-Lfunc_begin0           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp98-Ltmp97                  ;   Call between Ltmp97 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin0            ;     jumps to Ltmp99
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin0           ; >> Call Site 10 <<
	.uleb128 Ltmp101-Ltmp100                ;   Call between Ltmp100 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin0           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin0           ; >> Call Site 11 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp105-Lfunc_begin0           ;     jumps to Ltmp105
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin0           ; >> Call Site 12 <<
	.uleb128 Ltmp107-Ltmp106                ;   Call between Ltmp106 and Ltmp107
	.uleb128 Ltmp108-Lfunc_begin0           ;     jumps to Ltmp108
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin0           ; >> Call Site 13 <<
	.uleb128 Ltmp110-Ltmp109                ;   Call between Ltmp109 and Ltmp110
	.uleb128 Ltmp111-Lfunc_begin0           ;     jumps to Ltmp111
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp26-Ltmp23                  ;   Call between Ltmp23 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin0            ;     jumps to Ltmp30
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp34-Ltmp31                  ;   Call between Ltmp31 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp41-Ltmp34                  ;   Call between Ltmp34 and Ltmp41
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin0            ;     jumps to Ltmp45
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp47-Ltmp46                  ;   Call between Ltmp46 and Ltmp47
	.uleb128 Ltmp48-Lfunc_begin0            ;     jumps to Ltmp48
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp50-Ltmp49                  ;   Call between Ltmp49 and Ltmp50
	.uleb128 Ltmp51-Lfunc_begin0            ;     jumps to Ltmp51
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp53-Ltmp52                  ;   Call between Ltmp52 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin0            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp56-Ltmp55                  ;   Call between Ltmp55 and Ltmp56
	.uleb128 Ltmp57-Lfunc_begin0            ;     jumps to Ltmp57
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp58-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp59-Ltmp58                  ;   Call between Ltmp58 and Ltmp59
	.uleb128 Ltmp60-Lfunc_begin0            ;     jumps to Ltmp60
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp66-Ltmp61                  ;   Call between Ltmp61 and Ltmp66
	.uleb128 Ltmp76-Lfunc_begin0            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp70-Ltmp67                  ;   Call between Ltmp67 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin0            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp75-Ltmp72                  ;   Call between Ltmp72 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin0            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp84-Ltmp77                  ;   Call between Ltmp77 and Ltmp84
	.uleb128 Ltmp94-Lfunc_begin0            ;     jumps to Ltmp94
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp85-Lfunc_begin0            ; >> Call Site 29 <<
	.uleb128 Ltmp88-Ltmp85                  ;   Call between Ltmp85 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin0            ;     jumps to Ltmp89
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin0            ; >> Call Site 30 <<
	.uleb128 Ltmp93-Ltmp90                  ;   Call between Ltmp90 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin0            ;     jumps to Ltmp94
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin0            ; >> Call Site 31 <<
	.uleb128 Ltmp37-Ltmp38                  ;   Call between Ltmp38 and Ltmp37
	.uleb128 Ltmp40-Lfunc_begin0            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 32 <<
	.uleb128 Lfunc_end0-Ltmp37              ;   Call between Ltmp37 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
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
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x22, x2
	mov	x21, x1
	mov	x19, x0
Lloh36:
	adrp	x26, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh37:
	ldr	x26, [x26, __ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x25, x26, #64
	str	x25, [x0, #424]
	add	x20, x0, #16
Lloh38:
	adrp	x24, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh39:
	ldr	x24, [x24, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x24, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	str	xzr, [x0, #8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x23, x0, x8
Ltmp112:
	mov	x0, x23
	mov	x1, x20
	bl	__ZNSt3__18ios_base4initEPv
Ltmp113:
; %bb.1:
	str	xzr, [x23, #136]
	mov	w8, #-1
	str	w8, [x23, #144]
	add	x8, x26, #24
	str	x8, [x19]
	str	x25, [x19, #424]
Ltmp115:
	mov	x0, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp116:
; %bb.2:
	orr	w2, w22, #0x8
Ltmp118:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp119:
; %bb.3:
	cbnz	x0, LBB2_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x4
Ltmp120:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp121:
LBB2_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB2_6:
Ltmp117:
	mov	x21, x0
	b	LBB2_9
LBB2_7:
Ltmp114:
	mov	x21, x0
	b	LBB2_10
LBB2_8:
Ltmp122:
	mov	x21, x0
	mov	x0, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB2_9:
	add	x1, x24, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
LBB2_10:
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh38, Lloh39
	.loh AdrpLdrGot	Lloh36, Lloh37
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
	.uleb128 Ltmp112-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp113-Ltmp112                ;   Call between Ltmp112 and Ltmp113
	.uleb128 Ltmp114-Lfunc_begin1           ;     jumps to Ltmp114
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp116-Ltmp115                ;   Call between Ltmp115 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin1           ;     jumps to Ltmp117
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp121-Ltmp118                ;   Call between Ltmp118 and Ltmp121
	.uleb128 Ltmp122-Lfunc_begin1           ;     jumps to Ltmp122
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp121             ;   Call between Ltmp121 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
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
	mov	x19, x0
Lloh40:
	adrp	x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh41:
	ldr	x20, [x20, __ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #16
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #424
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh40, Lloh41
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x21, x1
	mov	x19, x0
	mov	x0, x1
	bl	_strlen
	mov	x8, #9223372036854775792
	cmp	x0, x8
	b.hs	LBB4_6
; %bb.1:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB4_3
; %bb.2:
	strb	w20, [x19, #23]
	mov	x22, x19
	cbnz	x20, LBB4_4
	b	LBB4_5
LBB4_3:
	add	x8, x20, #16
	and	x23, x8, #0xfffffffffffffff0
	mov	x0, x23
	bl	__Znwm
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [x19, #8]
	str	x0, [x19]
LBB4_4:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB4_5:
	strb	wzr, [x22, x20]
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB4_6:
	mov	x0, x19
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.cfi_endproc
                                        ; -- End function
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
Lloh42:
	adrp	x0, l_.str.8@PAGE
Lloh43:
	add	x0, x0, l_.str.8@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB6v15006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB6v15006EPKc
	.globl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB6v15006EPKc: ; @_ZNSt3__120__throw_length_errorB6v15006EPKc
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
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
Ltmp123:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B6v15006EPKc
Ltmp124:
; %bb.1:
Lloh44:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh45:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh46:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh47:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB6_2:
Ltmp125:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh44, Lloh45
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
	.uleb128 Ltmp123-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp124-Ltmp123                ;   Call between Ltmp123 and Ltmp124
	.uleb128 Ltmp125-Lfunc_begin2           ;     jumps to Ltmp125
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp124             ;   Call between Ltmp124 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
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
Lloh48:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh49:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh48, Lloh49
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
Lloh50:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh51:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh52:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh53:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh52, Lloh53
	.loh AdrpLdrGot	Lloh50, Lloh51
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
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
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
	mov	x21, x2
	mov	x19, x1
	mov	x20, x0
	cmp	x2, #22
	b.hi	LBB10_2
; %bb.1:
	strb	w21, [x20, #23]
	b	LBB10_4
LBB10_2:
	mov	x8, #9223372036854775792
	cmp	x21, x8
	b.hs	LBB10_5
; %bb.3:
	add	x8, x21, #16
	and	x22, x8, #0xfffffffffffffff0
	mov	x0, x22
	bl	__Znwm
	orr	x8, x22, #0x8000000000000000
	stp	x21, x8, [x20, #8]
	str	x0, [x20]
	mov	x20, x0
LBB10_4:
	add	x2, x21, #1
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_memmove
LBB10_5:
	mov	x0, x20
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS5_IS7_EEEENS5_ISB_EEE20__throw_length_errorB6v15006Ev
__ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS5_IS7_EEEENS5_ISB_EEE20__throw_length_errorB6v15006Ev: ; @"_ZNKSt3__16vectorIPNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS5_IS7_EEEENS5_ISB_EEE20__throw_length_errorB6v15006Ev"
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh54:
	adrp	x0, l_.str.9@PAGE
Lloh55:
	add	x0, x0, l_.str.9@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh54, Lloh55
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
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
Ltmp126:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp127:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB12_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB12_7
; %bb.3:
Ltmp129:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp130:
; %bb.4:
Ltmp131:
Lloh56:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh57:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp132:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp133:
	mov	w1, #32
	blr	x8
Ltmp134:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB12_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp136:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp137:
; %bb.8:
	cbnz	x0, LBB12_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp139:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp140:
LBB12_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB12_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB12_12:
Ltmp141:
	b	LBB12_15
LBB12_13:
Ltmp135:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB12_16
LBB12_14:
Ltmp138:
LBB12_15:
	mov	x20, x0
LBB12_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB12_18
LBB12_17:
Ltmp128:
	mov	x20, x0
LBB12_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp142:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp143:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB12_11
LBB12_20:
Ltmp144:
	mov	x19, x0
Ltmp145:
	bl	___cxa_end_catch
Ltmp146:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_22:
Ltmp147:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh56, Lloh57
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table12:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp126-Lfunc_begin3           ; >> Call Site 1 <<
	.uleb128 Ltmp127-Ltmp126                ;   Call between Ltmp126 and Ltmp127
	.uleb128 Ltmp128-Lfunc_begin3           ;     jumps to Ltmp128
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp129-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp130-Ltmp129                ;   Call between Ltmp129 and Ltmp130
	.uleb128 Ltmp138-Lfunc_begin3           ;     jumps to Ltmp138
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp131-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp134-Ltmp131                ;   Call between Ltmp131 and Ltmp134
	.uleb128 Ltmp135-Lfunc_begin3           ;     jumps to Ltmp135
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp136-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp137-Ltmp136                ;   Call between Ltmp136 and Ltmp137
	.uleb128 Ltmp138-Lfunc_begin3           ;     jumps to Ltmp138
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp139-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp140-Ltmp139                ;   Call between Ltmp139 and Ltmp140
	.uleb128 Ltmp141-Lfunc_begin3           ;     jumps to Ltmp141
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp140-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp142-Ltmp140                ;   Call between Ltmp140 and Ltmp142
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Ltmp143-Ltmp142                ;   Call between Ltmp142 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin3           ;     jumps to Ltmp144
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp143-Lfunc_begin3           ; >> Call Site 8 <<
	.uleb128 Ltmp145-Ltmp143                ;   Call between Ltmp143 and Ltmp145
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin3           ; >> Call Site 9 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin3           ;     jumps to Ltmp147
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp146-Lfunc_begin3           ; >> Call Site 10 <<
	.uleb128 Lfunc_end3-Ltmp146             ;   Call between Ltmp146 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
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
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
	cbz	x0, LBB13_16
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
	b.lt	LBB13_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB13_15
LBB13_3:
	cmp	x23, #1
	b.lt	LBB13_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB13_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB13_7
; %bb.6:
	add	x25, sp, #8
	strb	w23, [sp, #31]
	b	LBB13_8
LBB13_7:
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB13_8:
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
Ltmp148:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp149:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB13_11
; %bb.10:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB13_11:
	cmp	x24, x23
	b.ne	LBB13_15
LBB13_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB13_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB13_15
LBB13_14:
	str	xzr, [x20, #24]
	b	LBB13_16
LBB13_15:
	mov	x19, #0
LBB13_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB13_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB13_18:
Ltmp150:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB13_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB13_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp148-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp148
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp149-Ltmp148                ;   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin4           ;     jumps to Ltmp150
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp149-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp149             ;   Call between Ltmp149 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE: ; @"_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE"
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB14_4
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
	mov	x19, x1
	mov	x20, x0
	ldr	x1, [x1]
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldr	x1, [x19, #8]
	mov	x0, x20
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_1NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldrsb	w8, [x19, #55]
	tbz	w8, #31, LBB14_3
; %bb.2:
	ldr	x0, [x19, #32]
	bl	__ZdlPv
LBB14_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
LBB14_4:
	.cfi_def_cfa wsp, 0
	.cfi_same_value w30
	.cfi_same_value w29
	.cfi_same_value w19
	.cfi_same_value w20
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_ ; -- Begin function _ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.weak_def_can_be_hidden	__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
	.p2align	2
__ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_: ; @_ZNSt3__17getlineIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EES6_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
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
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	add	x0, sp, #8
	mov	x1, x19
	mov	w2, #1
	bl	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
	ldrb	w8, [sp, #8]
	cbz	w8, LBB15_17
; %bb.1:
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB15_3
; %bb.2:
	strb	wzr, [x21]
	strb	wzr, [x21, #23]
	b	LBB15_4
LBB15_3:
	ldr	x8, [x21]
	strb	wzr, [x8]
	str	xzr, [x21, #8]
LBB15_4:
	mov	x22, #0
	add	x23, x19, #40
	mov	x24, #-17
	movk	x24, #32767, lsl #48
LBB15_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	ldr	x0, [x23, x8]
	ldp	x8, x9, [x0, #24]
	cmp	x8, x9
	b.eq	LBB15_7
; %bb.6:                                ;   in Loop: Header=BB15_5 Depth=1
	add	x9, x8, #1
	str	x9, [x0, #24]
	ldrb	w8, [x8]
	b	LBB15_9
LBB15_7:                                ;   in Loop: Header=BB15_5 Depth=1
	ldr	x8, [x0]
	ldr	x8, [x8, #80]
Ltmp151:
	blr	x8
Ltmp152:
; %bb.8:                                ;   in Loop: Header=BB15_5 Depth=1
	mov	x8, x0
	cmn	w0, #1
	b.eq	LBB15_15
LBB15_9:                                ;   in Loop: Header=BB15_5 Depth=1
	and	w9, w8, #0xff
	cmp	w9, w20, uxtb
	b.eq	LBB15_14
; %bb.10:                               ;   in Loop: Header=BB15_5 Depth=1
Ltmp154:
	sxtb	w1, w8
	mov	x0, x21
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp155:
; %bb.11:                               ;   in Loop: Header=BB15_5 Depth=1
	ldrsb	w8, [x21, #23]
	sub	x22, x22, #1
	tbz	w8, #31, LBB15_5
; %bb.12:                               ;   in Loop: Header=BB15_5 Depth=1
	ldr	x8, [x21, #8]
	cmp	x8, x24
	b.ne	LBB15_5
; %bb.13:
	mov	w8, #4
	b	LBB15_16
LBB15_14:
	mov	w8, #0
	b	LBB15_16
LBB15_15:
	cmp	x22, #0
	mov	w8, #2
	mov	w9, #6
	csel	w8, w9, w8, eq
LBB15_16:
	ldr	x9, [x19]
	ldur	x9, [x9, #-24]
	add	x0, x19, x9
	ldr	w9, [x0, #32]
	orr	w1, w9, w8
	bl	__ZNSt3__18ios_base5clearEj
LBB15_17:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB15_18:
Ltmp153:
	b	LBB15_20
LBB15_19:
Ltmp156:
LBB15_20:
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x9, [x8, #-24]
	add	x9, x19, x9
	ldr	w10, [x9, #32]
	orr	w10, w10, #0x1
	str	w10, [x9, #32]
	ldur	x8, [x8, #-24]
	add	x8, x19, x8
	ldrb	w8, [x8, #36]
	tbnz	w8, #0, LBB15_22
; %bb.21:
	bl	___cxa_end_catch
	mov	w8, #1
	b	LBB15_16
LBB15_22:
Ltmp157:
	bl	___cxa_rethrow
Ltmp158:
; %bb.23:
	brk	#0x1
LBB15_24:
Ltmp159:
	mov	x19, x0
Ltmp160:
	bl	___cxa_end_catch
Ltmp161:
; %bb.25:
	mov	x0, x19
	bl	__Unwind_Resume
LBB15_26:
Ltmp162:
	bl	___clang_call_terminate
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table15:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp151-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp151
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp152-Ltmp151                ;   Call between Ltmp151 and Ltmp152
	.uleb128 Ltmp153-Lfunc_begin5           ;     jumps to Ltmp153
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp154-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp155-Ltmp154                ;   Call between Ltmp154 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin5           ;     jumps to Ltmp156
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp155-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp157-Ltmp155                ;   Call between Ltmp155 and Ltmp157
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp157-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp158-Ltmp157                ;   Call between Ltmp157 and Ltmp158
	.uleb128 Ltmp159-Lfunc_begin5           ;     jumps to Ltmp159
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp161-Ltmp160                ;   Call between Ltmp160 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin5           ;     jumps to Ltmp162
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp161-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Lfunc_end5-Ltmp161             ;   Call between Ltmp161 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
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
	b.eq	LBB16_9
; %bb.1:
	mov	w10, #1
LBB16_2:                                ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x1, #16]
	ldrb	w8, [x9, #24]
	cbnz	w8, LBB16_9
; %bb.3:                                ;   in Loop: Header=BB16_2 Depth=1
	ldr	x8, [x9, #16]
	ldr	x11, [x8]
	cmp	x11, x9
	b.eq	LBB16_6
; %bb.4:                                ;   in Loop: Header=BB16_2 Depth=1
	cbz	x11, LBB16_10
; %bb.5:                                ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w12, [x11, #24]!
	cbz	w12, LBB16_8
	b	LBB16_10
LBB16_6:                                ;   in Loop: Header=BB16_2 Depth=1
	ldr	x11, [x8, #8]
	cbz	x11, LBB16_12
; %bb.7:                                ;   in Loop: Header=BB16_2 Depth=1
	ldrb	w12, [x11, #24]!
	cbnz	w12, LBB16_12
LBB16_8:                                ;   in Loop: Header=BB16_2 Depth=1
	strb	w10, [x9, #24]
	mov	x1, x8
	cmp	x8, x0
	cset	w9, eq
	strb	w9, [x8, #24]
	strb	w10, [x11]
	b.ne	LBB16_2
LBB16_9:
	ret
LBB16_10:
	ldr	x10, [x9]
	cmp	x10, x1
	b.eq	LBB16_16
; %bb.11:
	mov	x1, x9
	b	LBB16_19
LBB16_12:
	ldr	x10, [x9]
	cmp	x10, x1
	b.eq	LBB16_22
; %bb.13:
	ldr	x10, [x9, #8]
	ldr	x11, [x10]
	str	x11, [x9, #8]
	cbz	x11, LBB16_15
; %bb.14:
	str	x9, [x11, #16]
	ldr	x8, [x9, #16]
LBB16_15:
	str	x8, [x10, #16]
	ldr	x8, [x9, #16]
	ldr	x11, [x8]
	cmp	x11, x9
	cset	w11, ne
	str	x10, [x8, w11, uxtw #3]
	str	x9, [x10]
	str	x10, [x9, #16]
	ldr	x8, [x10, #16]
	b	LBB16_23
LBB16_16:
	ldr	x10, [x1, #8]
	str	x10, [x9]
	cbz	x10, LBB16_18
; %bb.17:
	str	x9, [x10, #16]
	ldr	x8, [x9, #16]
LBB16_18:
	str	x8, [x1, #16]
	ldr	x8, [x9, #16]
	ldr	x10, [x8]
	cmp	x10, x9
	cset	w10, ne
	str	x1, [x8, w10, uxtw #3]
	str	x9, [x1, #8]
	str	x1, [x9, #16]
	ldr	x8, [x1, #16]
LBB16_19:
	mov	w9, #1
	strb	w9, [x1, #24]
	strb	wzr, [x8, #24]
	ldr	x9, [x8, #8]
	ldr	x10, [x9]
	str	x10, [x8, #8]
	cbz	x10, LBB16_21
; %bb.20:
	str	x8, [x10, #16]
LBB16_21:
	mov	x10, x8
	ldr	x11, [x10, #16]!
	str	x11, [x9, #16]
	ldr	x11, [x10]
	ldr	x12, [x11]
	cmp	x12, x8
	cset	w12, ne
	str	x9, [x11, w12, uxtw #3]
	str	x8, [x9]
	b	LBB16_26
LBB16_22:
	mov	x10, x9
LBB16_23:
	mov	w9, #1
	strb	w9, [x10, #24]
	strb	wzr, [x8, #24]
	ldr	x9, [x8]
	ldr	x10, [x9, #8]
	str	x10, [x8]
	cbz	x10, LBB16_25
; %bb.24:
	str	x8, [x10, #16]
LBB16_25:
	mov	x10, x8
	ldr	x11, [x10, #16]!
	str	x11, [x9, #16]
	ldr	x11, [x10]
	ldr	x12, [x11]
	cmp	x12, x8
	cset	w12, ne
	str	x9, [x11, w12, uxtw #3]
	str	x8, [x9, #8]
LBB16_26:
	str	x9, [x10]
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_ ; -- Begin function _ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	.globl	__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	.weak_def_can_be_hidden	__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	.p2align	2
__ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_: ; @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15006EPS9_
	.cfi_startproc
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
	mov	x19, x1
	ldrb	w8, [x0, #8]
	cbz	w8, LBB17_3
; %bb.1:
	ldrsb	w8, [x19, #55]
	tbz	w8, #31, LBB17_4
; %bb.2:
	ldr	x0, [x19, #32]
	bl	__ZdlPv
	b	LBB17_4
LBB17_3:
	cbz	x19, LBB17_5
LBB17_4:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
LBB17_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE: ; @"_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE"
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB18_4
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
	mov	x19, x1
	mov	x20, x0
	ldr	x1, [x1]
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldr	x1, [x19, #8]
	mov	x0, x20
	bl	__ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEZ4mainE3$_0NS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE
	ldrsb	w8, [x19, #55]
	tbz	w8, #31, LBB18_3
; %bb.2:
	ldr	x0, [x19, #32]
	bl	__ZdlPv
LBB18_3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZdlPv
LBB18_4:
	.cfi_def_cfa wsp, 0
	.cfi_same_value w30
	.cfi_same_value w29
	.cfi_same_value w19
	.cfi_same_value w20
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_main.cpp
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
Lloh58:
	adrp	x19, __ZL6VOCALS@PAGE
Lloh59:
	add	x19, x19, __ZL6VOCALS@PAGEOFF
Lloh60:
	adrp	x1, l_.str@PAGE
Lloh61:
	add	x1, x1, l_.str@PAGEOFF
	mov	x0, x19
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc
Lloh62:
	adrp	x20, __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@GOTPAGE
Lloh63:
	ldr	x20, [x20, __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev@GOTPAGEOFF]
Lloh64:
	adrp	x21, ___dso_handle@PAGE
Lloh65:
	add	x21, x21, ___dso_handle@PAGEOFF
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	bl	___cxa_atexit
Lloh66:
	adrp	x19, __ZL10CONSONANTS@PAGE
Lloh67:
	add	x19, x19, __ZL10CONSONANTS@PAGEOFF
Lloh68:
	adrp	x1, l_.str.2@PAGE
Lloh69:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	x0, x19
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006IDnEEPKc
	mov	x0, x20
	mov	x1, x19
	mov	x2, x21
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	___cxa_atexit
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpLdrGot	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,__ZL6VOCALS,24,3 ; @_ZL6VOCALS
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aeiouy\303\241\303\251\303\255\303\263\303\272\303\243\341\272\275\304\251\303\265\305\251\303\242\303\252\303\256\303\264\303\273\303\245\303\244\303\266"

.zerofill __DATA,__bss,__ZL10CONSONANTS,24,3 ; @_ZL10CONSONANTS
l_.str.2:                               ; @.str.2
	.asciz	"bcdfghjklmnpqrstvwxz\312\203\312\222\312\247\312\244\316\270\303\260"

l_.str.3:                               ; @.str.3
	.asciz	"loTSoFWOrds.txt"

l_.str.4:                               ; @.str.4
	.asciz	"No file loTSoFWOrds.txt"

l_.str.5:                               ; @.str.5
	.asciz	"TotalSum: "

l_.str.6:                               ; @.str.6
	.asciz	"Time taken:  "

l_.str.7:                               ; @.str.7
	.asciz	"ms"

l_.str.8:                               ; @.str.8
	.asciz	"basic_string"

l_.str.9:                               ; @.str.9
	.asciz	"vector"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	__GLOBAL__sub_I_main.cpp
.subsections_via_symbols
