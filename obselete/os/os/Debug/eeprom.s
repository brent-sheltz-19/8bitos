	.file	"eeprom.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN6eepromC2Ev,"ax",@progbits
.global	_ZN6eepromC2Ev
	.type	_ZN6eepromC2Ev, @function
_ZN6eepromC2Ev:
.LFB7:
	.file 1 "../drivers/mem/eeprom.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB2:
	.loc 1 12 0
	call _ZN3romC2Ev
.LVL1:
	ret
.LBE2:
	.cfi_endproc
.LFE7:
	.size	_ZN6eepromC2Ev, .-_ZN6eepromC2Ev
.global	_ZN6eepromC1Ev
	.set	_ZN6eepromC1Ev,_ZN6eepromC2Ev
	.section	.text._ZN6eepromC2EP14portcontrollerP8shiftreghy,"ax",@progbits
.global	_ZN6eepromC2EP14portcontrollerP8shiftreghy
	.type	_ZN6eepromC2EP14portcontrollerP8shiftreghy, @function
_ZN6eepromC2EP14portcontrollerP8shiftreghy:
.LFB10:
	.loc 1 16 0
	.cfi_startproc
.LVL2:
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r16,r22
	movw r12,r20
	mov r15,r18
.LBB3:
	.loc 1 16 0
	call _ZN3romC2Ev
.LVL3:
	.loc 1 18 0
	std Y+5,r17
	std Y+4,r16
	.loc 1 19 0
	std Y+7,r13
	std Y+6,r12
	.loc 1 20 0
	std Y+10,r15
	.loc 1 21 0
	std Y+2,r10
	std Y+3,r11
	.loc 1 22 0
	std Y+9,__zero_reg__
	std Y+8,__zero_reg__
	.loc 1 23 0
	ldi r20,lo8(1)
	mov r22,r15
	movw r24,r16
	call _ZN14portcontroller12digitalwriteEhb
.LVL4:
/* epilogue start */
.LBE3:
	.loc 1 25 0
	pop r29
	pop r28
.LVL5:
	pop r17
	pop r16
.LVL6:
	pop r15
.LVL7:
	pop r13
	pop r12
.LVL8:
	pop r11
	pop r10
.LVL9:
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN6eepromC2EP14portcontrollerP8shiftreghy, .-_ZN6eepromC2EP14portcontrollerP8shiftreghy
.global	_ZN6eepromC1EP14portcontrollerP8shiftreghy
	.set	_ZN6eepromC1EP14portcontrollerP8shiftreghy,_ZN6eepromC2EP14portcontrollerP8shiftreghy
	.section	.text._ZN6eeprom5writeEc,"ax",@progbits
.global	_ZN6eeprom5writeEc
	.type	_ZN6eeprom5writeEc, @function
_ZN6eeprom5writeEc:
.LFB12:
	.loc 1 27 0
	.cfi_startproc
.LVL10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN6eeprom5writeEc, .-_ZN6eeprom5writeEc
	.section	.text._ZN6eeprom5writeEcj,"ax",@progbits
.global	_ZN6eeprom5writeEcj
	.type	_ZN6eeprom5writeEcj, @function
_ZN6eeprom5writeEcj:
.LFB13:
	.loc 1 31 0
	.cfi_startproc
.LVL11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN6eeprom5writeEcj, .-_ZN6eeprom5writeEcj
	.section	.text._ZN6eepromD2Ev,"ax",@progbits
.global	_ZN6eepromD2Ev
	.type	_ZN6eepromD2Ev, @function
_ZN6eepromD2Ev:
.LFB15:
	.loc 1 36 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB4:
	.loc 1 36 0
	call _ZN3romD2Ev
.LVL13:
	ret
.LBE4:
	.cfi_endproc
.LFE15:
	.size	_ZN6eepromD2Ev, .-_ZN6eepromD2Ev
