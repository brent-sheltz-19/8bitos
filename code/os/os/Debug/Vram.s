	.file	"Vram.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN4VramC2EP14portcontrollerP8shiftreghhy,"ax",@progbits
.global	_ZN4VramC2EP14portcontrollerP8shiftreghhy
	.type	_ZN4VramC2EP14portcontrollerP8shiftreghhy, @function
_ZN4VramC2EP14portcontrollerP8shiftreghhy:
.LFB9:
	.file 1 "../drivers/mem/volatile/Vram.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	push r7
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 7, -2
	push r8
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI13:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r12,r24
	mov r7,r16
.LBB2:
	.loc 1 12 0
	mov r14,r8
	mov r15,r9
	mov r16,r10
.LVL1:
	mov r17,r11
	call _ZN3ramC2EP14portcontrollerP8shiftreghm
.LVL2:
	.loc 1 14 0
	movw r30,r12
	std Z+12,r7
/* epilogue start */
.LBE2:
	.loc 1 16 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL3:
	pop r11
	pop r10
	pop r9
	pop r8
.LVL4:
	pop r7
.LVL5:
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN4VramC2EP14portcontrollerP8shiftreghhy, .-_ZN4VramC2EP14portcontrollerP8shiftreghhy
.global	_ZN4VramC1EP14portcontrollerP8shiftreghhy
	.set	_ZN4VramC1EP14portcontrollerP8shiftreghhy,_ZN4VramC2EP14portcontrollerP8shiftreghhy
	.section	.text._ZN4Vram9writeDataEjc,"ax",@progbits
.global	_ZN4Vram9writeDataEjc
	.type	_ZN4Vram9writeDataEjc, @function
_ZN4Vram9writeDataEjc:
.LFB11:
	.loc 1 18 0
	.cfi_startproc
.LVL6:
	push r15
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 15, -2
	push r16
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r28,r24
	movw r16,r22
	mov r15,r20
	.loc 1 19 0
	ldi r20,lo8(1)
.LVL7:
	ldd r22,Y+12
.LVL8:
	ldd r24,Y+2
	ldd r25,Y+3
.LVL9:
	call _ZN14portcontroller12digitalwriteEhb
.LVL10:
	.loc 1 20 0
	mov r20,r15
	movw r22,r16
	movw r24,r28
	call _ZN3ram5writeEjc
.LVL11:
	.loc 1 21 0
	ldi r20,0
	ldd r22,Y+12
	ldd r24,Y+2
	ldd r25,Y+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL12:
/* epilogue start */
	.loc 1 24 0
	pop r29
	pop r28
.LVL13:
	pop r17
	pop r16
.LVL14:
	pop r15
.LVL15:
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN4Vram9writeDataEjc, .-_ZN4Vram9writeDataEjc
	.section	.text._ZN4Vram9writeDataEjPcj,"ax",@progbits
.global	_ZN4Vram9writeDataEjPcj
	.type	_ZN4Vram9writeDataEjPcj, @function
_ZN4Vram9writeDataEjPcj:
.LFB12:
	.loc 1 26 0
	.cfi_startproc
.LVL16:
	push r10
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI22:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI23:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI25:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI26:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI27:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI28:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	movw r12,r22
	movw r10,r20
	movw r14,r18
	.loc 1 27 0
	ldi r20,lo8(1)
.LVL17:
	movw r30,r24
	ldd r22,Z+12
.LVL18:
	ldd r24,Z+2
	ldd r25,Z+3
.LVL19:
	call _ZN14portcontroller12digitalwriteEhb
.LVL20:
.LBB3:
	.loc 1 28 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L4
	movw r28,r10
	add r14,r10
	adc r15,r11
.LVL21:
.L5:
	.loc 1 30 0 discriminator 2
	ld r20,Y+
.LVL22:
	movw r22,r12
	movw r24,r16
	call _ZN3ram5writeEjc
.LVL23:
	.loc 1 28 0 discriminator 2
	cp r28,r14
	cpc r29,r15
	brne .L5
.LVL24:
.L4:
.LBE3:
	.loc 1 32 0
	ldi r20,0
	movw r30,r16
	ldd r22,Z+12
	ldd r24,Z+2
	ldd r25,Z+3
	call _ZN14portcontroller12digitalwriteEhb
.LVL25:
/* epilogue start */
	.loc 1 35 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL26:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL27:
	pop r11
	pop r10
