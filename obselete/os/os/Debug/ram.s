	.file	"ram.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN3ramC2EP14portcontrollerP8shiftreghm,"ax",@progbits
.global	_ZN3ramC2EP14portcontrollerP8shiftreghm
	.type	_ZN3ramC2EP14portcontrollerP8shiftreghm, @function
_ZN3ramC2EP14portcontrollerP8shiftreghm:
.LFB8:
	.file 1 "../drivers/mem/volatile/ram.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	movw r24,r22
.LVL1:
.LBB8:
	.loc 1 14 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 15 0
	std Z+5,r21
	std Z+4,r20
	.loc 1 16 0
	std Z+1,r18
	.loc 1 17 0
	std Z+8,r14
	std Z+9,r15
	std Z+10,r16
	std Z+11,r17
	.loc 1 18 0
	st Z,__zero_reg__
	.loc 1 19 0
	ldi r20,lo8(1)
.LVL2:
	mov r22,r18
.LVL3:
	call _ZN14portcontroller12digitalwriteEhb
.LVL4:
/* epilogue start */
.LBE8:
	.loc 1 20 0
	pop r17
	pop r16
	pop r15
	pop r14
.LVL5:
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN3ramC2EP14portcontrollerP8shiftreghm, .-_ZN3ramC2EP14portcontrollerP8shiftreghm
.global	_ZN3ramC1EP14portcontrollerP8shiftreghm
	.set	_ZN3ramC1EP14portcontrollerP8shiftreghm,_ZN3ramC2EP14portcontrollerP8shiftreghm
	.section	.text._ZN3ram4readEi,"ax",@progbits
.global	_ZN3ram4readEi
	.type	_ZN3ram4readEi, @function
_ZN3ram4readEi:
.LFB10:
	.loc 1 40 0
	.cfi_startproc
.LVL6:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 41 0
	ldd r24,Y+4
	ldd r25,Y+5
.LVL7:
	call _ZN8shiftreg10shiftout16Ej
.LVL8:
	.loc 1 42 0
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller9readportdEv
.LVL9:
/* epilogue start */
	.loc 1 43 0
	pop r29
	pop r28
.LVL10:
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN3ram4readEi, .-_ZN3ram4readEi
	.section	.text._ZN3ram5writeEhc,"ax",@progbits
.global	_ZN3ram5writeEhc
	.type	_ZN3ram5writeEhc, @function
_ZN3ram5writeEhc:
.LFB11:
	.loc 1 56 0
	.cfi_startproc
.LVL11:
	push r17
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r20
	.loc 1 57 0
	ldd r24,Y+8
	ldd r25,Y+9
.LVL12:
	movw r18,r24
	add r18,r22
	adc r19,__zero_reg__
	movw r22,r18
.LVL13:
	ldd r24,Y+4
	ldd r25,Y+5
	call _ZN8shiftreg10shiftout16Ej
.LVL14:
	.loc 1 58 0
	ldd r24,Y+6
	ldd r25,Y+7
	sbiw r24,0
	brne .L4
	.loc 1 60 0
	mov r22,r17
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller10writeportcEc
.LVL15:
	rjmp .L5
.L4:
	.loc 1 64 0
	mov r22,r17
	call _ZN8shiftreg9shiftout8Eh
.LVL16:
.L5:
	.loc 1 66 0
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL17:
.LBB9:
.LBB10:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 187 0
	ldi r24,lo8(249)
	ldi r25,hi8(249)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL18:
.LBE10:
.LBE9:
	.loc 1 68 0
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL19:
/* epilogue start */
	.loc 1 69 0
	pop r29
	pop r28
.LVL20:
	pop r17
.LVL21:
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN3ram5writeEhc, .-_ZN3ram5writeEhc
	.section	.text._ZN3ram5writeEjc,"ax",@progbits
.global	_ZN3ram5writeEjc
	.type	_ZN3ram5writeEjc, @function
