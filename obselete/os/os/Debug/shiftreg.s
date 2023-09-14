	.file	"shiftreg.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN8shiftregC2Ev,"ax",@progbits
.global	_ZN8shiftregC2Ev
	.type	_ZN8shiftregC2Ev, @function
_ZN8shiftregC2Ev:
.LFB7:
	.file 1 "../drivers/io/shift register/shiftreg.cpp"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN8shiftregC2Ev, .-_ZN8shiftregC2Ev
.global	_ZN8shiftregC1Ev
	.set	_ZN8shiftregC1Ev,_ZN8shiftregC2Ev
	.section	.text._ZN8shiftregC2EhhhP14portcontroller,"ax",@progbits
.global	_ZN8shiftregC2EhhhP14portcontroller
	.type	_ZN8shiftregC2EhhhP14portcontroller, @function
_ZN8shiftregC2EhhhP14portcontroller:
.LFB10:
	.loc 1 17 0
	.cfi_startproc
.LVL1:
	.loc 1 17 0
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
.LBB2:
	.loc 1 19 0
	st Z,r22
	.loc 1 20 0
	std Z+1,r20
	.loc 1 21 0
	std Z+2,r18
	.loc 1 22 0
	std Z+12,r17
	std Z+11,r16
	.loc 1 23 0
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	std Z+8,__zero_reg__
	std Z+9,__zero_reg__
	std Z+10,__zero_reg__
/* epilogue start */
.LBE2:
	.loc 1 24 0
	pop r17
	pop r16
.LVL2:
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN8shiftregC2EhhhP14portcontroller, .-_ZN8shiftregC2EhhhP14portcontroller
.global	_ZN8shiftregC1EhhhP14portcontroller
	.set	_ZN8shiftregC1EhhhP14portcontroller,_ZN8shiftregC2EhhhP14portcontroller
	.section	.text._ZN8shiftreg9shiftout8Eh,"ax",@progbits
.global	_ZN8shiftreg9shiftout8Eh
	.type	_ZN8shiftreg9shiftout8Eh, @function
_ZN8shiftreg9shiftout8Eh:
.LFB13:
	.loc 1 32 0
	.cfi_startproc
.LVL3:
	push r14
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
.LVL4:
	.loc 1 32 0
	ldi r16,lo8(7)
	ldi r17,0
.LBB3:
	.loc 1 35 0
	mov r14,r22
	mov r15,__zero_reg__
.LVL5:
.L6:
	movw r24,r14
	mov r0,r16
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbiw r24,1
	brne .L4
	.loc 1 38 0
	ldi r20,lo8(1)
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL6:
	rjmp .L5
.L4:
	.loc 1 43 0
	ldi r20,0
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL7:
.L5:
	.loc 1 45 0 discriminator 2
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL8:
	.loc 1 46 0 discriminator 2
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL9:
.LVL10:
	subi r16,1
	sbc r17,__zero_reg__
	brcc .L6
.LBE3:
	.loc 1 49 0
	ldi r20,lo8(1)
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL11:
	.loc 1 51 0
	ldi r20,0
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL12:
/* epilogue start */
	.loc 1 53 0
	pop r29
	pop r28
.LVL13:
	pop r17
	pop r16
.LVL14:
	pop r15
	pop r14
.LVL15:
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN8shiftreg9shiftout8Eh, .-_ZN8shiftreg9shiftout8Eh
	.section	.text._ZN8shiftreg10shiftout16Ej,"ax",@progbits
.global	_ZN8shiftreg10shiftout16Ej
	.type	_ZN8shiftreg10shiftout16Ej, @function
_ZN8shiftreg10shiftout16Ej:
.LFB14:
	.loc 1 55 0
	.cfi_startproc
.LVL16:
	push r12
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	.loc 1 56 0
	mov r14,r23
	clr r15
.LVL17:
	ldi r16,lo8(15)
	ldi r17,0
.LBB4:
	.loc 1 60 0
	movw r12,r22
	clr r13