.LVL28:
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN4Vram9writeDataEjPcj, .-_ZN4Vram9writeDataEjPcj
	.section	.text._ZN4Vram9cleardataEv,"ax",@progbits
.global	_ZN4Vram9cleardataEv
	.type	_ZN4Vram9cleardataEv, @function
_ZN4Vram9cleardataEv:
.LFB13:
	.loc 1 39 0
	.cfi_startproc
.LVL29:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN4Vram9cleardataEv, .-_ZN4Vram9cleardataEv
	.section	.text._ZN4Vram16writeInstructionEv,"ax",@progbits
.global	_ZN4Vram16writeInstructionEv
	.type	_ZN4Vram16writeInstructionEv, @function
_ZN4Vram16writeInstructionEv:
.LFB14:
	.loc 1 44 0
	.cfi_startproc
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN4Vram16writeInstructionEv, .-_ZN4Vram16writeInstructionEv
	.section	.text._ZN4Vram15writecustomcharEPh,"ax",@progbits
.global	_ZN4Vram15writecustomcharEPh
	.type	_ZN4Vram15writecustomcharEPh, @function
_ZN4Vram15writecustomcharEPh:
.LFB15:
	.loc 1 49 0
	.cfi_startproc
.LVL31:
	.loc 1 49 0
	push r14
.LCFI29:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI32:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI33:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r16,r22
.LVL32:
	.loc 1 49 0
	ldi r28,0
	ldi r29,lo8(48)
.LVL33:
.L10:
.LBB4:
	.loc 1 52 0 discriminator 2
	movw r30,r16
	ld r20,Z+
	movw r16,r30
	movw r22,r28
	movw r24,r14
	call _ZN3ram5writeEjc
.LVL34:
	adiw r28,1
.LVL35:
	.loc 1 50 0 discriminator 2
	cpi r28,8
	ldi r31,48
	cpc r29,r31
	brne .L10
/* epilogue start */
.LBE4:
	.loc 1 54 0
	pop r29
	pop r28
.LVL36:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL37:
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN4Vram15writecustomcharEPh, .-_ZN4Vram15writecustomcharEPh
	.section	.text._ZN4VramD2Ev,"ax",@progbits
.global	_ZN4VramD2Ev
	.type	_ZN4VramD2Ev, @function
_ZN4VramD2Ev:
.LFB17:
	.loc 1 57 0
	.cfi_startproc
.LVL38:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB5:
	.loc 1 57 0
	call _ZN3ramD2Ev
.LVL39:
	ret
.LBE5:
	.cfi_endproc
.LFE17:
	.size	_ZN4VramD2Ev, .-_ZN4VramD2Ev