_ZN3ram5writeEjc:
.LFB12:
	.loc 1 72 0
	.cfi_startproc
.LVL22:
	push r17
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI11:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r20
	.loc 1 73 0
	ldd r24,Y+4
	ldd r25,Y+5
.LVL23:
	call _ZN8shiftreg10shiftout16Ej
.LVL24:
	.loc 1 74 0
	ldd r24,Y+6
	ldd r25,Y+7
	sbiw r24,0
	brne .L7
	.loc 1 76 0
	mov r22,r17
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller10writeportcEc
.LVL25:
	rjmp .L8
.L7:
	.loc 1 80 0
	mov r22,r17
	call _ZN8shiftreg9shiftout8Eh
.LVL26:
.L8:
	.loc 1 82 0
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL27:
.LBB11:
.LBB12:
	.loc 2 187 0
	ldi r24,lo8(249)
	ldi r25,hi8(249)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL28:
.LBE12:
.LBE11:
	.loc 1 84 0
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL29:
/* epilogue start */
	.loc 1 85 0
	pop r29
	pop r28
.LVL30:
	pop r17
.LVL31:
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN3ram5writeEjc, .-_ZN3ram5writeEjc
	.section	.text._ZN3ram5writeEyc,"ax",@progbits
.global	_ZN3ram5writeEyc
	.type	_ZN3ram5writeEyc, @function
_ZN3ram5writeEyc:
.LFB13:
	.loc 1 87 0
	.cfi_startproc
.LVL32:
	push r14
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r16
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI15:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI16:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	.loc 1 88 0
	ldd r24,Y+4
	ldd r25,Y+5
.LVL33:
	call _ZN8shiftreg10shiftout64Ey
.LVL34:
	.loc 1 89 0
	ldd r24,Y+6
	ldd r25,Y+7
	sbiw r24,0
	brne .L10
	.loc 1 91 0
	mov r22,r14
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller10writeportcEc
.LVL35:
	rjmp .L11
.L10:
	.loc 1 95 0
	mov r22,r14
	call _ZN8shiftreg9shiftout8Eh
.LVL36:
.L11:
	.loc 1 97 0
	ldi r20,0
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL37:
.LBB13:
.LBB14:
	.loc 2 187 0
	ldi r24,lo8(249)
	ldi r25,hi8(249)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL38:
.LBE14:
.LBE13:
	.loc 1 99 0
	ldi r20,lo8(1)
	ldd r22,Y+1
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL39:
/* epilogue start */
	.loc 1 100 0
	pop r29
	pop r28
.LVL40:
	pop r17
	pop r16
.LVL41:
	pop r14
.LVL42:
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN3ram5writeEyc, .-_ZN3ram5writeEyc
	.section	.text._ZN3ramD2Ev,"ax",@progbits
.global	_ZN3ramD2Ev
	.type	_ZN3ramD2Ev, @function
_ZN3ramD2Ev:
.LFB15:
	.loc 1 113 0
	.cfi_startproc
