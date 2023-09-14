	.file	"Serial.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN6SerialC2Ev,"ax",@progbits
.global	_ZN6SerialC2Ev
	.type	_ZN6SerialC2Ev, @function
_ZN6SerialC2Ev:
.LFB7:
	.file 1 "../cpu/communication/Serial.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN6SerialC2Ev, .-_ZN6SerialC2Ev
.global	_ZN6SerialC1Ev
	.set	_ZN6SerialC1Ev,_ZN6SerialC2Ev
	.section	.text._ZN6SerialC2EP8shiftreg,"ax",@progbits
.global	_ZN6SerialC2EP8shiftreg
	.type	_ZN6SerialC2EP8shiftreg, @function
_ZN6SerialC2EP8shiftreg:
.LFB10:
	.loc 1 15 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB2:
	.loc 1 17 0
	movw r30,r24
	std Z+3,r23
	std Z+2,r22
	ret
.LBE2:
	.cfi_endproc
.LFE10:
	.size	_ZN6SerialC2EP8shiftreg, .-_ZN6SerialC2EP8shiftreg
.global	_ZN6SerialC1EP8shiftreg
	.set	_ZN6SerialC1EP8shiftreg,_ZN6SerialC2EP8shiftreg
	.section	.text._ZN6SerialC2EP8shiftregP14portcontroller,"ax",@progbits
.global	_ZN6SerialC2EP8shiftregP14portcontroller
	.type	_ZN6SerialC2EP8shiftregP14portcontroller, @function
_ZN6SerialC2EP8shiftregP14portcontroller:
.LFB13:
	.loc 1 20 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB3:
	.loc 1 22 0
	movw r30,r24
	std Z+3,r23
	std Z+2,r22
	.loc 1 23 0
	std Z+1,r21
	st Z,r20
	ret
.LBE3:
	.cfi_endproc
.LFE13:
	.size	_ZN6SerialC2EP8shiftregP14portcontroller, .-_ZN6SerialC2EP8shiftregP14portcontroller
.global	_ZN6SerialC1EP8shiftregP14portcontroller
	.set	_ZN6SerialC1EP8shiftregP14portcontroller,_ZN6SerialC2EP8shiftregP14portcontroller
	.section	.text._ZN6SerialC2EP8shiftregP14portcontrollerccc,"ax",@progbits
.global	_ZN6SerialC2EP8shiftregP14portcontrollerccc
	.type	_ZN6SerialC2EP8shiftregP14portcontrollerccc, @function
_ZN6SerialC2EP8shiftregP14portcontrollerccc:
.LFB16:
	.loc 1 26 0
	.cfi_startproc
.LVL3:
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r16
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
.LBB4:
	.loc 1 28 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 29 0
	std Z+1,r21
	st Z,r20
	.loc 1 30 0
	std Z+5,r18
	.loc 1 31 0
	std Z+6,r16
	.loc 1 32 0
	std Z+7,r14
/* epilogue start */
.LBE4:
	.loc 1 34 0
	pop r16
.LVL4:
	pop r14
.LVL5:
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN6SerialC2EP8shiftregP14portcontrollerccc, .-_ZN6SerialC2EP8shiftregP14portcontrollerccc
.global	_ZN6SerialC1EP8shiftregP14portcontrollerccc
	.set	_ZN6SerialC1EP8shiftregP14portcontrollerccc,_ZN6SerialC2EP8shiftregP14portcontrollerccc
	.section	.text._ZN6Serial4sendEPci,"ax",@progbits
.global	_ZN6Serial4sendEPci
	.type	_ZN6Serial4sendEPci, @function
_ZN6Serial4sendEPci:
.LFB18:
	.loc 1 37 0
	.cfi_startproc
.LVL6:
	push r10
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL7:
.LBB5:
	.loc 1 38 0
	cp __zero_reg__,r20
	cpc __zero_reg__,r21
	brge .L5
	movw r10,r22
	movw r28,r24
	movw r12,r22
	add r10,r20
	adc r11,r21
.LVL8:
.L10:
.LBB6:
	.loc 1 40 0
	movw r30,r12
	ld r14,Z+
	movw r12,r30
.LVL9:
.LBB7:
	.loc 1 41 0
	ldi r16,0
	ldi r17,0
	.loc 1 43 0
	mov r15,__zero_reg__