.global	_ZN6eepromD1Ev
	.set	_ZN6eepromD1Ev,_ZN6eepromD2Ev
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../drivers/mem/../io/port controller/portcontroller.h"
	.file 4 "../drivers/mem/../io/shift register/shiftreg.h"
	.file 5 "../drivers/mem/rom.h"
	.file 6 "../drivers/mem/eeprom.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa55
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF116
	.byte	0x4
	.long	.LASF117
	.long	.LASF118
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
	.long	.LASF119
	.byte	0x4
	.byte	0x29
	.long	.LASF120
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
	.string	"rom"
	.byte	0x8
	.byte	0x5
	.byte	0x10
	.long	0x6b4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x5
	.byte	0x16
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x10
	.long	.LASF80
	.byte	0x5
	.byte	0x17
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x2
	.uleb128 0x10
	.long	.LASF81
	.byte	0x5
	.byte	0x18
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.byte	0x19
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x2
	.uleb128 0x11
	.byte	0x1
	.string	"rom"
	.byte	0x5
	.byte	0x1f
	.long	.LASF83
	.byte	0x1
	.long	0x597
	.long	0x59e
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"rom"
	.byte	0x5
	.byte	0x20
	.long	.LASF84
	.byte	0x1
	.long	0x5b3
	.long	0x5c9
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x9
	.long	0x3c3
	.uleb128 0x9
	.long	0x534
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF85
	.byte	0x5
	.byte	0x21
	.long	.LASF86
	.long	0x3c9
	.byte	0x1
	.long	0x5e2
	.long	0x5e9
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF85
	.byte	0x5
	.byte	0x22
	.long	.LASF87
	.long	0x3c9
	.byte	0x1
	.long	0x602
	.long	0x60e
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x9
	.long	0x49
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF88
	.byte	0x5
	.byte	0x23
	.long	.LASF89
	.byte	0x1
	.long	0x623
	.long	0x62f
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x9
	.long	0x50
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF90
	.byte	0x5
	.byte	0x24
	.long	.LASF91
	.long	0x50
	.byte	0x1
	.long	0x648
	.long	0x64f
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF92
	.byte	0x5
	.byte	0x25
	.long	.LASF93
	.byte	0x1
	.long	0x664
	.long	0x671
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x7
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"rom"
	.byte	0x5
	.byte	0x26
	.long	.LASF94
	.byte	0x1
	.long	0x686
	.long	0x692
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x9
	.long	0x6ba
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF95
	.byte	0x5
	.byte	0x27
	.long	.LASF96
	.long	0x6c5
	.byte	0x1
	.long	0x6a7
	.uleb128 0x7
	.long	0x6b4
	.byte	0x1
	.uleb128 0x9
	.long	0x6ba
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x53a
	.uleb128 0x13
	.byte	0x2
	.long	0x6c0
	.uleb128 0x14
	.long	0x53a
	.uleb128 0x13
	.byte	0x2
	.long	0x53a
	.uleb128 0x5
	.long	.LASF97
	.byte	0xb
	.byte	0x6
	.byte	0xf
	.long	0x837
	.uleb128 0x15
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x10
	.long	.LASF79
	.byte	0x6
	.byte	0x16
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x10
	.long	.LASF98
	.byte	0x6
	.byte	0x18
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.long	.LASF97
	.byte	0x6
	.byte	0x20
	.long	.LASF99
	.byte	0x1
	.long	0x713
	.long	0x71a
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF97
	.byte	0x6
	.byte	0x21
	.long	.LASF100
	.byte	0x1
	.long	0x72f
	.long	0x74a
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x3c3
	.uleb128 0x9
	.long	0x534
	.uleb128 0x9
	.long	0x37
	.uleb128 0x9
	.long	0x82
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF101
	.byte	0x6
	.byte	0x24
	.long	.LASF102
	.byte	0x1
	.long	0x75f
	.long	0x76b
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF101
	.byte	0x6
	.byte	0x25
	.long	.LASF103
	.byte	0x1
	.long	0x780
	.long	0x791
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.uleb128 0x9
	.long	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF88
	.byte	0x6
	.byte	0x26
	.long	.LASF104
	.byte	0x1
	.long	0x7a6
	.long	0x7b2
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x50
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF90
	.byte	0x6
	.byte	0x27
	.long	.LASF105
	.long	0x50
	.byte	0x1
	.long	0x7cb
	.long	0x7d2
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF106
	.byte	0x6
	.byte	0x28
	.long	.LASF107
	.byte	0x1
	.long	0x7e7
	.long	0x7f4
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x7
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF97
	.byte	0x6
	.byte	0x29
	.long	.LASF108
	.byte	0x1
	.long	0x809
	.long	0x815
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x83d
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF95
	.byte	0x6
	.byte	0x2a
	.long	.LASF109
	.long	0x848
	.byte	0x1
	.long	0x82a
	.uleb128 0x7
	.long	0x837
	.byte	0x1
	.uleb128 0x9
	.long	0x83d
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x6cb
	.uleb128 0x13
	.byte	0x2
	.long	0x843
	.uleb128 0x14
	.long	0x6cb
	.uleb128 0x13
	.byte	0x2
	.long	0x6cb
	.uleb128 0x16
	.long	0x6fe
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x85e
	.long	0x869
	.uleb128 0x17
	.long	.LASF110
	.long	0x869
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x837
	.uleb128 0x18
	.long	0x84e
	.long	.LASF112
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x88c
	.byte	0x1
	.long	0x8a8
	.uleb128 0x19
	.long	0x85e
	.long	.LLST0
	.uleb128 0x1a
	.long	.LVL1
	.uleb128 0x1b
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
	.uleb128 0x16
	.long	0x71a
	.byte	0x1
	.byte	0x10
	.byte	0
	.long	0x8b8
	.long	0x8ef
	.uleb128 0x17
	.long	.LASF110
	.long	0x869
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x1
	.byte	0x10
	.long	0x3c3
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.byte	0x10
	.long	0x534
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.byte	0x10
	.long	0x37
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.byte	0x10
	.long	0x82
	.byte	0
	.uleb128 0x1d
	.long	0x8a8
	.long	.LASF113
	.long	.LFB10
	.long	.LFE10
	.long	.LLST1
	.long	0x90d
	.byte	0x1
	.long	0x970
	.uleb128 0x19
	.long	0x8b8
	.long	.LLST2
	.uleb128 0x19
	.long	0x8c2
	.long	.LLST3
	.uleb128 0x19
	.long	0x8cd
	.long	.LLST4
	.uleb128 0x19
	.long	0x8d8
	.long	.LLST5
	.uleb128 0x19
	.long	0x8e3
	.long	.LLST6
	.uleb128 0x1e
	.long	.LVL3
	.long	0x94f
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL4
	.long	0x2e2
	.uleb128 0x1b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x74a
	.byte	0x1
	.byte	0x1a
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x98c
	.byte	0x1
	.long	0x9ab
	.uleb128 0x21
	.long	.LASF110
	.long	0x869
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.byte	0x1a
	.long	0x3c9
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x20
	.long	0x76b
	.byte	0x1
	.byte	0x1e
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x9c7
	.byte	0x1
	.long	0x9f8
	.uleb128 0x21
	.long	.LASF110
	.long	0x869
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	.LASF114
	.byte	0x1
	.byte	0x1e
	.long	0x3c9
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF80
	.byte	0x1
	.byte	0x1e
	.long	0x50
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x16
	.long	0x7d2
	.byte	0x1
	.byte	0x24
	.byte	0
	.long	0xa08
	.long	0xa1d
	.uleb128 0x17
	.long	.LASF110
	.long	0x869
	.byte	0x1
	.uleb128 0x17
	.long	.LASF115
	.long	0xa1d
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x49
	.uleb128 0x23
	.long	0x9f8
	.long	.LASF121
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xa3c
	.byte	0x1
	.uleb128 0x19
	.long	0xa08
	.long	.LLST7
	.uleb128 0x1a
	.long	.LVL13
	.uleb128 0x1b
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
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
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
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-1
	.long	.LVL5
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-1
	.long	.LVL6
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3-1
	.long	.LVL8
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL3-1
	.word	0x1
	.byte	0x62
	.long	.LVL3-1
	.long	.LVL7
	.word	0x1
	.byte	0x5f
	.long	.LVL7
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL2
	.long	.LVL9
	.word	0x18
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
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
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LFE10
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0xa
	.uleb128 0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	.LFB7
	.long	.LFE7
	.long	.LFB10
	.long	.LFE10
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
.LASF121:
	.string	"_ZN6eepromD2Ev"