.global	_ZN4VramD1Ev
	.set	_ZN4VramD1Ev,_ZN4VramD2Ev
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../drivers/mem/volatile/../../io/port controller/portcontroller.h"
	.file 4 "../drivers/mem/volatile/../../io/shift register/shiftreg.h"
	.file 5 "../drivers/mem/volatile/ram.h"
	.file 6 "../drivers/mem/volatile/Vram.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc69
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF133
	.byte	0x4
	.long	.LASF134
	.long	.LASF135
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
	.byte	0x2
	.long	0x93
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1
	.byte	0x3
	.byte	0xf
	.long	0x3d0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF28
	.byte	0x3
	.byte	0x18
	.long	.LASF30
	.byte	0x1
	.long	0xbb
	.long	0xc2
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF12
	.byte	0x3
	.byte	0x19
	.long	.LASF14
	.long	0x93
	.byte	0x1
	.long	0xdb
	.long	0xe2
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF13
	.byte	0x3
	.byte	0x1a
	.long	.LASF15
	.long	0x93
	.byte	0x1
	.long	0xfb
	.long	0x102
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF16
	.byte	0x3
	.byte	0x1b
	.long	.LASF17
	.long	0x93
	.byte	0x1
	.long	0x11b
	.long	0x122
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF18
	.byte	0x3
	.byte	0x1c
	.long	.LASF19
	.long	0x93
	.byte	0x1
	.long	0x13b
	.long	0x142
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF20
	.byte	0x3
	.byte	0x1d
	.long	.LASF21
	.long	0x93
	.byte	0x1
	.long	0x15b
	.long	0x162
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF22
	.byte	0x3
	.byte	0x1e
	.long	.LASF23
	.long	0x93
	.byte	0x1
	.long	0x17b
	.long	0x182
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF24
	.byte	0x3
	.byte	0x1f
	.long	.LASF25
	.long	0x93
	.byte	0x1
	.long	0x19b
	.long	0x1a2
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF26
	.byte	0x3
	.byte	0x20
	.long	.LASF27
	.long	0x93
	.byte	0x1
	.long	0x1bb
	.long	0x1c2
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF29
	.byte	0x3
	.byte	0x22
	.long	.LASF31
	.byte	0x1
	.long	0x1d7
	.long	0x1e3
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF32
	.byte	0x3
	.byte	0x23
	.long	.LASF33
	.byte	0x1
	.long	0x1f8
	.long	0x204
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF34
	.byte	0x3
	.byte	0x24
	.long	.LASF35
	.byte	0x1
	.long	0x219
	.long	0x225
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF36
	.byte	0x3
	.byte	0x25
	.long	.LASF37
	.byte	0x1
	.long	0x23a
	.long	0x246
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF38
	.byte	0x3
	.byte	0x26
	.long	.LASF39
	.byte	0x1
	.long	0x25b
	.long	0x267
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF40
	.byte	0x3
	.byte	0x27
	.long	.LASF41
	.byte	0x1
	.long	0x27c
	.long	0x288
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF42
	.byte	0x3
	.byte	0x28
	.long	.LASF43
	.byte	0x1
	.long	0x29d
	.long	0x2a9
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF44
	.byte	0x3
	.byte	0x29
	.long	.LASF45
	.byte	0x1
	.long	0x2be
	.long	0x2ca
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF46
	.byte	0x3
	.byte	0x2b
	.long	.LASF47
	.long	0x93
	.byte	0x1
	.long	0x2e3
	.long	0x2ef
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF48
	.byte	0x3
	.byte	0x34
	.long	.LASF49
	.byte	0x1
	.long	0x304
	.long	0x315
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF50
	.byte	0x3
	.byte	0x36
	.long	.LASF51
	.byte	0x1
	.long	0x32a
	.long	0x337
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF52
	.byte	0x3
	.byte	0x3b
	.long	.LASF53
	.byte	0x3
	.byte	0x1
	.long	0x34d
	.long	0x35e
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF54
	.byte	0x3
	.byte	0x3c
	.long	.LASF55
	.byte	0x3
	.byte	0x1
	.long	0x374
	.long	0x385
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF56
	.byte	0x3
	.byte	0x3d
	.long	.LASF57
	.byte	0x3
	.byte	0x1
	.long	0x39b
	.long	0x3ac
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF58
	.byte	0x3
	.byte	0x3e
	.long	.LASF59
	.byte	0x3
	.byte	0x1
	.long	0x3be
	.uleb128 0x8
	.long	0x3d0
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x9a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF60
	.uleb128 0x6
	.long	.LASF61
	.byte	0xd
	.byte	0x4
	.byte	0xf
	.long	0x53a
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
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0x1d
	.long	.LASF67
	.byte	0x1
	.long	0x444
	.long	0x44b
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0x1e
	.long	.LASF68
	.byte	0x1
	.long	0x460
	.long	0x47b
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x3d0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF69
	.byte	0x4
	.byte	0x1f
	.long	.LASF70
	.byte	0x1
	.long	0x490
	.long	0x497
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF71
	.byte	0x4
	.byte	0x20
	.long	.LASF72
	.byte	0x1
	.long	0x4ac
	.long	0x4b8
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF73
	.byte	0x4
	.byte	0x21
	.long	.LASF74
	.byte	0x1
	.long	0x4cd
	.long	0x4d9
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF75
	.byte	0x4
	.byte	0x22
	.long	.LASF76
	.byte	0x1
	.long	0x4ee
	.long	0x4fa
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0xa
	.long	0x69
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF77
	.byte	0x4
	.byte	0x23
	.long	.LASF78
	.byte	0x1
	.long	0x50f
	.long	0x51b
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0xa
	.long	0x82
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF123
	.byte	0x4
	.byte	0x29
	.long	.LASF125
	.byte	0x1
	.long	0x52c
	.uleb128 0x8
	.long	0x53a
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x3dd
	.uleb128 0xf
	.string	"ram"
	.byte	0xc
	.byte	0x5
	.byte	0x10
	.long	0x774
	.uleb128 0x10
	.long	.LASF79
	.byte	0x5
	.byte	0x16
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x10
	.long	.LASF80
	.byte	0x5
	.byte	0x17
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x2
	.uleb128 0x10
	.long	.LASF81
	.byte	0x5
	.byte	0x18
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x2
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.byte	0x19
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x10
	.long	.LASF83
	.byte	0x5
	.byte	0x1a
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x2
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.byte	0x1c
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x11
	.byte	0x1
	.string	"ram"
	.byte	0x5
	.byte	0x21
	.long	.LASF85
	.byte	0x1
	.long	0x5bb
	.long	0x5c2
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"ram"
	.byte	0x5
	.byte	0x23
	.long	.LASF86
	.byte	0x1
	.long	0x5d7
	.long	0x5f2
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x3d0
	.uleb128 0xa
	.long	0x53a
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x69
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF87
	.byte	0x5
	.byte	0x26
	.long	.LASF88
	.long	0x93
	.byte	0x1
	.long	0x60b
	.long	0x612
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF87
	.byte	0x5
	.byte	0x27
	.long	.LASF89
	.long	0x93
	.byte	0x1
	.long	0x62b
	.long	0x637
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x49
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF90
	.byte	0x5
	.byte	0x28
	.long	.LASF91
	.byte	0x1
	.long	0x64c
	.long	0x658
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF90
	.byte	0x5
	.byte	0x29
	.long	.LASF92
	.byte	0x1
	.long	0x66d
	.long	0x67e
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF90
	.byte	0x5
	.byte	0x2a
	.long	.LASF93
	.byte	0x1
	.long	0x693
	.long	0x6a4
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF90
	.byte	0x5
	.byte	0x2b
	.long	.LASF94
	.byte	0x1
	.long	0x6b9
	.long	0x6ca
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x82
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF95
	.byte	0x5
	.byte	0x2d
	.long	.LASF96
	.byte	0x1
	.long	0x6df
	.long	0x6eb
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x82
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF97
	.byte	0x5
	.byte	0x2e
	.long	.LASF98
	.long	0x50
	.byte	0x1
	.long	0x704
	.long	0x70b
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF99
	.byte	0x5
	.byte	0x2f
	.long	.LASF100
	.byte	0x1
	.long	0x720
	.long	0x72d
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF101
	.byte	0x5
	.byte	0x31
	.long	.LASF102
	.long	0x3d6
	.byte	0x1
	.long	0x746
	.long	0x752
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x540
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF103
	.byte	0x5
	.byte	0x32
	.long	.LASF104
	.long	0x77a
	.byte	0x1
	.long	0x767
	.uleb128 0x8
	.long	0x774
	.byte	0x1
	.uleb128 0xa
	.long	0x780
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x540
	.uleb128 0x13
	.byte	0x2
	.long	0x540
	.uleb128 0x13
	.byte	0x2
	.long	0x786
	.uleb128 0x14
	.long	0x540
	.uleb128 0x6
	.long	.LASF105
	.byte	0x10
	.byte	0x6
	.byte	0x13
	.long	0x909
	.uleb128 0x15
	.long	0x540
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x10
	.long	.LASF106
	.byte	0x6
	.byte	0x19
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x16
	.long	.LASF108
	.byte	0x6
	.byte	0x1b
	.long	0x909
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF107
	.byte	0x6
	.byte	0x1c
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x17
	.long	.LASF109
	.byte	0x6
	.byte	0x1d
	.long	0x909
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.word	0x2000
	.uleb128 0x10
	.long	.LASF110
	.byte	0x6
	.byte	0x1e
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x17
	.long	.LASF111
	.byte	0x6
	.byte	0x1f
	.long	0x909
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.word	0x3000
	.uleb128 0x10
	.long	.LASF112
	.byte	0x6
	.byte	0x20
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.long	.LASF105
	.byte	0x6
	.byte	0x25
	.long	.LASF113
	.byte	0x1
	.long	0x820
	.long	0x840
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.uleb128 0xa
	.long	0x3d0
	.uleb128 0xa
	.long	0x53a
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x82
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF114
	.byte	0x6
	.byte	0x27
	.long	.LASF115
	.byte	0x1
	.long	0x855
	.long	0x866
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF114
	.byte	0x6
	.byte	0x29
	.long	.LASF116
	.byte	0x1
	.long	0x87b
	.long	0x891
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x8d
	.uleb128 0xa
	.long	0x5b
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF117
	.byte	0x6
	.byte	0x2a
	.long	.LASF118
	.byte	0x1
	.long	0x8a6
	.long	0x8ad
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF119
	.byte	0x6
	.byte	0x2b
	.long	.LASF120
	.byte	0x1
	.long	0x8c2
	.long	0x8c9
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF121
	.byte	0x6
	.byte	0x2c
	.long	.LASF122
	.byte	0x1
	.long	0x8de
	.long	0x8ea
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.uleb128 0xa
	.long	0x914
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF124
	.byte	0x6
	.byte	0x2e
	.long	.LASF126
	.byte	0x1
	.long	0x8fb
	.uleb128 0x8
	.long	0x90e
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x50
	.uleb128 0x5
	.byte	0x2
	.long	0x78b
	.uleb128 0x5
	.byte	0x2
	.long	0x37
	.uleb128 0x18
	.long	0x80b
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x92a
	.long	0x96c
	.uleb128 0x19
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.byte	0xc
	.long	0x3d0
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0xc
	.long	0x53a
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.byte	0xc
	.long	0x37
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.byte	0xc
	.long	0x37
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.byte	0xc
	.long	0x82
	.byte	0
	.uleb128 0x14
	.long	0x90e
	.uleb128 0x1b
	.long	0x91a
	.long	.LASF136
	.long	.LFB9
	.long	.LFE9
	.long	.LLST0
	.long	0x98f
	.byte	0x1
	.long	0x9f6
	.uleb128 0x1c
	.long	0x92a
	.long	.LLST1
	.uleb128 0x1c
	.long	0x934
	.long	.LLST2
	.uleb128 0x1c
	.long	0x93f
	.long	.LLST3
	.uleb128 0x1c
	.long	0x94a
	.long	.LLST4
	.uleb128 0x1c
	.long	0x955
	.long	.LLST5
	.uleb128 0x1c
	.long	0x960
	.long	.LLST6
	.uleb128 0x1d
	.long	.LVL2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1e
	.byte	0x1
	.byte	0x62
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x840
	.byte	0x1
	.byte	0x11
	.long	.LFB11
	.long	.LFE11
	.long	.LLST7
	.long	0xa12
	.byte	0x1
	.long	0xa8b
	.uleb128 0x20
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.long	.LLST8
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.byte	0x11
	.long	0x50
	.long	.LLST9
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.byte	0x11
	.long	0x93
	.long	.LLST10
	.uleb128 0x22
	.long	.LVL10
	.long	0x2ef
	.long	0xa51
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL11
	.long	0x67e
	.long	0xa7b
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	.LVL12
	.long	0x2ef
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x866
	.byte	0x1
	.byte	0x19
	.long	.LFB12
	.long	.LFE12
	.long	.LLST11
	.long	0xaa7
	.byte	0x1
	.long	0xb40
	.uleb128 0x20
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.long	.LLST12
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.byte	0x19
	.long	0x50
	.long	.LLST13
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.byte	0x19
	.long	0x8d
	.long	.LLST14
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.byte	0x19
	.long	0x5b
	.long	.LLST15
	.uleb128 0x24
	.long	.LBB3
	.long	.LBE3
	.long	0xb1d
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.long	0x5b
	.long	.LLST16
	.uleb128 0x23
	.long	.LVL23
	.long	0x67e
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL20
	.long	0x2ef
	.long	0xb30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL25
	.long	0x2ef
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x891
	.byte	0x1
	.byte	0x26
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xb5c
	.byte	0x1
	.long	0xb6e
	.uleb128 0x27
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x28
	.long	0x8ad
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xb89
	.byte	0x1
	.long	0xb9b
	.uleb128 0x27
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x1f
	.long	0x8c9
	.byte	0x1
	.byte	0x30
	.long	.LFB15
	.long	.LFE15
	.long	.LLST17
	.long	0xbb7
	.byte	0x1
	.long	0xc0c
	.uleb128 0x20
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF131
	.byte	0x1
	.byte	0x30
	.long	0x914
	.long	.LLST19
	.uleb128 0x29
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x49
	.long	.LLST20
	.uleb128 0x23
	.long	.LVL34
	.long	0x67e
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x8ea
	.byte	0x1
	.byte	0x39
	.byte	0
	.long	0xc1c
	.long	0xc31
	.uleb128 0x19
	.long	.LASF127
	.long	0x96c
	.byte	0x1
	.uleb128 0x19
	.long	.LASF132
	.long	0xc31
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x49
	.uleb128 0x2a
	.long	0xc0c
	.long	.LASF137
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xc50
	.byte	0x1
	.uleb128 0x1c
	.long	0xc1c
	.long	.LLST21
	.uleb128 0x1d
	.long	.LVL39
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.long	.LFB9
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
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE9
	.word	0x2
	.byte	0x8c
	.sleb128 15
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LVL3
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE9
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x1
	.byte	0x62
	.long	.LVL2-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x60
	.long	.LVL1
	.long	.LVL5
	.word	0x1
	.byte	0x57
	.long	.LVL5
	.long	.LFE9
	.word	0x2
	.byte	0x8e
	.sleb128 12
	.long	0
	.long	0