.LVL10:
.L9:
	movw r24,r14
	mov r0,r16
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbrs r24,0
	rjmp .L7
	.loc 1 45 0
	ldi r20,lo8(1)
	ldd r22,Y+6
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL11:
	.loc 1 46 0
	ldi r20,lo8(1)
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL12:
	rjmp .L8
.L7:
	.loc 1 50 0
	ldi r20,0
	ldd r22,Y+6
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL13:
	.loc 1 51 0
	ldi r20,lo8(1)
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL14:
.L8:
	.loc 1 53 0 discriminator 2
	ldi r20,0
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL15:
	.loc 1 41 0 discriminator 2
	subi r16,-1
	sbci r17,-1
.LVL16:
	cpi r16,8
	cpc r17,__zero_reg__
	brne .L9
.LVL17:
.LBE7:
.LBE6:
	.loc 1 38 0 discriminator 2
	cp r12,r10
	cpc r13,r11
	brne .L10
.LVL18:
.L5:
/* epilogue start */
.LBE5:
	.loc 1 58 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN6Serial4sendEPci, .-_ZN6Serial4sendEPci
	.section	.text._ZN6Serial18sendandrecive1byteEc,"ax",@progbits
.global	_ZN6Serial18sendandrecive1byteEc
	.type	_ZN6Serial18sendandrecive1byteEc, @function
_ZN6Serial18sendandrecive1byteEc:
.LFB19:
	.loc 1 60 0
	.cfi_startproc
.LVL19:
	push r14
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI15:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI16:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
.LVL20:
.LBB8:
	.loc 1 61 0
	ldi r16,0
	ldi r17,0
	.loc 1 63 0
	mov r14,r22
	mov r15,__zero_reg__
.LVL21:
.L16:
	movw r24,r14
	mov r0,r16
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	sbrs r24,0
	rjmp .L14
	.loc 1 65 0
	ldi r20,lo8(1)
	ldd r22,Y+6
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL22:
	.loc 1 66 0
	ldi r20,lo8(1)
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL23:
	rjmp .L15
.L14:
	.loc 1 70 0
	ldi r20,0
	ldd r22,Y+6
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL24:
	.loc 1 71 0
	ldi r20,lo8(1)
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL25:
.L15:
	.loc 1 73 0 discriminator 2
	ldi r20,0
	ldd r22,Y+7
	ld r24,Y
	ldd r25,Y+1
	call _ZN14portcontroller12digitalwriteEhb
.LVL26:
	.loc 1 61 0 discriminator 2
	subi r16,-1
	sbci r17,-1
.LVL27:
	cpi r16,8
	cpc r17,__zero_reg__
	brne .L16
/* epilogue start */
.LBE8:
	.loc 1 77 0
	pop r29
	pop r28
.LVL28:
	pop r17
	pop r16
.LVL29:
	pop r15
	pop r14
.LVL30:
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN6Serial18sendandrecive1byteEc, .-_ZN6Serial18sendandrecive1byteEc
	.section	.text._ZN6Serial6reciveEPci,"ax",@progbits
.global	_ZN6Serial6reciveEPci
	.type	_ZN6Serial6reciveEPci, @function
_ZN6Serial6reciveEPci:
.LFB20:
	.loc 1 79 0
	.cfi_startproc
.LVL31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 82 0
	cp __zero_reg__,r20
	cpc __zero_reg__,r21
	brge .L18
	ldi r24,0
	ldi r25,0
.LVL32:
.L20:
	.loc 1 82 0 is_stmt 0 discriminator 3
	adiw r24,1
.LVL33:
	cp r20,r24
	cpc r21,r25
	brne .L20
.LVL34:
.L18:
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN6Serial6reciveEPci, .-_ZN6Serial6reciveEPci
	.section	.text._ZN6SerialD2Ev,"ax",@progbits
.global	_ZN6SerialD2Ev
	.type	_ZN6SerialD2Ev, @function
_ZN6SerialD2Ev:
.LFB22:
	.loc 1 92 0 is_stmt 1
	.cfi_startproc