.LVL43:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN3ramD2Ev, .-_ZN3ramD2Ev
.global	_ZN3ramD1Ev
	.set	_ZN3ramD1Ev,_ZN3ramD2Ev
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../drivers/mem/volatile/../../io/port controller/portcontroller.h"
	.file 5 "../drivers/mem/volatile/../../io/shift register/shiftreg.h"
	.file 6 "../drivers/mem/volatile/ram.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbf0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF117
	.byte	0x4
	.long	.LASF118
	.long	.LASF119
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x85
	.long	0x29
	.uleb128 0x5
	.long	.LASF27
	.byte	0x1
	.byte	0x4
	.byte	0xf
	.long	0x3c3
	.uleb128 0x6
	.byte	0x1
	.long	.LASF27
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xf
	.long	0x534
	.uleb128 0xd
	.long	.LASF62
	.byte	0x5
	.byte	0x13
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x5
	.byte	0x14
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF64
	.byte	0x5
	.byte	0x15
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.byte	0x16
	.long	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x17
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x6
	.byte	0x1
	.long	.LASF61
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.long	.LASF121
	.byte	0x5
	.byte	0x29
	.long	.LASF122
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
	.string	"ram"
	.byte	0xc
	.byte	0x6
	.byte	0x10
	.long	0x76e
	.uleb128 0x10
	.long	.LASF79
	.byte	0x6
	.byte	0x16
	.long	0x3c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x10
	.long	.LASF80
	.byte	0x6
	.byte	0x17
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x2
	.uleb128 0x10
	.long	.LASF81
	.byte	0x6
	.byte	0x18
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x2
	.uleb128 0x10
	.long	.LASF82
	.byte	0x6
	.byte	0x19
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x10
	.long	.LASF83
	.byte	0x6
	.byte	0x1a
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x2
	.uleb128 0x10
	.long	.LASF84
	.byte	0x6
	.byte	0x1c
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x11
	.byte	0x1
	.string	"ram"
	.byte	0x6
	.byte	0x21
	.long	.LASF85
	.byte	0x1
	.long	0x5b5
	.long	0x5bc
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"ram"
	.byte	0x6
	.byte	0x23
	.long	.LASF86
	.byte	0x1
	.long	0x5d1
	.long	0x5ec
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x3c3
	.uleb128 0x9
	.long	0x534
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x69
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF87
	.byte	0x6
	.byte	0x26
	.long	.LASF88
	.long	0x3c9
	.byte	0x1
	.long	0x605
	.long	0x60c
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF87
	.byte	0x6
	.byte	0x27
	.long	.LASF89
	.long	0x3c9
	.byte	0x1
	.long	0x625
	.long	0x631
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x49
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF90
	.byte	0x6
	.byte	0x28
	.long	.LASF91
	.byte	0x1
	.long	0x646
	.long	0x652
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF90
	.byte	0x6
	.byte	0x29
	.long	.LASF92
	.byte	0x1
	.long	0x667
	.long	0x678
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF90
	.byte	0x6
	.byte	0x2a
	.long	.LASF93
	.byte	0x1
	.long	0x68d
	.long	0x69e
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x50
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF90
	.byte	0x6
	.byte	0x2b
	.long	.LASF94
	.byte	0x1
	.long	0x6b3
	.long	0x6c4
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x82
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF95
	.byte	0x6
	.byte	0x2d
	.long	.LASF96
	.byte	0x1
	.long	0x6d9
	.long	0x6e5
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF97
	.byte	0x6
	.byte	0x2e
	.long	.LASF98
	.long	0x50
	.byte	0x1
	.long	0x6fe
	.long	0x705
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF99
	.byte	0x6
	.byte	0x2f
	.long	.LASF100
	.byte	0x1
	.long	0x71a
	.long	0x727
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x7
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF101
	.byte	0x6
	.byte	0x31
	.long	.LASF102
	.long	0x3d0
	.byte	0x1
	.long	0x740
	.long	0x74c
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x53a
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF103
	.byte	0x6
	.byte	0x32
	.long	.LASF104
	.long	0x774
	.byte	0x1
	.long	0x761
	.uleb128 0x7
	.long	0x76e
	.byte	0x1
	.uleb128 0x9
	.long	0x77a
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x53a
	.uleb128 0x13
	.byte	0x2
	.long	0x53a
	.uleb128 0x13
	.byte	0x2
	.long	0x780
	.uleb128 0x14
	.long	0x53a
	.uleb128 0x15
	.long	.LASF123
	.byte	0x2
	.byte	0xa6
	.byte	0x3
	.long	0x7c2
	.uleb128 0x16
	.long	.LASF108
	.byte	0x2
	.byte	0xa6
	.long	0x7c2
	.uleb128 0x17
	.long	.LASF105
	.byte	0x2
	.byte	0xa8
	.long	0x7c2
	.uleb128 0x17
	.long	.LASF106
	.byte	0x2
	.byte	0xac
	.long	0x69
	.uleb128 0x18
	.byte	0x1
	.long	.LASF124
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.uleb128 0x9
	.long	0x74
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF107
	.uleb128 0x19
	.long	0x5bc
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x7d9
	.long	0x810
	.uleb128 0x1a
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.byte	0xc
	.long	0x3c3
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0xc
	.long	0x534
	.uleb128 0x16
	.long	.LASF111
	.byte	0x1
	.byte	0xc
	.long	0x37
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.byte	0xc
	.long	0x69
	.byte	0
	.uleb128 0x14
	.long	0x76e
	.uleb128 0x1b
	.long	0x7c9
	.long	.LASF125
	.long	.LFB8
	.long	.LFE8
	.long	.LLST0
	.long	0x833
	.byte	0x1
	.long	0x883
	.uleb128 0x1c
	.long	0x7d9
	.long	.LLST1
	.uleb128 0x1c
	.long	0x7e3
	.long	.LLST2
	.uleb128 0x1c
	.long	0x7ee
	.long	.LLST3
	.uleb128 0x1c
	.long	0x7f9
	.long	.LLST4
	.uleb128 0x1c
	.long	0x804
	.long	.LLST5
	.uleb128 0x1d
	.long	.LVL4
	.long	0x2e2
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
	.byte	0x66
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x60c
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST6
	.long	0x89e
	.byte	0x1
	.long	0x8df
	.uleb128 0x20
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.long	.LLST7
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.byte	0x27
	.long	0x49
	.long	.LLST8
	.uleb128 0x22
	.long	.LVL8
	.long	0x4b2
	.long	0x8d5
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x23
	.long	.LVL9
	.long	0x115
	.byte	0
	.uleb128 0x24
	.long	0x652
	.byte	0x1
	.byte	0x37
	.long	.LFB11
	.long	.LFE11
	.long	.LLST9
	.long	0x8fb
	.byte	0x1
	.long	0x9b4
	.uleb128 0x20
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.long	.LLST10
	.uleb128 0x21
	.long	.LASF79
	.byte	0x1
	.byte	0x37
	.long	0x37
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.byte	0x37
	.long	0x3c9
	.long	.LLST12
	.uleb128 0x25
	.long	0x785
	.long	.LBB9
	.long	.LBE9
	.byte	0x1
	.byte	0x43
	.long	0x960
	.uleb128 0x1c
	.long	0x791
	.long	.LLST13
	.uleb128 0x26
	.long	.LBB10
	.long	.LBE10
	.uleb128 0x27
	.long	0x79c
	.long	.LLST14
	.uleb128 0x27
	.long	0x7a7
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL14
	.long	0x4b2
	.uleb128 0x22
	.long	.LVL15
	.long	0x1f7
	.long	0x97d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL16
	.long	0x491
	.long	0x991
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL17
	.long	0x2e2
	.long	0x9a4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL19
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x7b2
	.byte	0
	.long	0x9c4
	.uleb128 0x9
	.long	0x74
	.byte	0
	.uleb128 0x24
	.long	0x678
	.byte	0x1
	.byte	0x47
	.long	.LFB12
	.long	.LFE12
	.long	.LLST16
	.long	0x9e0
	.byte	0x1
	.long	0xaaa
	.uleb128 0x20
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.long	.LLST17
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.byte	0x47
	.long	0x50
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.byte	0x47
	.long	0x3c9
	.long	.LLST19
	.uleb128 0x25
	.long	0x785
	.long	.LBB11
	.long	.LBE11
	.byte	0x1
	.byte	0x53
	.long	0xa45
	.uleb128 0x1c
	.long	0x791
	.long	.LLST20
	.uleb128 0x26
	.long	.LBB12
	.long	.LBE12
	.uleb128 0x27
	.long	0x79c
	.long	.LLST21
	.uleb128 0x27
	.long	0x7a7
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL24
	.long	0x4b2
	.long	0xa5f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.uleb128 0x22
	.long	.LVL25
	.long	0x1f7
	.long	0xa73
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL26
	.long	0x491
	.long	0xa87
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL27
	.long	0x2e2
	.long	0xa9a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL29
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x69e
	.byte	0x1
	.byte	0x56
	.long	.LFB13
	.long	.LFE13
	.long	.LLST23
	.long	0xac6
	.byte	0x1
	.long	0xba2
	.uleb128 0x20
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.long	.LLST24
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.byte	0x56
	.long	0x82
	.long	.LLST25
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.byte	0x56
	.long	0x3c9
	.long	.LLST26
	.uleb128 0x25
	.long	0x785
	.long	.LBB13
	.long	.LBE13
	.byte	0x1
	.byte	0x62
	.long	0xb2b
	.uleb128 0x1c
	.long	0x791
	.long	.LLST27
	.uleb128 0x26
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x27
	.long	0x79c
	.long	.LLST28
	.uleb128 0x27
	.long	0x7a7
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL34
	.long	0x4f4
	.long	0xb57
	.uleb128 0x1e
	.byte	0x18
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
	.byte	0x3
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x29
	.byte	0
	.uleb128 0x22
	.long	.LVL35
	.long	0x1f7
	.long	0xb6b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL36
	.long	0x491
	.long	0xb7f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL37
	.long	0x2e2
	.long	0xb92
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL39
	.long	0x2e2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x705
	.byte	0x1
	.byte	0x71
	.byte	0
	.long	0xbb2
	.long	0xbc7
	.uleb128 0x1a
	.long	.LASF113
	.long	0x810
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF120
	.long	0xbc7
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x49
	.uleb128 0x29
	.long	0xba2
	.long	.LASF126
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xbe6
	.byte	0x1
	.uleb128 0x2a
	.long	0xbb2
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
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB8
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
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL4-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL4-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL4-1
	.word	0x2
	.byte	0x8e
	.sleb128 4
	.long	.LVL4-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL4-1
	.word	0x1
	.byte	0x62
	.long	.LVL4-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL0
	.long	.LVL5
	.word	0xc
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB10
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL10
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL6
	.long	.LVL8-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB11
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST10:
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL20
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x66
	.long	.LVL13
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL11
	.long	.LVL14-1
	.word	0x1
	.byte	0x64
	.long	.LVL14-1
	.long	.LVL21
	.word	0x1
	.byte	0x61
	.long	.LVL21
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST14:
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST15:
	.long	.LVL17
	.long	.LVL18
	.word	0x4
	.byte	0xa
	.word	0x3e8
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LFB12
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST17:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL30
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL22
	.long	.LVL24-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL22
	.long	.LVL24-1
	.word	0x1
	.byte	0x64
	.long	.LVL24-1
	.long	.LVL31
	.word	0x1
	.byte	0x61
	.long	.LVL31
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST21:
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST22:
	.long	.LVL27
	.long	.LVL28
	.word	0x4
	.byte	0xa
	.word	0x3e8
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LFB13
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI16
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST24:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL40
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL32
	.long	.LVL41
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
	.long	.LVL41
	.long	.LFE13
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL32
	.long	.LVL42
	.word	0x1
	.byte	0x5e
	.long	.LVL42
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL37
	.long	.LVL38
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST28:
	.long	.LVL37
	.long	.LVL38
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x447a0000
	.long	0
	.long	0