.LVL18:
.L11:
	movw r24,r12
	mov r0,r16
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbiw r24,1
	brne .L9
	.loc 1 63 0
	ldi r20,lo8(1)
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL19:
	rjmp .L10
.L9:
	.loc 1 68 0
	ldi r20,0
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL20:
.L10:
	.loc 1 70 0 discriminator 2
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL21:
	.loc 1 72 0 discriminator 2
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL22:
.LVL23:
	subi r16,1
	sbc r17,__zero_reg__
	brcc .L11
	ldi r16,lo8(7)
	ldi r17,0
.LVL24:
.L14:
.LBE4:
.LBB5:
	.loc 1 77 0
	movw r24,r14
	mov r0,r16
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbiw r24,1
	brne .L12
	.loc 1 80 0
	ldi r20,lo8(1)
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL25:
	rjmp .L13
.L12:
	.loc 1 85 0
	ldi r20,0
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL26:
.L13:
	.loc 1 87 0 discriminator 2
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL27:
	.loc 1 88 0 discriminator 2
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL28:
.LVL29:
	subi r16,1
	sbc r17,__zero_reg__
	brcc .L14
.LBE5:
	.loc 1 91 0
	ldi r20,lo8(1)
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL30:
	.loc 1 93 0
	ldi r20,0
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL31:
/* epilogue start */
	.loc 1 95 0
	pop r29
	pop r28
.LVL32:
	pop r17
	pop r16
.LVL33:
	pop r15
	pop r14
.LVL34:
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN8shiftreg10shiftout16Ej, .-_ZN8shiftreg10shiftout16Ej
	.section	.text._ZN8shiftreg8shiftoutEv,"ax",@progbits
.global	_ZN8shiftreg8shiftoutEv
	.type	_ZN8shiftreg8shiftoutEv, @function
_ZN8shiftreg8shiftoutEv:
.LFB12:
	.loc 1 26 0
	.cfi_startproc
.LVL35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 27 0
	movw r30,r24
	ldd r22,Z+3
	ldd r23,Z+4
	call _ZN8shiftreg10shiftout16Ej
.LVL36:
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN8shiftreg8shiftoutEv, .-_ZN8shiftreg8shiftoutEv
	.section	.text._ZN8shiftreg10shiftout32Em,"ax",@progbits
.global	_ZN8shiftreg10shiftout32Em
	.type	_ZN8shiftreg10shiftout32Em, @function
_ZN8shiftreg10shiftout32Em:
.LFB15:
	.loc 1 97 0
	.cfi_startproc
.LVL37:
	push r12
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI22:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI23:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	movw r12,r20
	movw r14,r22
.LVL38:
	.loc 1 97 0
	ldi r16,lo8(31)
	ldi r17,0
.LVL39:
.L21:
.LBB6:
	.loc 1 101 0
	movw r26,r14
	movw r24,r12
	mov r0,r16
	rjmp 2f
	1:
	lsr r27
	ror r26
	ror r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbiw r24,1
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L19
	.loc 1 104 0
	ldi r20,lo8(1)
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL40:
	rjmp .L20
.L19:
	.loc 1 109 0
	ldi r20,0
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL41:
.L20:
	.loc 1 111 0 discriminator 2
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL42:
	.loc 1 112 0 discriminator 2
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL43:
.LVL44:
	subi r16,1
	sbc r17,__zero_reg__
	brcc .L21
.LBE6:
	.loc 1 115 0
	ldi r20,lo8(1)
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL45:
	.loc 1 117 0
	ldi r20,0
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL46:
/* epilogue start */
	.loc 1 119 0
	pop r29
	pop r28
.LVL47:
	pop r17
	pop r16
.LVL48:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL49:
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN8shiftreg10shiftout32Em, .-_ZN8shiftreg10shiftout32Em
	.section	.text._ZN8shiftreg10shiftout64Ey,"ax",@progbits
.global	_ZN8shiftreg10shiftout64Ey
	.type	_ZN8shiftreg10shiftout64Ey, @function
_ZN8shiftreg10shiftout64Ey:
.LFB16:
	.loc 1 121 0
	.cfi_startproc