.LVL35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN6SerialD2Ev, .-_ZN6SerialD2Ev
.global	_ZN6SerialD1Ev
	.set	_ZN6SerialD1Ev,_ZN6SerialD2Ev
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "../cpu/communication/../../drivers/io/shift register/../port controller/portcontroller.h"
	.file 4 "../cpu/communication/../../drivers/io/shift register/shiftreg.h"
	.file 5 "../cpu/communication/serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xafd
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF108
	.byte	0x4
	.long	.LASF109
	.long	.LASF110
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x82
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x85
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
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
	.long	0x30
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
	.long	0x30
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
	.long	0x42
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
	.long	0x30
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
	.long	0x30
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
	.long	0x30
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
	.long	0x30
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
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x4
	.byte	0x14
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF64
	.byte	0x4
	.byte	0x15
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.long	.LASF65
	.byte	0x4
	.byte	0x16
	.long	0x7b
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
	.long	0x30
	.uleb128 0x9
	.long	0x30
	.uleb128 0x9
	.long	0x30
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
	.long	0x30
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
	.long	0x49
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
	.long	0x62
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
	.long	0x7b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF95
	.byte	0x4
	.byte	0x29
	.long	.LASF97
	.byte	0x1
	.long	0x526
	.uleb128 0x7
	.long	0x534
	.byte	0x1
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x3d7
	.uleb128 0x5
	.long	.LASF79
	.byte	0x8
	.byte	0x5
	.byte	0xf
	.long	0x6e2
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x14
	.long	0x3c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF80
	.byte	0x5
	.byte	0x15
	.long	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"cid"
	.byte	0x5
	.byte	0x17
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF81
	.byte	0x5
	.byte	0x18
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.byte	0x19
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"clk"
	.byte	0x5
	.byte	0x1a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x22
	.long	.LASF83
	.byte	0x1
	.long	0x5af
	.long	0x5b6
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x23
	.long	.LASF84
	.byte	0x1
	.long	0x5cb
	.long	0x5d7
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x534
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x24
	.long	.LASF85
	.byte	0x1
	.long	0x5ec
	.long	0x5fd
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x534
	.uleb128 0x9
	.long	0x3c3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x25
	.long	.LASF86
	.byte	0x1
	.long	0x612
	.long	0x632
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x534
	.uleb128 0x9
	.long	0x3c3
	.uleb128 0x9
	.long	0x3c9
	.uleb128 0x9
	.long	0x3c9
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF87
	.byte	0x5
	.byte	0x26
	.long	.LASF88
	.byte	0x1
	.long	0x647
	.long	0x658
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x6e8
	.uleb128 0x9
	.long	0x42
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF89
	.byte	0x5
	.byte	0x27
	.long	.LASF90
	.long	0x3c9
	.byte	0x1
	.long	0x671
	.long	0x67d
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x3c9
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF91
	.byte	0x5
	.byte	0x28
	.long	.LASF92
	.byte	0x1
	.long	0x692
	.long	0x6a3
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x9
	.long	0x6e8
	.uleb128 0x9
	.long	0x42
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF93
	.byte	0x5
	.byte	0x29
	.long	.LASF94
	.long	0x3c9
	.byte	0x1
	.long	0x6bc
	.long	0x6c3
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF96
	.byte	0x5
	.byte	0x2e
	.long	.LASF98
	.byte	0x1
	.long	0x6d4
	.uleb128 0x7
	.long	0x6e2
	.byte	0x1
	.uleb128 0x7
	.long	0x42
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x53a
	.uleb128 0xc
	.byte	0x2
	.long	0x3c9
	.uleb128 0x10
	.long	0x59a
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x6fe
	.long	0x709
	.uleb128 0x11
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	0x6e2
	.uleb128 0x13
	.long	0x6ee
	.long	.LASF100
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x72c
	.byte	0x1
	.long	0x739
	.uleb128 0x14
	.long	0x6fe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.long	0x5b6
	.byte	0x1
	.byte	0xf
	.byte	0
	.long	0x749
	.long	0x75d
	.uleb128 0x11
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0xf
	.long	0x534
	.byte	0
	.uleb128 0x13
	.long	0x739
	.long	.LASF101
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x77b
	.byte	0x1
	.long	0x794
	.uleb128 0x14
	.long	0x749
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x753
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.long	0x5d7
	.byte	0x1
	.byte	0x14
	.byte	0
	.long	0x7a4
	.long	0x7c1
	.uleb128 0x11
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x14
	.long	0x534
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x14
	.long	0x3c3
	.byte	0
	.uleb128 0x13
	.long	0x794
	.long	.LASF102
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x7df
	.byte	0x1
	.long	0x804
	.uleb128 0x14
	.long	0x7a4
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x7ae
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x7b7
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.long	0x5fd
	.byte	0x1
	.byte	0x1a
	.byte	0
	.long	0x814
	.long	0x84d
	.uleb128 0x11
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.byte	0x1a
	.long	0x534
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x1a
	.long	0x3c3
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.long	0x3c9
	.uleb128 0x15
	.string	"o"
	.byte	0x1
	.byte	0x1a
	.long	0x3c9
	.uleb128 0x15
	.string	"cl"
	.byte	0x1
	.byte	0x1a
	.long	0x3c9
	.byte	0
	.uleb128 0x16
	.long	0x804
	.long	.LASF103
	.long	.LFB16
	.long	.LFE16
	.long	.LLST0
	.long	0x86b
	.byte	0x1
	.long	0x8a9
	.uleb128 0x14
	.long	0x814
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x81e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x827
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	0x830
	.byte	0x1
	.byte	0x62
	.uleb128 0x17
	.long	0x839
	.long	.LLST1
	.uleb128 0x17
	.long	0x842
	.long	.LLST2
	.byte	0
	.uleb128 0x18
	.long	0x632
	.byte	0x1
	.byte	0x24
	.long	.LFB18
	.long	.LFE18
	.long	.LLST3
	.long	0x8c5
	.byte	0x1
	.long	0x996
	.uleb128 0x19
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.long	.LLST4
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x24
	.long	0x6e8
	.long	.LLST5
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x24
	.long	0x42
	.long	.LLST6
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x26
	.long	0x42
	.long	.LLST7
	.uleb128 0x1b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x28
	.long	0x3c9
	.long	.LLST8
	.uleb128 0x1b
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0x29
	.long	0x42
	.long	.LLST9
	.uleb128 0x1e
	.long	.LVL11
	.long	0x2e2
	.long	0x948
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL12
	.long	0x2e2
	.long	0x95b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL13
	.long	0x2e2
	.long	0x96f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL14
	.long	0x2e2
	.long	0x982
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.long	.LVL15
	.long	0x2e2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x658
	.byte	0x1
	.byte	0x3b
	.long	.LFB19
	.long	.LFE19
	.long	.LLST10
	.long	0x9b2
	.byte	0x1
	.long	0xa46
	.uleb128 0x19
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.long	.LLST11
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x3b
	.long	0x3c9
	.long	.LLST12
	.uleb128 0x1b
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x1
	.byte	0x3d
	.long	0x42
	.long	.LLST13
	.uleb128 0x1e
	.long	.LVL22
	.long	0x2e2
	.long	0x9fa
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL23
	.long	0x2e2
	.long	0xa0d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL24
	.long	0x2e2
	.long	0xa21
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.long	.LVL25
	.long	0x2e2
	.long	0xa34
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.long	.LVL26
	.long	0x2e2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x67d
	.byte	0x1
	.byte	0x4e
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xa62
	.byte	0x1
	.long	0xaaf
	.uleb128 0x19
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.long	.LLST14
	.uleb128 0x22
	.long	.LASF105
	.byte	0x1
	.byte	0x4e
	.long	0x6e8
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	.LASF106
	.byte	0x1
	.byte	0x4e
	.long	0x42
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1c
	.string	"a"
	.byte	0x1
	.byte	0x50
	.long	0x42
	.long	.LLST15
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.byte	0x51
	.long	0x3c9
	.long	.LLST16
	.byte	0
	.uleb128 0x10
	.long	0x6c3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.long	0xabf
	.long	0xad4
	.uleb128 0x11
	.long	.LASF99
	.long	0x709
	.byte	0x1
	.uleb128 0x11
	.long	.LASF107
	.long	0xad4
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	0x42
	.uleb128 0x23
	.long	0xaaf
	.long	.LASF111
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xaf3
	.byte	0x1
	.uleb128 0x14
	.long	0xabf
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.long	.LFB16
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
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x60
	.long	.LVL4
	.long	.LFE16
	.word	0x2
	.byte	0x88
	.sleb128 6
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL5
	.word	0x1
	.byte	0x5e
	.long	.LVL5
	.long	.LFE16
	.word	0x2
	.byte	0x88
	.sleb128 7
	.long	0
	.long	0