.LLST29:
	.long	.LVL37
	.long	.LVL38
	.word	0x4
	.byte	0xa
	.word	0x3e8
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"portptr"
.LASF96:
	.string	"_ZN3ram10setaddressEy"
.LASF114:
	.string	"addr"
.LASF119:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF20:
	.string	"_ZN14portcontroller8readddraEv"
.LASF90:
	.string	"write"
.LASF122:
	.string	"_ZN8shiftregD4Ev"
.LASF104:
	.string	"_ZN3ramaSERKS_"
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
.LASF117:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF97:
	.string	"getaddr"
.LASF105:
	.string	"__tmp"
.LASF16:
	.string	"_ZN14portcontroller9readportcEv"
.LASF56:
	.string	"_ZN14portcontroller13digitalwritecEhb"
.LASF42:
	.string	"_ZN14portcontroller9writeddrcEc"
.LASF92:
	.string	"_ZN3ram5writeEhc"
.LASF109:
	.string	"portptr2"
.LASF100:
	.string	"_ZN3ramD4Ev"
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
.LASF108:
	.string	"__ms"
.LASF86:
	.string	"_ZN3ramC4EP14portcontrollerP8shiftreghm"
.LASF113:
	.string	"this"
.LASF14:
	.string	"_ZN14portcontroller9readportbEv"