.LLST6:
	.long	.LVL0
	.long	.LVL4
	.word	0x18
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
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
	.long	.LVL4
	.long	.LFE9
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LFB11
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST8:
	.long	.LVL6
	.long	.LVL9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL14
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x64
	.long	.LVL7
	.long	.LVL15
	.word	0x1
	.byte	0x5f
	.long	.LVL15
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LFB12
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI28
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LVL26
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
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
	.long	.LVL27
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL28
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL20-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LVL21
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0x20
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LFB15
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI34
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST18:
	.long	.LVL31
	.long	.LVL33
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL37
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL31
	.long	.LVL33
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x5
	.byte	0x8c
	.sleb128 -12288
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x5
	.byte	0x8c
	.sleb128 -12287
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x5
	.byte	0x8c
	.sleb128 -12288
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL38
	.long	.LVL39-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB9
	.long	.LFE9
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF81:
	.string	"portptr"
.LASF96:
	.string	"_ZN3ram10setaddressEy"
.LASF135:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF134:
	.string	"../drivers/mem/volatile/Vram.cpp"
.LASF90:
	.string	"write"
.LASF125:
	.string	"_ZN8shiftregD4Ev"
.LASF104:
	.string	"_ZN3ramaSERKS_"
.LASF120:
	.string	"_ZN4Vram16writeInstructionEv"