.LLST3:
	.long	.LFB18
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
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL18
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
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
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x1c
	.byte	0x9f
	.long	.LVL9
	.long	.LVL17
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL18
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST9:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LFB19
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
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI17
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL28
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL21
	.word	0x1
	.byte	0x66
	.long	.LVL21
	.long	.LVL30
	.word	0x1
	.byte	0x5e
	.long	.LVL30
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL29
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LVL34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LVL34
	.word	0x2
	.byte	0x38
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
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
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
	.long	.LFB16
	.long	.LFE16
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"_ZN6SerialC2Ev"
.LASF103:
	.string	"_ZN6SerialC2EP8shiftregP14portcontrollerccc"
.LASF110:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF20:
	.string	"_ZN14portcontroller8readddraEv"
.LASF84:
	.string	"_ZN6SerialC4EP8shiftreg"
.LASF87:
	.string	"send"
.LASF97:
	.string	"_ZN8shiftregD4Ev"
.LASF11:
	.string	"readporta"
.LASF12:
	.string	"readportb"
.LASF15:
	.string	"readportc"
.LASF17:
	.string	"readportd"
.LASF9:
	.string	"uint64_t"
.LASF108:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF16:
	.string	"_ZN14portcontroller9readportcEv"
.LASF56:
	.string	"_ZN14portcontroller13digitalwritecEhb"