.LVL50:
	push r7
.LCFI24:
	.cfi_def_cfa_offset 3
	.cfi_offset 7, -2
	push r8
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI26:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI27:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI28:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI30:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI31:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI32:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI33:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI34:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI35:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI36:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r28,r24
	mov r7,r16
	mov r8,r18
	mov r9,r19
	mov r10,r20
	mov r11,r21
	mov r12,r22
	mov r13,r23
.LVL51:
	.loc 1 121 0
	set
	clr r14
	bld r14,6
	mov r15,__zero_reg__
.LVL52:
.L26:
.LBB7:
	.loc 1 125 0
	mov r18,r7
	mov r19,r17
	mov r20,r8
	mov r21,r9
	mov r22,r10
	mov r23,r11
	mov r24,r12
	mov r25,r13
	mov r16,r14
	call __lshrdi3
	ldi r26,lo8(1)
	call __cmpdi2_s8
	brne .L24
	.loc 1 128 0
	ldi r20,lo8(1)
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL53:
	rjmp .L25
.L24:
	.loc 1 133 0
	ldi r20,0
	ld r22,Y
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL54:
.L25:
	.loc 1 135 0 discriminator 2
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL55:
	.loc 1 136 0 discriminator 2
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL56:
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
.LVL57:
	.loc 1 123 0 discriminator 2
	brne .L26
.LBE7:
	.loc 1 139 0
	ldi r20,lo8(1)
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL58:
	.loc 1 141 0
	ldi r20,0
	ldd r22,Y+2
	ldd r24,Y+11
	ldd r25,Y+12
	call _ZN14portcontroller12digitalwriteEhb
.LVL59:
/* epilogue start */
	.loc 1 143 0
	pop r29
	pop r28
.LVL60:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL61:
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN8shiftreg10shiftout64Ey, .-_ZN8shiftreg10shiftout64Ey
	.section	.text._ZN8shiftregD2Ev,"ax",@progbits
.global	_ZN8shiftregD2Ev
	.type	_ZN8shiftregD2Ev, @function
_ZN8shiftregD2Ev:
.LFB18:
	.loc 1 145 0
	.cfi_startproc