.LASF12:
	.string	"readporta"
.LASF13:
	.string	"readportb"
.LASF16:
	.string	"readportc"
.LASF18:
	.string	"readportd"
.LASF10:
	.string	"uint64_t"
.LASF133:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF97:
	.string	"getaddr"
.LASF17:
	.string	"_ZN14portcontroller9readportcEv"
.LASF57:
	.string	"_ZN14portcontroller13digitalwritecEhb"
.LASF43:
	.string	"_ZN14portcontroller9writeddrcEc"
.LASF92:
	.string	"_ZN3ram5writeEhc"
.LASF100:
	.string	"_ZN3ramD4Ev"
.LASF29:
	.string	"writeporta"
.LASF32:
	.string	"writeportb"
.LASF34:
	.string	"writeportc"
.LASF36:
	.string	"writeportd"
.LASF64:
	.string	"latchclkpin"
.LASF86:
	.string	"_ZN3ramC4EP14portcontrollerP8shiftreghm"
.LASF127:
	.string	"this"
.LASF129:
	.string	"value"
.LASF136:
	.string	"_ZN4VramC2EP14portcontrollerP8shiftreghhy"
.LASF15:
	.string	"_ZN14portcontroller9readportbEv"
.LASF112:
	.string	"custom_char_memory_offset"