.LASF48:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF45:
	.string	"digitalread"
.LASF3:
	.string	"uint8_t"
.LASF126:
	.string	"_ZN3ramD2Ev"
.LASF124:
	.string	"__builtin_avr_delay_cycles"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF60:
	.string	"bool"
.LASF84:
	.string	"addressbase"
.LASF110:
	.string	"addrptr2"
.LASF53:
	.string	"digitalwriteb"
.LASF102:
	.string	"_ZN3rameqES_"
.LASF87:
	.string	"read"
.LASF57:
	.string	"digitalwrited"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"_ZN14portcontroller9readportaEv"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF80:
	.string	"wepin"
.LASF59:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"addrptr"
.LASF116:
	.string	"address"
.LASF79:
	.string	"offset"
.LASF121:
	.string	"~shiftreg"
.LASF123:
	.string	"_delay_ms"
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
.LASF95:
	.string	"setaddress"
.LASF71:
	.string	"shiftout8"
.LASF125:
	.string	"_ZN3ramC2EP14portcontrollerP8shiftreghm"
.LASF89:
	.string	"_ZN3ram4readEi"
.LASF2:
	.string	"unsigned char"
.LASF63:
	.string	"clockpin"
.LASF101:
	.string	"operator=="
.LASF1:
	.string	"signed char"