.LVL62:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN8shiftregD2Ev, .-_ZN8shiftregD2Ev
.global	_ZN8shiftregD1Ev
	.set	_ZN8shiftregD1Ev,_ZN8shiftregD2Ev
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../drivers/io/shift register/../port controller/portcontroller.h"
	.file 4 "../drivers/io/shift register/shiftreg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa24
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF89
	.byte	0x4
	.long	.LASF90
	.long	.LASF91
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7e
	.long	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x80
	.long	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x82
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x85
	.long	0x29
	.uleb128 0x5
	.long	.LASF27
	.byte	0x1
	.byte	0x3
	.byte	0xf
	.long	0x3c3
	.uleb128 0x6
	.byte	0x1
	.long	.LASF27
	.byte	0x3
	.byte	0x18
	.long	.LASF29
	.byte	0x1
	.long	0xae
	.long	0xb5
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF11
	.byte	0x3
	.byte	0x19
	.long	.LASF13
	.long	0x3c9
	.byte	0x1
	.long	0xce
	.long	0xd5
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF12
	.byte	0x3
	.byte	0x1a
	.long	.LASF14
	.long	0x3c9
	.byte	0x1
	.long	0xee
	.long	0xf5
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF15
	.byte	0x3
	.byte	0x1b
	.long	.LASF16
	.long	0x3c9
	.byte	0x1
	.long	0x10e
	.long	0x115
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF17
	.byte	0x3
	.byte	0x1c
	.long	.LASF18
	.long	0x3c9
	.byte	0x1
	.long	0x12e
	.long	0x135
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF19
	.byte	0x3
	.byte	0x1d
	.long	.LASF20
	.long	0x3c9
	.byte	0x1
	.long	0x14e
	.long	0x155
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF21
	.byte	0x3
	.byte	0x1e
	.long	.LASF22
	.long	0x3c9
	.byte	0x1
	.long	0x16e
	.long	0x175
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF23
	.byte	0x3
	.byte	0x1f
	.long	.LASF24
	.long	0x3c9
	.byte	0x1
	.long	0x18e
	.long	0x195
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF25
	.byte	0x3
	.byte	0x20
	.long	.LASF26
	.long	0x3c9
	.byte	0x1
	.long	0x1ae
	.long	0x1b5
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF28
	.byte	0x3
	.byte	0x22
	.long	.LASF30
	.byte	0x1
	.long	0x1ca
	.long	0x1d6
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF31
	.byte	0x3
	.byte	0x23
	.long	.LASF32
	.byte	0x1
	.long	0x1eb
	.long	0x1f7
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF33
	.byte	0x3
	.byte	0x24
	.long	.LASF34
	.byte	0x1
	.long	0x20c
	.long	0x218
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF35
	.byte	0x3
	.byte	0x25
	.long	.LASF36
	.byte	0x1
	.long	0x22d
	.long	0x239
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF37
	.byte	0x3
	.byte	0x26
	.long	.LASF38
	.byte	0x1
	.long	0x24e
	.long	0x25a
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF39
	.byte	0x3
	.byte	0x27
	.long	.LASF40
	.byte	0x1
	.long	0x26f
	.long	0x27b
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF41
	.byte	0x3
	.byte	0x28
	.long	.LASF42
	.byte	0x1
	.long	0x290
	.long	0x29c
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF43
	.byte	0x3
	.byte	0x29
	.long	.LASF44
	.byte	0x1
	.long	0x2b1
	.long	0x2bd
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF45
	.byte	0x3
	.byte	0x2b
	.long	.LASF46
	.long	0x3c9
	.byte	0x1
	.long	0x2d6
	.long	0x2e2
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF47
	.byte	0x3
	.byte	0x34
	.long	.LASF48
	.byte	0x1
	.long	0x2f7
	.long	0x308
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3d0
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF49
	.byte	0x3
	.byte	0x36
	.long	.LASF50
	.byte	0x1
	.long	0x31d
	.long	0x32a
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x7
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF51
	.byte	0x3
	.byte	0x3b
	.long	.LASF52
	.byte	0x3
	.byte	0x1
	.long	0x340
	.long	0x351
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3d0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF53
	.byte	0x3
	.byte	0x3c
	.long	.LASF54
	.byte	0x3
	.byte	0x1
	.long	0x367
	.long	0x378
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3d0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF55
	.byte	0x3
	.byte	0x3d
	.long	.LASF56
	.byte	0x3
	.byte	0x1
	.long	0x38e
	.long	0x39f
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3d0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF57
	.byte	0x3
	.byte	0x3e
	.long	.LASF58
	.byte	0x3
	.byte	0x1
	.long	0x3b1
	.uleb128 0x7
	.long	0x3c3
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3d0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x8d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF59
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF60
	.uleb128 0x5
	.long	.LASF61
	.byte	0xd
	.byte	0x4
	.byte	0xf
	.long	0x534
	.uleb128 0xd
	.long	.LASF62
	.byte	0x4
	.byte	0x13
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x4
	.byte	0x14
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF64
	.byte	0x4
	.byte	0x15
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF65
	.byte	0x4
	.byte	0x16
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xd
	.long	.LASF66
	.byte	0x4
	.byte	0x17
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0x1d
	.long	.LASF67
	.byte	0x1
	.long	0x43e
	.long	0x445
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0x1e
	.long	.LASF68
	.byte	0x1
	.long	0x45a
	.long	0x475
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3c3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF69
	.byte	0x4
	.byte	0x1f
	.long	.LASF70
	.byte	0x1
	.long	0x48a
	.long	0x491
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF71
	.byte	0x4
	.byte	0x20
	.long	.LASF72
	.byte	0x1
	.long	0x4a6
	.long	0x4b2
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF73
	.byte	0x4
	.byte	0x21
	.long	.LASF74
	.byte	0x1
	.long	0x4c7
	.long	0x4d3
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x9
	.long	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF75
	.byte	0x4
	.byte	0x22
	.long	.LASF76
	.byte	0x1
	.long	0x4e8
	.long	0x4f4
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x9
	.long	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF77
	.byte	0x4
	.byte	0x23
	.long	.LASF78
	.byte	0x1
	.long	0x509
	.long	0x515
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF92
	.byte	0x4
	.byte	0x29
	.long	.LASF93
	.byte	0x1
	.long	0x526
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x7
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x3d7
	.uleb128 0xf
	.long	0x429
	.byte	0x1
	.byte	0xe
	.byte	0
	.long	0x54a
	.long	0x555
	.uleb128 0x10
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	0x534
	.uleb128 0x12
	.long	0x53a
	.long	.LASF83
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x578
	.byte	0x1
	.long	0x585
	.uleb128 0x13
	.long	0x54a
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xf
	.long	0x445
	.byte	0x1
	.byte	0x11
	.byte	0
	.long	0x595
	.long	0x5cc
	.uleb128 0x10
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.byte	0x11
	.long	0x37
	.uleb128 0x15
	.string	"clk"
	.byte	0x1
	.byte	0x11
	.long	0x37
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x11
	.long	0x37
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x11
	.long	0x3c3
	.byte	0
	.uleb128 0x16
	.long	0x585
	.long	.LASF84
	.long	.LFB10
	.long	.LFE10
	.long	.LLST0
	.long	0x5ea
	.byte	0x1
	.long	0x615
	.uleb128 0x13
	.long	0x595
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x13
	.long	0x59f
	.byte	0x1
	.byte	0x66
	.uleb128 0x13
	.long	0x5aa
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.long	0x5b5
	.byte	0x1
	.byte	0x62
	.uleb128 0x17
	.long	0x5c0
	.long	.LLST1
	.byte	0
	.uleb128 0x18
	.long	0x491
	.byte	0x1
	.byte	0x1f
	.long	.LFB13
	.long	.LFE13
	.long	.LLST2
	.long	0x631
	.byte	0x1
	.long	0x6d7
	.uleb128 0x19
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.long	.LLST3
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.byte	0x1f
	.long	0x37
	.long	.LLST4
	.uleb128 0x1b
	.long	.LBB3
	.long	.LBE3
	.long	0x6b3
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x21
	.long	0x3c9
	.long	.LLST5
	.uleb128 0x1d
	.long	.LVL6
	.long	0x2e2
	.long	0x67b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL7
	.long	0x2e2
	.long	0x68f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL8
	.long	0x2e2
	.long	0x6a2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL9
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL11
	.long	0x2e2
	.long	0x6c6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL12
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4b2
	.byte	0x1
	.byte	0x36
	.long	.LFB14
	.long	.LFE14
	.long	.LLST6
	.long	0x6f3
	.byte	0x1
	.long	0x817
	.uleb128 0x19
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.byte	0x36
	.long	0x50
	.long	.LLST8
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.byte	0x38
	.long	0x3c9
	.long	.LLST9
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.byte	0x39
	.long	0x3c9
	.long	.LLST10
	.uleb128 0x1b
	.long	.LBB4
	.long	.LBE4
	.long	0x791
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x3c9
	.long	.LLST11
	.uleb128 0x1d
	.long	.LVL19
	.long	0x2e2
	.long	0x75b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL20
	.long	0x2e2
	.long	0x76e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL21
	.long	0x2e2
	.long	0x781
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL22
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.long	0x7f4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x3c9
	.long	.LLST12
	.uleb128 0x1d
	.long	.LVL25
	.long	0x2e2
	.long	0x7be
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL26
	.long	0x2e2
	.long	0x7d1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL27
	.long	0x2e2
	.long	0x7e4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL28
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL30
	.long	0x2e2
	.long	0x807
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL31
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x475
	.byte	0x1
	.byte	0x19
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x833
	.byte	0x1
	.long	0x858
	.uleb128 0x19
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.long	.LLST13
	.uleb128 0x1f
	.long	.LVL36
	.long	0x6d7
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4d3
	.byte	0x1
	.byte	0x60
	.long	.LFB15
	.long	.LFE15
	.long	.LLST14
	.long	0x874
	.byte	0x1
	.long	0x917
	.uleb128 0x19
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.long	.LLST15
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0x60
	.long	0x69
	.long	.LLST16
	.uleb128 0x1b
	.long	.LBB6
	.long	.LBE6
	.long	0x8f4
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x63
	.long	0x3c9
	.long	.LLST17
	.uleb128 0x1d
	.long	.LVL40
	.long	0x2e2
	.long	0x8be
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL41
	.long	0x2e2
	.long	0x8d1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL42
	.long	0x2e2
	.long	0x8e4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL43
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL45
	.long	0x2e2
	.long	0x907
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL46
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4f4
	.byte	0x1
	.byte	0x78
	.long	.LFB16
	.long	.LFE16
	.long	.LLST18
	.long	0x933
	.byte	0x1
	.long	0x9d6
	.uleb128 0x19
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.long	.LLST19
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0x78
	.long	0x82
	.long	.LLST20
	.uleb128 0x1b
	.long	.LBB7
	.long	.LBE7
	.long	0x9b3
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x7b
	.long	0x3c9
	.long	.LLST21
	.uleb128 0x1d
	.long	.LVL53
	.long	0x2e2
	.long	0x97d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL54
	.long	0x2e2
	.long	0x990
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL55
	.long	0x2e2
	.long	0x9a3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL56
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL58
	.long	0x2e2
	.long	0x9c6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.long	.LVL59
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x515
	.byte	0x1
	.byte	0x91
	.byte	0
	.long	0x9e6
	.long	0x9fb
	.uleb128 0x10
	.long	.LASF79
	.long	0x555
	.byte	0x1
	.uleb128 0x10
	.long	.LASF88
	.long	0x9fb
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	0x49
	.uleb128 0x22
	.long	0x9d6
	.long	.LASF94
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xa1a
	.byte	0x1
	.uleb128 0x13
	.long	0x9e6
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB10
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE10
	.word	0x2
	.byte	0x88
	.sleb128 11
	.long	0
	.long	0