.LASF49:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF46:
	.string	"digitalread"
.LASF3:
	.string	"uint8_t"
.LASF21:
	.string	"_ZN14portcontroller8readddraEv"
.LASF107:
	.string	"char_memory_offset"
.LASF110:
	.string	"instruction_memory_offset"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF60:
	.string	"bool"
.LASF84:
	.string	"addressbase"
.LASF115:
	.string	"_ZN4Vram9writeDataEjc"
.LASF54:
	.string	"digitalwriteb"
.LASF102:
	.string	"_ZN3rameqES_"
.LASF87:
	.string	"read"
.LASF9:
	.string	"long long int"
.LASF14:
	.string	"_ZN14portcontroller9readportaEv"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF80:
	.string	"wepin"
.LASF99:
	.string	"~ram"
.LASF130:
	.string	"size"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"addrptr"
.LASF128:
	.string	"address"
.LASF79:
	.string	"offset"
.LASF123:
	.string	"~shiftreg"
.LASF73:
	.string	"shiftout16"
.LASF114:
	.string	"writeData"
.LASF55:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF108:
	.string	"char_memory_base"
.LASF74:
	.string	"_ZN8shiftreg10shiftout16Ej"
.LASF78:
	.string	"_ZN8shiftreg10shiftout64Ey"