.LASF42:
	.string	"_ZN14portcontroller9writeddrcEc"
.LASF96:
	.string	"~Serial"
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
	.string	"mosi"
.LASF99:
	.string	"this"
.LASF14:
	.string	"_ZN14portcontroller9readportbEv"
.LASF48:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF45:
	.string	"digitalread"
.LASF2:
	.string	"uint8_t"
.LASF93:
	.string	"recivebuff"
.LASF90:
	.string	"_ZN6Serial18sendandrecive1byteEc"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF111:
	.string	"_ZN6SerialD2Ev"
.LASF60:
	.string	"bool"
.LASF53:
	.string	"digitalwriteb"
.LASF8:
	.string	"long long int"
.LASF13:
	.string	"_ZN14portcontroller9readportaEv"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF59:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF104:
	.string	"shift"
.LASF95:
	.string	"~shiftreg"
.LASF91:
	.string	"recive"
.LASF85:
	.string	"_ZN6SerialC4EP8shiftregP14portcontroller"
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
.LASF106:
	.string	"length"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"clockpin"
.LASF89:
	.string	"sendandrecive1byte"
.LASF0:
	.string	"signed char"
.LASF88:
	.string	"_ZN6Serial4sendEPci"
.LASF10:
	.string	"long long unsigned int"
.LASF51:
	.string	"digitalwritea"
.LASF6:
	.string	"uint32_t"
.LASF55:
	.string	"digitalwritec"
.LASF57:
	.string	"digitalwrited"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF109:
	.string	"../cpu/communication/Serial.cpp"
.LASF80:
	.string	"csreg"
.LASF52:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF36:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF44:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF27:
	.string	"portcontroller"
.LASF54:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF98:
	.string	"_ZN6SerialD4Ev"
.LASF105:
	.string	"buff"
.LASF107:
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
.LASF7:
	.string	"long unsigned int"
.LASF92:
	.string	"_ZN6Serial6reciveEPci"
.LASF83:
	.string	"_ZN6SerialC4Ev"
.LASF67:
	.string	"_ZN8shiftregC4Ev"
.LASF24:
	.string	"_ZN14portcontroller8readddrcEv"
.LASF101:
	.string	"_ZN6SerialC2EP8shiftreg"
.LASF102:
	.string	"_ZN6SerialC2EP8shiftregP14portcontroller"
.LASF32:
	.string	"_ZN14portcontroller10writeportbEc"
.LASF39:
	.string	"writeddrb"
.LASF41:
	.string	"writeddrc"
.LASF43:
	.string	"writeddrd"
.LASF86:
	.string	"_ZN6SerialC4EP8shiftregP14portcontrollerccc"
.LASF40:
	.string	"_ZN14portcontroller9writeddrbEc"
.LASF69:
	.string	"shiftout"
.LASF50:
	.string	"_ZN14portcontrollerD4Ev"
.LASF79:
	.string	"Serial"
.LASF68:
	.string	"_ZN8shiftregC4EhhhP14portcontroller"
.LASF81:
	.string	"miso"
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
.LASF94:
	.string	"_ZN6Serial10recivebuffEv"
.LASF38:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF65:
	.string	"dataque"
.LASF18:
	.string	"_ZN14portcontroller9readportdEv"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