.LLST2:
	.long	.LFB13
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL5
	.word	0x1
	.byte	0x66
	.long	.LVL5
	.long	.LVL15
	.word	0x1
	.byte	0x5e
	.long	.LVL15
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL9
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x5
	.byte	0x38
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL10
	.long	.LVL14
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB14
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI15
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL17
	.long	.LVL34
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST10:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x66
	.long	.LVL18
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL22
	.word	0x5
	.byte	0x3f
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x5
	.byte	0x40
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x5
	.byte	0x3f
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL24
	.long	.LVL28
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x5
	.byte	0x38
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL29
	.long	.LVL33
	.word	0x5
	.byte	0x37
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL35
	.long	.LVL36-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LFB15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI23
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST15:
	.long	.LVL37
	.long	.LVL39
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL47
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL47
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL37
	.long	.LVL39
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL49
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL39
	.long	.LVL43
	.word	0x5
	.byte	0x4f
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL44
	.long	.LVL48
	.word	0x5
	.byte	0x4f
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LFB16
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI36
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST19:
	.long	.LVL50
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL60
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL50
	.long	.LVL52
	.word	0x18
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LFE16
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL51
	.long	.LVL52
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL56
	.word	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL57
	.long	.LVL61
	.word	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB7
	.long	.LFE7
	.long	.LFB10
	.long	.LFE10
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB12
	.long	.LFE12
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB18
	.long	.LFE18
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"_ZN8shiftregC2Ev"
.LASF91:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF20:
	.string	"_ZN14portcontroller8readddraEv"