.LASF118:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF20:
	.string	"_ZN14portcontroller8readddraEv"
.LASF101:
	.string	"write"
.LASF108:
	.string	"_ZN6eepromC4ERKS_"
.LASF120:
	.string	"_ZN8shiftregD4Ev"
.LASF114:
	.string	"data"
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
.LASF116:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF90:
	.string	"getaddr"
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
.LASF89:
	.string	"_ZN3rom10setaddressEj"
.LASF102:
	.string	"_ZN6eeprom5writeEc"
.LASF112:
	.string	"_ZN6eepromC2Ev"
.LASF110:
	.string	"this"
.LASF14:
	.string	"_ZN14portcontroller9readportbEv"
.LASF107:
	.string	"_ZN6eepromD4Ev"
.LASF48:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF45:
	.string	"digitalread"
.LASF3:
	.string	"uint8_t"
.LASF105:
	.string	"_ZN6eeprom7getaddrEv"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF60:
	.string	"bool"
.LASF53:
	.string	"digitalwriteb"
.LASF113:
	.string	"_ZN6eepromC2EP14portcontrollerP8shiftreghy"
.LASF85:
	.string	"read"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"_ZN14portcontroller9readportaEv"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF98:
	.string	"wepin"
.LASF59:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"addrptr"
.LASF80:
	.string	"address"