.LASF50:
	.string	"~portcontroller"
.LASF22:
	.string	"readddrb"
.LASF95:
	.string	"setaddress"
.LASF71:
	.string	"shiftout8"
.LASF89:
	.string	"_ZN3ram4readEi"
.LASF2:
	.string	"unsigned char"
.LASF63:
	.string	"clockpin"
.LASF126:
	.string	"_ZN4VramD4Ev"
.LASF101:
	.string	"operator=="
.LASF1:
	.string	"signed char"
.LASF98:
	.string	"_ZN3ram7getaddrEv"
.LASF0:
	.string	"long long unsigned int"
.LASF52:
	.string	"digitalwritea"
.LASF7:
	.string	"uint32_t"
.LASF56:
	.string	"digitalwritec"
.LASF58:
	.string	"digitalwrited"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF117:
	.string	"cleardata"
.LASF124:
	.string	"~Vram"
.LASF105:
	.string	"Vram"
.LASF88:
	.string	"_ZN3ram4readEv"
.LASF53:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF37:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF45:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF111:
	.string	"custom_char_memory_base"
.LASF28:
	.string	"portcontroller"
.LASF11:
	.string	"char"
.LASF119:
	.string	"writeInstruction"
.LASF93:
	.string	"_ZN3ram5writeEjc"
.LASF94:
	.string	"_ZN3ram5writeEyc"
.LASF132:
	.string	"__in_chrg"
.LASF27:
	.string	"_ZN14portcontroller8readddrdEv"
.LASF137:
	.string	"_ZN4VramD2Ev"
.LASF121:
	.string	"writecustomchar"
.LASF35:
	.string	"_ZN14portcontroller10writeportcEc"
.LASF20:
	.string	"readddra"
.LASF30:
	.string	"_ZN14portcontrollerC4Ev"
.LASF24:
	.string	"readddrc"
.LASF26:
	.string	"readddrd"
.LASF77:
	.string	"shiftout64"
.LASF66:
	.string	"port"
.LASF106:
	.string	"mempin"
.LASF8:
	.string	"long unsigned int"
.LASF122:
	.string	"_ZN4Vram15writecustomcharEPh"
.LASF109:
	.string	"instruction_memory_base"
.LASF116:
	.string	"_ZN4Vram9writeDataEjPcj"
.LASF67:
	.string	"_ZN8shiftregC4Ev"
.LASF25:
	.string	"_ZN14portcontroller8readddrcEv"
.LASF131:
	.string	"customchar"
.LASF33:
	.string	"_ZN14portcontroller10writeportbEc"
.LASF40:
	.string	"writeddrb"
.LASF42:
	.string	"writeddrc"
.LASF44:
	.string	"writeddrd"
.LASF85:
	.string	"_ZN3ramC4Ev"
.LASF41:
	.string	"_ZN14portcontroller9writeddrbEc"
.LASF113:
	.string	"_ZN4VramC4EP14portcontrollerP8shiftreghhy"
.LASF69:
	.string	"shiftout"
.LASF51:
	.string	"_ZN14portcontrollerD4Ev"
.LASF83:
	.string	"dataptr"
.LASF68:
	.string	"_ZN8shiftregC4EhhhP14portcontroller"
.LASF118:
	.string	"_ZN4Vram9cleardataEv"
.LASF61:
	.string	"shiftreg"
.LASF23:
	.string	"_ZN14portcontroller8readddrbEv"
.LASF59:
	.string	"_ZN14portcontroller13digitalwritedEhb"
.LASF75:
	.string	"shiftout32"
.LASF62:
	.string	"datapin"
.LASF31:
	.string	"_ZN14portcontroller10writeportaEc"
.LASF38:
	.string	"writeddra"
.LASF48:
	.string	"digitalwrite"
.LASF47:
	.string	"_ZN14portcontroller11digitalreadEh"
.LASF103:
	.string	"operator="
.LASF39:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF91:
	.string	"_ZN3ram5writeEc"
.LASF65:
	.string	"dataque"
.LASF19:
	.string	"_ZN14portcontroller9readportdEv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