.LASF93:
	.string	"_ZN8shiftregD4Ev"
.LASF11:
	.string	"readporta"
.LASF12:
	.string	"readportb"
.LASF15:
	.string	"readportc"
.LASF17:
	.string	"readportd"
.LASF10:
	.string	"uint64_t"
.LASF89:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF16:
	.string	"_ZN14portcontroller9readportcEv"
.LASF56:
	.string	"_ZN14portcontroller13digitalwritecEhb"
.LASF42:
	.string	"_ZN14portcontroller9writeddrcEc"
.LASF28:
	.string	"writeporta"
.LASF31:
	.string	"writeportb"
.LASF33:
	.string	"writeportc"
.LASF35:
	.string	"writeportd"
.LASF64:
	.string	"latchclkpin"
.LASF82:
	.string	"portcon"
.LASF86:
	.string	"highdata"
.LASF79:
	.string	"this"
.LASF14:
	.string	"_ZN14portcontroller9readportbEv"
.LASF48:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF45:
	.string	"digitalread"
.LASF3:
	.string	"uint8_t"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF60:
	.string	"bool"
.LASF94:
	.string	"_ZN8shiftregD2Ev"
.LASF87:
	.string	"data32"
.LASF53:
	.string	"digitalwriteb"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"_ZN14portcontroller9readportaEv"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF59:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF92:
	.string	"~shiftreg"