.LASF79:
	.string	"offset"
.LASF119:
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
.LASF88:
	.string	"setaddress"
.LASF71:
	.string	"shiftout8"
.LASF2:
	.string	"unsigned char"
.LASF63:
	.string	"clockpin"
.LASF91:
	.string	"_ZN3rom7getaddrEv"
.LASF87:
	.string	"_ZN3rom4readEi"
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
.LASF104:
	.string	"_ZN6eeprom10setaddressEj"
.LASF4:
	.string	"uint16_t"
.LASF86:
	.string	"_ZN3rom4readEv"
.LASF52:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF36:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF103:
	.string	"_ZN6eeprom5writeEcj"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF44:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF96:
	.string	"_ZN3romaSERKS_"
.LASF27:
	.string	"portcontroller"
.LASF54:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF117:
	.string	"../drivers/mem/eeprom.cpp"
.LASF115:
	.string	"__in_chrg"
.LASF100:
	.string	"_ZN6eepromC4EP14portcontrollerP8shiftreghy"
.LASF26:
	.string	"_ZN14portcontroller8readddrdEv"
.LASF97:
	.string	"eeprom"
.LASF94:
	.string	"_ZN3romC4ERKS_"
.LASF92:
	.string	"~rom"
.LASF84:
	.string	"_ZN3romC4EP14portcontrollerP8shiftregy"
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
.LASF93:
	.string	"_ZN3romD4Ev"
.LASF8:
	.string	"long unsigned int"
.LASF83:
	.string	"_ZN3romC4Ev"
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
.LASF111:
	.string	"address2"
.LASF68:
	.string	"_ZN8shiftregC4EhhhP14portcontroller"
.LASF61:
	.string	"shiftreg"
.LASF99:
	.string	"_ZN6eepromC4Ev"
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
.LASF95:
	.string	"operator="
.LASF38:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF109:
	.string	"_ZN6eepromaSERKS_"
.LASF65:
	.string	"dataque"
.LASF18:
	.string	"_ZN14portcontroller9readportdEv"
.LASF106:
	.string	"~eeprom"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