.LASF98:
	.string	"_ZN3ram7getaddrEv"
.LASF0:
	.string	"long long unsigned int"
.LASF51:
	.string	"digitalwritea"
.LASF7:
	.string	"uint32_t"
.LASF55:
	.string	"digitalwritec"
.LASF118:
	.string	"../drivers/mem/volatile/ram.cpp"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF88:
	.string	"_ZN3ram4readEv"
.LASF52:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF36:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF115:
	.string	"data"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF44:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF27:
	.string	"portcontroller"
.LASF54:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF93:
	.string	"_ZN3ram5writeEjc"
.LASF94:
	.string	"_ZN3ram5writeEyc"
.LASF120:
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
.LASF99:
	.string	"~ram"
.LASF8:
	.string	"long unsigned int"
.LASF107:
	.string	"double"
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
.LASF85:
	.string	"_ZN3ramC4Ev"
.LASF40:
	.string	"_ZN14portcontroller9writeddrbEc"
.LASF111:
	.string	"wepin2"
.LASF69:
	.string	"shiftout"
.LASF50:
	.string	"_ZN14portcontrollerD4Ev"
.LASF106:
	.string	"__ticks_dc"
.LASF112:
	.string	"addressbase2"
.LASF83:
	.string	"dataptr"
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
.LASF103:
	.string	"operator="
.LASF38:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF91:
	.string	"_ZN3ram5writeEc"
.LASF65:
	.string	"dataque"
.LASF18:
	.string	"_ZN14portcontroller9readportdEv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