.LASF73:
	.string	"shiftout16"
.LASF74:
	.string	"_ZN8shiftreg10shiftout16Ej"
.LASF78:
	.string	"_ZN8shiftreg10shiftout64Ey"
.LASF49:
	.string	"~portcontroller"
.LASF21:
	.string	"readddrb"
.LASF71:
	.string	"shiftout8"
.LASF2:
	.string	"unsigned char"
.LASF63:
	.string	"clockpin"
.LASF81:
	.string	"rclk"
.LASF1:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF51:
	.string	"digitalwritea"
.LASF7:
	.string	"uint32_t"
.LASF55:
	.string	"digitalwritec"
.LASF57:
	.string	"digitalwrited"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF52:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF36:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF80:
	.string	"data"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF44:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF27:
	.string	"portcontroller"
.LASF54:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF88:
	.string	"__in_chrg"
.LASF26:
	.string	"_ZN14portcontroller8readddrdEv"
.LASF34:
	.string	"_ZN14portcontroller10writeportcEc"
.LASF19:
	.string	"readddra"
.LASF29:
	.string	"_ZN14portcontrollerC4Ev"
.LASF23:
	.string	"readddrc"
.LASF25:
	.string	"readddrd"
.LASF77:
	.string	"shiftout64"
.LASF66:
	.string	"port"
.LASF8:
	.string	"long unsigned int"
.LASF85:
	.string	"data16"
.LASF84:
	.string	"_ZN8shiftregC2EhhhP14portcontroller"
.LASF67:
	.string	"_ZN8shiftregC4Ev"
.LASF24:
	.string	"_ZN14portcontroller8readddrcEv"
.LASF32:
	.string	"_ZN14portcontroller10writeportbEc"
.LASF39:
	.string	"writeddrb"
.LASF41:
	.string	"writeddrc"
.LASF43:
	.string	"writeddrd"
.LASF40:
	.string	"_ZN14portcontroller9writeddrbEc"
.LASF69:
	.string	"shiftout"
.LASF50:
	.string	"_ZN14portcontrollerD4Ev"
.LASF90:
	.string	"../drivers/io/shift register/shiftreg.cpp"
.LASF68:
	.string	"_ZN8shiftregC4EhhhP14portcontroller"
.LASF61:
	.string	"shiftreg"
.LASF22:
	.string	"_ZN14portcontroller8readddrbEv"
.LASF58:
	.string	"_ZN14portcontroller13digitalwritedEhb"
.LASF75:
	.string	"shiftout32"
.LASF62:
	.string	"datapin"
.LASF30:
	.string	"_ZN14portcontroller10writeportaEc"
.LASF37:
	.string	"writeddra"
.LASF47:
	.string	"digitalwrite"
.LASF46:
	.string	"_ZN14portcontroller11digitalreadEh"
.LASF38:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF65:
	.string	"dataque"
.LASF18:
	.string	"_ZN14portcontroller9readportdEv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
