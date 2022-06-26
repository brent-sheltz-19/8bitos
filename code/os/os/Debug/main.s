	.file	"main.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z10runprogramv,"ax",@progbits
.global	_Z10runprogramv
	.type	_Z10runprogramv, @function
_Z10runprogramv:
.LFB26:
	.file 1 ".././main.cpp"
	.loc 1 86 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	ldi r24,lo8(_ZL9interpret)
	ldi r25,hi8(_ZL9interpret)
	call _ZN11interpreter3runEv
.LVL0:
	ret
	.cfi_endproc
.LFE26:
	.size	_Z10runprogramv, .-_Z10runprogramv
	.section	.text._Z11storememoryyc,"ax",@progbits
.global	_Z11storememoryyc
	.type	_Z11storememoryyc, @function
_Z11storememoryyc:
.LFB27:
	.loc 1 90 0
	.cfi_startproc
.LVL1:
	push r6
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 6, -2
	push r7
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -3
	push r8
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 8, -4
	push r9
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 9, -5
	push r10
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 10, -6
	push r11
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -7
	push r12
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 12, -8
	push r13
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 13, -9
	push r14
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 14, -10
	push r15
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 15, -11
	push r16
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 16, -12
	push r17
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 17, -13
	push r28
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	mov r13,r18
	mov r15,r19
	mov r29,r20
	mov r28,r21
	mov r27,r22
	mov r26,r23
	mov r31,r24
	mov r30,r25
	mov r14,r16
	.loc 1 91 0
	cpi r18,-1
	ldi r17,31
	cpc r19,r17
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	brsh .L3
	.loc 1 93 0
	mov r16,r18
.LVL2:
	mov r17,r19
	mov r18,r20
.LVL3:
	mov r19,r21
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r24,lo8(_ZL5bank0)
	ldi r25,hi8(_ZL5bank0)
	call _ZN3ram5writeEyc
.LVL4:
	rjmp .L2
.LVL5:
.L3:
	.loc 1 95 0
	subi r19,32
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL6:
	mov r16,r18
	cpi r18,-1
	ldi r17,31
	cpc r19,r17
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	brsh .L5
	.loc 1 97 0
	mov r17,r19
	mov r18,r20
.LVL7:
	mov r19,r21
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r24,lo8(_ZL5bank1)
	ldi r25,hi8(_ZL5bank1)
	call _ZN3ram5writeEyc
.LVL8:
	rjmp .L2
.L5:
	.loc 1 99 0
	mov r18,r13
	mov r19,r15
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	subi r19,64
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	mov r16,r18
	cpi r18,-1
	ldi r17,31
	cpc r19,r17
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	brsh .L6
	.loc 1 101 0
	mov r17,r19
	mov r18,r20
	mov r19,r21
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r24,lo8(_ZL5bank2)
	ldi r25,hi8(_ZL5bank2)
	call _ZN3ram5writeEyc
.LVL9:
	rjmp .L2
.L6:
	.loc 1 103 0
	mov r18,r13
	mov r19,r15
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	subi r19,96
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	mov r16,r18
	cpi r18,-1
	ldi r17,31
	cpc r19,r17
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	brsh .L7
	.loc 1 105 0
	mov r17,r19
	mov r18,r20
	mov r19,r21
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r24,lo8(_ZL5bank3)
	ldi r25,hi8(_ZL5bank3)
	call _ZN3ram5writeEyc
.LVL10:
	rjmp .L2
.L7:
	.loc 1 107 0
	cpi r18,-1
	sbci r19,63
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	brsh .L2
	.loc 1 109 0
	mov r18,r13
	mov r19,r15
	mov r20,r29
	mov r21,r28
	mov r22,r27
	mov r23,r26
	mov r24,r31
	mov r25,r30
	subi r19,-128
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	mov r16,r18
	mov r17,r19
	mov r18,r20
	mov r19,r21
	mov r20,r22
	mov r21,r23
	mov r22,r24
	mov r23,r25
	ldi r24,lo8(_ZL5bank4)
	ldi r25,hi8(_ZL5bank4)
	call _ZN3ram5writeEyc
.LVL11:
.L2:
/* epilogue start */
	.loc 1 113 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL12:
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE27:
	.size	_Z11storememoryyc, .-_Z11storememoryyc
	.section	.text._Z22loadmainprogramfromromcb,"ax",@progbits
.global	_Z22loadmainprogramfromromcb
	.type	_Z22loadmainprogramfromromcb, @function
_Z22loadmainprogramfromromcb:
.LFB28:
	.loc 1 115 0
	.cfi_startproc
.LVL13:
	push r14
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 117 0
	cpse r22,__zero_reg__
	rjmp .L13
	.loc 1 123 0
	ldi r16,lo8(_ZL5bank3)
	ldi r17,hi8(_ZL5bank3)
	rjmp .L9
.L13:
	.loc 1 119 0
	ldi r16,lo8(_ZL5bank1)
	ldi r17,hi8(_ZL5bank1)
.L9:
.LVL14:
	.loc 1 126 0
	tst r24
	breq .L14
	.loc 1 130 0
	cpi r24,lo8(1)
	breq .L15
	.loc 1 135 0
	cpi r24,lo8(2)
	breq .L16
	.loc 1 140 0
	cpi r24,lo8(3)
	brne .L17
	.loc 1 142 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL8program3)
	mov r14,r31
	ldi r31,hi8(_ZL8program3)
	mov r15,r31
	mov r31,__tmp_reg__
	rjmp .L10
.L14:
	.loc 1 128 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL8program0)
	mov r14,r31
	ldi r31,hi8(_ZL8program0)
	mov r15,r31
	mov r31,__tmp_reg__
	rjmp .L10
.L15:
	.loc 1 132 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL8program1)
	mov r14,r31
	ldi r31,hi8(_ZL8program1)
	mov r15,r31
	mov r31,__tmp_reg__
	rjmp .L10
.L16:
	.loc 1 137 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL8program2)
	mov r14,r31
	ldi r31,hi8(_ZL8program2)
	mov r15,r31
	mov r31,__tmp_reg__
.L10:
.LVL15:
.LBB2:
	.loc 1 148 0
	ldi r28,0
	ldi r29,0
.LVL16:
.L12:
	.loc 1 150 0 discriminator 2
	movw r22,r28
	movw r24,r14
	call _ZN3rom4readEi
.LVL17:
	mov r20,r24
	movw r22,r28
	movw r24,r16
	call _ZN3ram5writeEjc
.LVL18:
	.loc 1 148 0 discriminator 2
	adiw r28,1
.LVL19:
	cpi r28,-1
	ldi r24,31
	cpc r29,r24
	brne .L12
.LBE2:
	.loc 1 153 0
	ldi r24,lo8(116)
.LBB3:
	rjmp .L11
.LVL20:
.L17:
.LBE3:
	.loc 1 146 0
	ldi r24,lo8(101)
.LVL21:
.L11:
/* epilogue start */
	.loc 1 154 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL22:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE28:
	.size	_Z22loadmainprogramfromromcb, .-_Z22loadmainprogramfromromcb
	.section	.text._Z12readKeyboardPci,"ax",@progbits
.global	_Z12readKeyboardPci
	.type	_Z12readKeyboardPci, @function
_Z12readKeyboardPci:
.LFB29:
	.loc 1 156 0
	.cfi_startproc
.LVL23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE29:
	.size	_Z12readKeyboardPci, .-_Z12readKeyboardPci
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB30:
	.loc 1 161 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 166 0
	ldi r22,lo8(-1)
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontroller9writeddraEc
.LVL24:
	.loc 1 167 0
	ldi r22,lo8(-1)
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontroller9writeddrcEc
.LVL25:
	.loc 1 171 0
	ldi r22,0
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontroller9writeddrbEc
.LVL26:
	.loc 1 172 0
	ldi r22,0
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontroller9writeddrdEc
.LVL27:
	.loc 1 174 0
	ldi r24,lo8(_ZL5bank2)
	ldi r25,hi8(_ZL5bank2)
	sts _ZL9interpret+269+1,r25
	sts _ZL9interpret+269,r24
	.loc 1 175 0
	ldi r24,lo8(_ZL5bank9)
	ldi r25,hi8(_ZL5bank9)
	sts _ZL9interpret+271+1,r25
	sts _ZL9interpret+271,r24
	.loc 1 176 0
	ldi r24,lo8(_ZL6vbank0)
	ldi r25,hi8(_ZL6vbank0)
	sts _ZL9interpret+273+1,r25
	sts _ZL9interpret+273,r24
	.loc 1 177 0
	ldi r24,lo8(_ZL6vbank1)
	ldi r25,hi8(_ZL6vbank1)
	sts _ZL9interpret+275+1,r25
	sts _ZL9interpret+275,r24
	.loc 1 178 0
	ldi r24,lo8(_ZL6vbank2)
	ldi r25,hi8(_ZL6vbank2)
	sts _ZL9interpret+277+1,r25
	sts _ZL9interpret+277,r24
.LVL28:
	.loc 1 180 0
	mov r5,__zero_reg__
.LBB4:
.LBB5:
	.loc 1 186 0
	ldi r16,lo8(_ZL7command)
	ldi r17,hi8(_ZL7command)
.LBE5:
.LBB6:
.LBB7:
.LBB8:
	.loc 1 191 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL7command+2)
	mov r14,r31
	ldi r31,hi8(_ZL7command+2)
	mov r15,r31
	mov r31,__tmp_reg__
.LBE8:
.LBB9:
.LBB10:
	.loc 1 195 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL7command+4)
	mov r12,r31
	ldi r31,hi8(_ZL7command+4)
	mov r13,r31
	mov r31,__tmp_reg__
.LBE10:
.LBB11:
.LBB12:
	.loc 1 199 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL7command+6)
	mov r10,r31
	ldi r31,hi8(_ZL7command+6)
	mov r11,r31
	mov r31,__tmp_reg__
.LBE12:
.LBB13:
.LBB14:
	.loc 1 204 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL7command+8)
	mov r6,r31
	ldi r31,hi8(_ZL7command+8)
	mov r7,r31
	mov r31,__tmp_reg__
.LBE14:
.LBE13:
.LBE11:
.LBE9:
.LBE7:
.LBE6:
	.loc 1 218 0
	mov __tmp_reg__,r31
	ldi r31,lo8(_ZL9interpret+269)
	mov r8,r31
	ldi r31,hi8(_ZL9interpret+269)
	mov r9,r31
	mov r31,__tmp_reg__
.LVL29:
.L24:
	.loc 1 185 0
	ldi r24,lo8(_ZL2kb)
	ldi r25,hi8(_ZL2kb)
	call _ZN8keyboard7getsizeEv
.LVL30:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r25,0
	call calloc
.LVL31:
	movw r28,r24
.LVL32:
.LBB24:
	.loc 1 186 0
	movw r30,r16
/* #APP */
 ;  186 ".././main.cpp" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL33:
/* #NOAPP */
.LBE24:
	.loc 1 186 0
	call strcpy_P
.LVL34:
.LBB25:
.LBB22:
	.loc 1 187 0
	movw r30,r16
/* #APP */
 ;  187 ".././main.cpp" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL35:
/* #NOAPP */
.LBE22:
	.loc 1 187 0
	movw r24,r28
	call strcasecmp_P
.LVL36:
	or r24,r25
	brne .L21
	.loc 1 189 0
	ldi r24,lo8(_ZL9interpret)
	ldi r25,hi8(_ZL9interpret)
	call _ZN11interpreter3runEv
.LVL37:
	mov r5,r24
.LVL38:
	rjmp .L22
.L21:
.LVL39:
.LBB23:
.LBB20:
	.loc 1 191 0
	movw r30,r14
/* #APP */
 ;  191 ".././main.cpp" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL40:
/* #NOAPP */
.LBE20:
	.loc 1 191 0
	movw r24,r28
	call strcasecmp_P
.LVL41:
	or r24,r25
	breq .L22
.LVL42:
.LBB21:
.LBB18:
	.loc 1 195 0
	movw r30,r12
/* #APP */
 ;  195 ".././main.cpp" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL43:
/* #NOAPP */
.LBE18:
	.loc 1 195 0
	movw r24,r28
	call strcasecmp_P
.LVL44:
	or r24,r25
	breq .L22
.LVL45:
.LBB19:
.LBB16:
	.loc 1 199 0
	movw r30,r10
/* #APP */
 ;  199 ".././main.cpp" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
.LVL46:
/* #NOAPP */
.LBE16:
	.loc 1 199 0
	movw r24,r28
	call strcasecmp_P
.LVL47:
	or r24,r25
	breq .L22
.LVL48:
.LBB17:
.LBB15:
	.loc 1 204 0
	movw r30,r6
/* #APP */
 ;  204 ".././main.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
.LVL49:
/* #NOAPP */
.L22:
.LBE15:
.LBE17:
.LBE19:
.LBE21:
.LBE23:
.LBE25:
	.loc 1 211 0
	ldi r24,lo8(98)
	cpse r5,r24
	rjmp .L23
	.loc 1 216 0
	lds r24,_ZL9interpret
	cpi r24,lo8(4)
	brne .L23
	.loc 1 218 0
	lds r30,_ZL9interpret+1
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(_ZL11rambanklist+4))
	sbci r31,hi8(-(_ZL11rambanklist+4))
	ld r24,Z
	ldd r25,Z+1
	movw r30,r8
	std Z+1,r25
	st Z,r24
.L23:
	.loc 1 228 0
	movw r24,r28
	call free
.LVL50:
.LBE4:
	.loc 1 181 0
	rjmp .L24
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.section	.text._GLOBAL__sub_I__Z10runprogramv,"ax",@progbits
	.type	_GLOBAL__sub_I__Z10runprogramv, @function
_GLOBAL__sub_I__Z10runprogramv:
.LFB32:
	.loc 1 231 0
	.cfi_startproc
	push r8
.LCFI20:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI21:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI22:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI23:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI24:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI26:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI27:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI28:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI29:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL51:
.LBB28:
.LBB29:
	.loc 1 46 0
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontrollerC1Ev
.LVL52:
	.loc 1 47 0
	ldi r16,lo8(_ZL4port)
	ldi r17,hi8(_ZL4port)
	ldi r18,lo8(38)
	ldi r20,lo8(39)
	ldi r22,lo8(40)
	ldi r24,lo8(_ZL6addreg)
	ldi r25,hi8(_ZL6addreg)
	call _ZN8shiftregC1EhhhP14portcontroller
.LVL53:
	.loc 1 48 0
	ldi r18,lo8(35)
	ldi r20,lo8(36)
	ldi r22,lo8(37)
	ldi r24,lo8(_ZL5csreg)
	ldi r25,hi8(_ZL5csreg)
	call _ZN8shiftregC1EhhhP14portcontroller
.LVL54:
	.loc 1 49 0
	mov __tmp_reg__,r31
	ldi r31,lo8(33)
	mov r14,r31
	mov r31,__tmp_reg__
	ldi r16,lo8(34)
	ldi r18,lo8(3)
	ldi r20,lo8(_ZL4port)
	ldi r21,hi8(_ZL4port)
	ldi r22,lo8(_ZL5csreg)
	ldi r23,hi8(_ZL5csreg)
	ldi r24,lo8(_ZL6serial)
	ldi r25,hi8(_ZL6serial)
	call _ZN6SerialC1EP8shiftregP14portcontrollerccc
.LVL55:
	.loc 1 50 0
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	movw r16,r14
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank0)
	ldi r25,hi8(_ZL5bank0)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL56:
	.loc 1 51 0
	mov r14,__zero_reg__
	ldi r17,lo8(32)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank1)
	ldi r25,hi8(_ZL5bank1)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL57:
	.loc 1 52 0
	mov r14,__zero_reg__
	ldi r17,lo8(64)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank2)
	ldi r25,hi8(_ZL5bank2)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL58:
	.loc 1 53 0
	mov r14,__zero_reg__
	ldi r17,lo8(96)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank3)
	ldi r25,hi8(_ZL5bank3)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL59:
	.loc 1 54 0
	mov r14,__zero_reg__
	ldi r17,lo8(-128)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank4)
	ldi r25,hi8(_ZL5bank4)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL60:
	.loc 1 56 0
	mov r14,__zero_reg__
	ldi r17,lo8(-96)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank5)
	ldi r25,hi8(_ZL5bank5)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL61:
	.loc 1 57 0
	mov r14,__zero_reg__
	ldi r17,lo8(-64)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank6)
	ldi r25,hi8(_ZL5bank6)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL62:
	.loc 1 58 0
	mov r14,__zero_reg__
	ldi r17,lo8(-32)
	mov r15,r17
	ldi r16,0
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank7)
	ldi r25,hi8(_ZL5bank7)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL63:
	.loc 1 59 0
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank8)
	ldi r25,hi8(_ZL5bank8)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL64:
	.loc 1 60 0
	mov r14,__zero_reg__
	ldi r17,lo8(32)
	mov r15,r17
	ldi r16,lo8(1)
	ldi r17,0
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL5bank9)
	ldi r25,hi8(_ZL5bank9)
	call _ZN3ramC1EP14portcontrollerP8shiftreghm
.LVL65:
	.loc 1 62 0
	mov r12,__zero_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(96)
	mov r13,r31
	mov r31,__tmp_reg__
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL4bios)
	ldi r25,hi8(_ZL4bios)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL66:
	.loc 1 63 0
	set
	clr r13
	bld r13,7
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL8settings)
	ldi r25,hi8(_ZL8settings)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL67:
	.loc 1 64 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-96)
	mov r13,r31
	mov r31,__tmp_reg__
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL8program0)
	ldi r25,hi8(_ZL8program0)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL68:
	.loc 1 65 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-64)
	mov r13,r31
	mov r31,__tmp_reg__
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL8program1)
	ldi r25,hi8(_ZL8program1)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL69:
	.loc 1 66 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-32)
	mov r13,r31
	mov r31,__tmp_reg__
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL8program2)
	ldi r25,hi8(_ZL8program2)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL70:
	.loc 1 67 0
	mov r13,__zero_reg__
	set
	clr r14
	bld r14,1
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL8program3)
	ldi r25,hi8(_ZL8program3)
	call _ZN3romC1EP14portcontrollerP8shiftregy
.LVL71:
	.loc 1 71 0
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r14,__zero_reg__
	ldi r16,lo8(2)
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL6vbank0)
	ldi r25,hi8(_ZL6vbank0)
	call _ZN4VramC1EP14portcontrollerP8shiftreghhy
.LVL72:
	.loc 1 72 0
	set
	clr r9
	bld r9,5
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL6vbank1)
	ldi r25,hi8(_ZL6vbank1)
	call _ZN4VramC1EP14portcontrollerP8shiftreghhy
.LVL73:
	.loc 1 73 0
	set
	clr r9
	bld r9,6
	ldi r18,lo8(1)
	ldi r20,lo8(_ZL6addreg)
	ldi r21,hi8(_ZL6addreg)
	ldi r22,lo8(_ZL4port)
	ldi r23,hi8(_ZL4port)
	ldi r24,lo8(_ZL6vbank2)
	ldi r25,hi8(_ZL6vbank2)
	call _ZN4VramC1EP14portcontrollerP8shiftreghhy
.LVL74:
	.loc 1 76 0
	ldi r24,lo8(16)
	ldi r30,lo8(_ZL6vbank0)
	ldi r31,hi8(_ZL6vbank0)
	ldi r26,lo8(_ZL12vrambanklist)
	ldi r27,hi8(_ZL12vrambanklist)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	ldi r24,lo8(16)
	ldi r30,lo8(_ZL6vbank1)
	ldi r31,hi8(_ZL6vbank1)
	ldi r26,lo8(_ZL12vrambanklist+16)
	ldi r27,hi8(_ZL12vrambanklist+16)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	ldi r24,lo8(16)
	ldi r30,lo8(_ZL6vbank2)
	ldi r31,hi8(_ZL6vbank2)
	ldi r26,lo8(_ZL12vrambanklist+32)
	ldi r27,hi8(_ZL12vrambanklist+32)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 80 0
	ldi r24,lo8(_ZL10irqhandler)
	ldi r25,hi8(_ZL10irqhandler)
	call _ZN10interruptsC1Ev
.LVL75:
	.loc 1 81 0
	ldi r24,lo8(_ZL9interpret)
	ldi r25,hi8(_ZL9interpret)
	call _ZN11interpreterC1Ev
.LVL76:
	.loc 1 82 0
	ldi r24,lo8(_ZL2kb)
	ldi r25,hi8(_ZL2kb)
	call _ZN8keyboardC1Ev
.LVL77:
/* epilogue start */
.LBE29:
.LBE28:
	.loc 1 231 0
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE32:
	.size	_GLOBAL__sub_I__Z10runprogramv, .-_GLOBAL__sub_I__Z10runprogramv
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I__Z10runprogramv)
	.section	.text._GLOBAL__sub_D__Z10runprogramv,"ax",@progbits
	.type	_GLOBAL__sub_D__Z10runprogramv, @function
_GLOBAL__sub_D__Z10runprogramv:
.LFB33:
	.loc 1 231 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL78:
.LBB32:
.LBB33:
	.loc 1 82 0
	ldi r24,lo8(_ZL2kb)
	ldi r25,hi8(_ZL2kb)
	call _ZN8keyboardD1Ev
.LVL79:
	.loc 1 81 0
	ldi r24,lo8(_ZL9interpret)
	ldi r25,hi8(_ZL9interpret)
	call _ZN11interpreterD1Ev
.LVL80:
	.loc 1 80 0
	ldi r24,lo8(_ZL10irqhandler)
	ldi r25,hi8(_ZL10irqhandler)
	call _ZN10interruptsD1Ev
.LVL81:
	.loc 1 76 0
	ldi r24,lo8(_ZL12vrambanklist+32)
	ldi r25,hi8(_ZL12vrambanklist+32)
	call _ZN4VramD1Ev
.LVL82:
	ldi r24,lo8(_ZL12vrambanklist+16)
	ldi r25,hi8(_ZL12vrambanklist+16)
	call _ZN4VramD1Ev
.LVL83:
	ldi r24,lo8(_ZL12vrambanklist)
	ldi r25,hi8(_ZL12vrambanklist)
	call _ZN4VramD1Ev
.LVL84:
	.loc 1 73 0
	ldi r24,lo8(_ZL6vbank2)
	ldi r25,hi8(_ZL6vbank2)
	call _ZN4VramD1Ev
.LVL85:
	.loc 1 72 0
	ldi r24,lo8(_ZL6vbank1)
	ldi r25,hi8(_ZL6vbank1)
	call _ZN4VramD1Ev
.LVL86:
	.loc 1 71 0
	ldi r24,lo8(_ZL6vbank0)
	ldi r25,hi8(_ZL6vbank0)
	call _ZN4VramD1Ev
.LVL87:
	.loc 1 67 0
	ldi r24,lo8(_ZL8program3)
	ldi r25,hi8(_ZL8program3)
	call _ZN3romD1Ev
.LVL88:
	.loc 1 66 0
	ldi r24,lo8(_ZL8program2)
	ldi r25,hi8(_ZL8program2)
	call _ZN3romD1Ev
.LVL89:
	.loc 1 65 0
	ldi r24,lo8(_ZL8program1)
	ldi r25,hi8(_ZL8program1)
	call _ZN3romD1Ev
.LVL90:
	.loc 1 64 0
	ldi r24,lo8(_ZL8program0)
	ldi r25,hi8(_ZL8program0)
	call _ZN3romD1Ev
.LVL91:
	.loc 1 63 0
	ldi r24,lo8(_ZL8settings)
	ldi r25,hi8(_ZL8settings)
	call _ZN3romD1Ev
.LVL92:
	.loc 1 62 0
	ldi r24,lo8(_ZL4bios)
	ldi r25,hi8(_ZL4bios)
	call _ZN3romD1Ev
.LVL93:
	.loc 1 60 0
	ldi r24,lo8(_ZL5bank9)
	ldi r25,hi8(_ZL5bank9)
	call _ZN3ramD1Ev
.LVL94:
	.loc 1 59 0
	ldi r24,lo8(_ZL5bank8)
	ldi r25,hi8(_ZL5bank8)
	call _ZN3ramD1Ev
.LVL95:
	.loc 1 58 0
	ldi r24,lo8(_ZL5bank7)
	ldi r25,hi8(_ZL5bank7)
	call _ZN3ramD1Ev
.LVL96:
	.loc 1 57 0
	ldi r24,lo8(_ZL5bank6)
	ldi r25,hi8(_ZL5bank6)
	call _ZN3ramD1Ev
.LVL97:
	.loc 1 56 0
	ldi r24,lo8(_ZL5bank5)
	ldi r25,hi8(_ZL5bank5)
	call _ZN3ramD1Ev
.LVL98:
	.loc 1 54 0
	ldi r24,lo8(_ZL5bank4)
	ldi r25,hi8(_ZL5bank4)
	call _ZN3ramD1Ev
.LVL99:
	.loc 1 53 0
	ldi r24,lo8(_ZL5bank3)
	ldi r25,hi8(_ZL5bank3)
	call _ZN3ramD1Ev
.LVL100:
	.loc 1 52 0
	ldi r24,lo8(_ZL5bank2)
	ldi r25,hi8(_ZL5bank2)
	call _ZN3ramD1Ev
.LVL101:
	.loc 1 51 0
	ldi r24,lo8(_ZL5bank1)
	ldi r25,hi8(_ZL5bank1)
	call _ZN3ramD1Ev
.LVL102:
	.loc 1 50 0
	ldi r24,lo8(_ZL5bank0)
	ldi r25,hi8(_ZL5bank0)
	call _ZN3ramD1Ev
.LVL103:
	.loc 1 49 0
	ldi r24,lo8(_ZL6serial)
	ldi r25,hi8(_ZL6serial)
	call _ZN6SerialD1Ev
.LVL104:
	.loc 1 48 0
	ldi r24,lo8(_ZL5csreg)
	ldi r25,hi8(_ZL5csreg)
	call _ZN8shiftregD1Ev
.LVL105:
	.loc 1 47 0
	ldi r24,lo8(_ZL6addreg)
	ldi r25,hi8(_ZL6addreg)
	call _ZN8shiftregD1Ev
.LVL106:
	.loc 1 46 0
	ldi r24,lo8(_ZL4port)
	ldi r25,hi8(_ZL4port)
	call _ZN14portcontrollerD1Ev
.LVL107:
	ret
.LBE33:
.LBE32:
	.cfi_endproc
.LFE33:
	.size	_GLOBAL__sub_D__Z10runprogramv, .-_GLOBAL__sub_D__Z10runprogramv
	.global __do_global_dtors
	.section .dtors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_D__Z10runprogramv)
	.section	.bss._ZL2kb,"aw",@nobits
	.type	_ZL2kb, @object
	.size	_ZL2kb, 10
_ZL2kb:
	.zero	10
	.section	.bss._ZL9interpret,"aw",@nobits
	.type	_ZL9interpret, @object
	.size	_ZL9interpret, 290
_ZL9interpret:
	.zero	290
	.section	.bss._ZL10irqhandler,"aw",@nobits
	.type	_ZL10irqhandler, @object
	.size	_ZL10irqhandler, 2
_ZL10irqhandler:
	.zero	2
	.section	.bss._ZL12vrambanklist,"aw",@nobits
	.type	_ZL12vrambanklist, @object
	.size	_ZL12vrambanklist, 48
_ZL12vrambanklist:
	.zero	48
	.section	.rodata._ZL11rambanklist,"a",@progbits
	.type	_ZL11rambanklist, @object
	.size	_ZL11rambanklist, 20
_ZL11rambanklist:
	.word	_ZL5bank0
	.word	_ZL5bank1
	.word	_ZL5bank2
	.word	_ZL5bank3
	.word	_ZL5bank4
	.word	_ZL5bank5
	.word	_ZL5bank6
	.word	_ZL5bank7
	.word	_ZL5bank8
	.word	_ZL5bank9
	.section	.bss._ZL6vbank2,"aw",@nobits
	.type	_ZL6vbank2, @object
	.size	_ZL6vbank2, 16
_ZL6vbank2:
	.zero	16
	.section	.bss._ZL6vbank1,"aw",@nobits
	.type	_ZL6vbank1, @object
	.size	_ZL6vbank1, 16
_ZL6vbank1:
	.zero	16
	.section	.bss._ZL6vbank0,"aw",@nobits
	.type	_ZL6vbank0, @object
	.size	_ZL6vbank0, 16
_ZL6vbank0:
	.zero	16
	.section	.bss._ZL8program3,"aw",@nobits
	.type	_ZL8program3, @object
	.size	_ZL8program3, 8
_ZL8program3:
	.zero	8
	.section	.bss._ZL8program2,"aw",@nobits
	.type	_ZL8program2, @object
	.size	_ZL8program2, 8
_ZL8program2:
	.zero	8
	.section	.bss._ZL8program1,"aw",@nobits
	.type	_ZL8program1, @object
	.size	_ZL8program1, 8
_ZL8program1:
	.zero	8
	.section	.bss._ZL8program0,"aw",@nobits
	.type	_ZL8program0, @object
	.size	_ZL8program0, 8
_ZL8program0:
	.zero	8
	.section	.bss._ZL8settings,"aw",@nobits
	.type	_ZL8settings, @object
	.size	_ZL8settings, 8
_ZL8settings:
	.zero	8
	.section	.bss._ZL4bios,"aw",@nobits
	.type	_ZL4bios, @object
	.size	_ZL4bios, 8
_ZL4bios:
	.zero	8
	.section	.bss._ZL5bank9,"aw",@nobits
	.type	_ZL5bank9, @object
	.size	_ZL5bank9, 12
_ZL5bank9:
	.zero	12
	.section	.bss._ZL5bank8,"aw",@nobits
	.type	_ZL5bank8, @object
	.size	_ZL5bank8, 12
_ZL5bank8:
	.zero	12
	.section	.bss._ZL5bank7,"aw",@nobits
	.type	_ZL5bank7, @object
	.size	_ZL5bank7, 12
_ZL5bank7:
	.zero	12
	.section	.bss._ZL5bank6,"aw",@nobits
	.type	_ZL5bank6, @object
	.size	_ZL5bank6, 12
_ZL5bank6:
	.zero	12
	.section	.bss._ZL5bank5,"aw",@nobits
	.type	_ZL5bank5, @object
	.size	_ZL5bank5, 12
_ZL5bank5:
	.zero	12
	.section	.bss._ZL5bank4,"aw",@nobits
	.type	_ZL5bank4, @object
	.size	_ZL5bank4, 12
_ZL5bank4:
	.zero	12
	.section	.bss._ZL5bank3,"aw",@nobits
	.type	_ZL5bank3, @object
	.size	_ZL5bank3, 12
_ZL5bank3:
	.zero	12
	.section	.bss._ZL5bank2,"aw",@nobits
	.type	_ZL5bank2, @object
	.size	_ZL5bank2, 12
_ZL5bank2:
	.zero	12
	.section	.bss._ZL5bank1,"aw",@nobits
	.type	_ZL5bank1, @object
	.size	_ZL5bank1, 12
_ZL5bank1:
	.zero	12
	.section	.bss._ZL5bank0,"aw",@nobits
	.type	_ZL5bank0, @object
	.size	_ZL5bank0, 12
_ZL5bank0:
	.zero	12
	.section	.bss._ZL6serial,"aw",@nobits
	.type	_ZL6serial, @object
	.size	_ZL6serial, 8
_ZL6serial:
	.zero	8
	.section	.bss._ZL5csreg,"aw",@nobits
	.type	_ZL5csreg, @object
	.size	_ZL5csreg, 13
_ZL5csreg:
	.zero	13
	.section	.bss._ZL6addreg,"aw",@nobits
	.type	_ZL6addreg, @object
	.size	_ZL6addreg, 13
_ZL6addreg:
	.zero	13
	.section	.bss._ZL4port,"aw",@nobits
	.type	_ZL4port, @object
	.size	_ZL4port, 1
_ZL4port:
	.zero	1
	.section	.progmem.data._ZL7command,"a",@progbits
	.type	_ZL7command, @object
	.size	_ZL7command, 8
_ZL7command:
	.word	_ZL3run
	.word	_ZL2cd
	.word	_ZL2ls
	.word	_ZL4load
	.section	.progmem.data._ZL4load,"a",@progbits
	.type	_ZL4load, @object
	.size	_ZL4load, 5
_ZL4load:
	.string	"load"
	.section	.progmem.data._ZL2ls,"a",@progbits
	.type	_ZL2ls, @object
	.size	_ZL2ls, 3
_ZL2ls:
	.string	"ls"
	.section	.progmem.data._ZL2cd,"a",@progbits
	.type	_ZL2cd, @object
	.size	_ZL2cd, 3
_ZL2cd:
	.string	"cd"
	.section	.progmem.data._ZL3run,"a",@progbits
	.type	_ZL3run, @object
	.size	_ZL3run, 3
_ZL3run:
	.string	"./"
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././drivers/io/port controller/portcontroller.h"
	.file 4 ".././drivers/io/shift register/shiftreg.h"
	.file 5 ".././drivers/io/keyboard/../../../cpu/communication/Serial.h"
	.file 6 ".././drivers/io/keyboard/keyboard.h"
	.file 7 ".././drivers/mem/volatile/ram.h"
	.file 8 ".././drivers/mem/volatile/Vram.h"
	.file 9 ".././drivers/mem/rom.h"
	.file 10 ".././cpu/interrupts/interrupts.h"
	.file 11 ".././cpu/interpreter/interpreter.h"
	.file 12 ".././constants.h"
	.file 13 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.file 14 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2b6e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF365
	.byte	0x4
	.long	.LASF366
	.long	.LASF367
	.long	.Ldebug_ranges0+0x90
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
	.long	.LASF95
	.byte	0x4
	.byte	0x29
	.long	.LASF97
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
	.uleb128 0x6
	.long	.LASF79
	.byte	0x8
	.byte	0x5
	.byte	0xf
	.long	0x6e8
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.byte	0x14
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF80
	.byte	0x5
	.byte	0x15
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"cid"
	.byte	0x5
	.byte	0x17
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.long	.LASF81
	.byte	0x5
	.byte	0x18
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.long	.LASF82
	.byte	0x5
	.byte	0x19
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"clk"
	.byte	0x5
	.byte	0x1a
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x22
	.long	.LASF83
	.byte	0x1
	.long	0x5b5
	.long	0x5bc
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x23
	.long	.LASF84
	.byte	0x1
	.long	0x5d1
	.long	0x5dd
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x53a
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x24
	.long	.LASF85
	.byte	0x1
	.long	0x5f2
	.long	0x603
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x53a
	.uleb128 0xa
	.long	0x3d0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.byte	0x25
	.long	.LASF86
	.byte	0x1
	.long	0x618
	.long	0x638
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x53a
	.uleb128 0xa
	.long	0x3d0
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF87
	.byte	0x5
	.byte	0x26
	.long	.LASF88
	.byte	0x1
	.long	0x64d
	.long	0x65e
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x8d
	.uleb128 0xa
	.long	0x49
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF89
	.byte	0x5
	.byte	0x27
	.long	.LASF90
	.long	0x93
	.byte	0x1
	.long	0x677
	.long	0x683
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF91
	.byte	0x5
	.byte	0x28
	.long	.LASF92
	.byte	0x1
	.long	0x698
	.long	0x6a9
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0xa
	.long	0x8d
	.uleb128 0xa
	.long	0x49
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF93
	.byte	0x5
	.byte	0x29
	.long	.LASF94
	.long	0x93
	.byte	0x1
	.long	0x6c2
	.long	0x6c9
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF96
	.byte	0x5
	.byte	0x2e
	.long	.LASF98
	.byte	0x1
	.long	0x6da
	.uleb128 0x8
	.long	0x6e8
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x540
	.uleb128 0x6
	.long	.LASF99
	.byte	0xa
	.byte	0x6
	.byte	0xe
	.long	0x7f8
	.uleb128 0xd
	.long	.LASF100
	.byte	0x6
	.byte	0x12
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF66
	.byte	0x6
	.byte	0x17
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x10
	.long	.LASF101
	.byte	0x6
	.byte	0x18
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x10
	.long	.LASF102
	.byte	0x6
	.byte	0x19
	.long	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.long	.LASF99
	.byte	0x6
	.byte	0x1c
	.long	.LASF103
	.byte	0x1
	.long	0x74a
	.long	0x751
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF99
	.byte	0x6
	.byte	0x1d
	.long	.LASF104
	.byte	0x1
	.long	0x766
	.long	0x772
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.uleb128 0xa
	.long	0x69
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF105
	.byte	0x6
	.byte	0x1e
	.long	.LASF106
	.byte	0x1
	.long	0x787
	.long	0x798
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.uleb128 0xa
	.long	0x8d
	.uleb128 0xa
	.long	0x69
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF105
	.byte	0x6
	.byte	0x1f
	.long	.LASF107
	.byte	0x1
	.long	0x7ad
	.long	0x7b9
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.uleb128 0xa
	.long	0x8d
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF108
	.byte	0x6
	.byte	0x20
	.long	.LASF109
	.long	0x37
	.byte	0x1
	.long	0x7d2
	.long	0x7d9
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF110
	.byte	0x6
	.byte	0x21
	.long	.LASF111
	.byte	0x1
	.long	0x7ea
	.uleb128 0x8
	.long	0x7f8
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x6ee
	.uleb128 0x11
	.string	"ram"
	.byte	0xc
	.byte	0x7
	.byte	0x10
	.long	0xa32
	.uleb128 0x10
	.long	.LASF112
	.byte	0x7
	.byte	0x16
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x10
	.long	.LASF113
	.byte	0x7
	.byte	0x17
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x2
	.uleb128 0x10
	.long	.LASF114
	.byte	0x7
	.byte	0x18
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x2
	.uleb128 0x10
	.long	.LASF115
	.byte	0x7
	.byte	0x19
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x10
	.long	.LASF116
	.byte	0x7
	.byte	0x1a
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x2
	.uleb128 0x10
	.long	.LASF117
	.byte	0x7
	.byte	0x1c
	.long	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x12
	.byte	0x1
	.string	"ram"
	.byte	0x7
	.byte	0x21
	.long	.LASF118
	.byte	0x1
	.long	0x879
	.long	0x880
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"ram"
	.byte	0x7
	.byte	0x23
	.long	.LASF119
	.byte	0x1
	.long	0x895
	.long	0x8b0
	.uleb128 0x8
	.long	0xa32
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
	.long	.LASF105
	.byte	0x7
	.byte	0x26
	.long	.LASF120
	.long	0x93
	.byte	0x1
	.long	0x8c9
	.long	0x8d0
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF105
	.byte	0x7
	.byte	0x27
	.long	.LASF121
	.long	0x93
	.byte	0x1
	.long	0x8e9
	.long	0x8f5
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x49
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF122
	.byte	0x7
	.byte	0x28
	.long	.LASF123
	.byte	0x1
	.long	0x90a
	.long	0x916
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF122
	.byte	0x7
	.byte	0x29
	.long	.LASF124
	.byte	0x1
	.long	0x92b
	.long	0x93c
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF122
	.byte	0x7
	.byte	0x2a
	.long	.LASF125
	.byte	0x1
	.long	0x951
	.long	0x962
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF122
	.byte	0x7
	.byte	0x2b
	.long	.LASF126
	.byte	0x1
	.long	0x977
	.long	0x988
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x82
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF127
	.byte	0x7
	.byte	0x2d
	.long	.LASF128
	.byte	0x1
	.long	0x99d
	.long	0x9a9
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x82
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF129
	.byte	0x7
	.byte	0x2e
	.long	.LASF130
	.long	0x50
	.byte	0x1
	.long	0x9c2
	.long	0x9c9
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF131
	.byte	0x7
	.byte	0x2f
	.long	.LASF132
	.byte	0x1
	.long	0x9de
	.long	0x9eb
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF133
	.byte	0x7
	.byte	0x31
	.long	.LASF134
	.long	0x3d6
	.byte	0x1
	.long	0xa04
	.long	0xa10
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0x7fe
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF135
	.byte	0x7
	.byte	0x32
	.long	.LASF136
	.long	0xa38
	.byte	0x1
	.long	0xa25
	.uleb128 0x8
	.long	0xa32
	.byte	0x1
	.uleb128 0xa
	.long	0xa3e
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x7fe
	.uleb128 0x14
	.byte	0x2
	.long	0x7fe
	.uleb128 0x14
	.byte	0x2
	.long	0xa44
	.uleb128 0x15
	.long	0x7fe
	.uleb128 0x6
	.long	.LASF137
	.byte	0x10
	.byte	0x8
	.byte	0x13
	.long	0xbc7
	.uleb128 0x16
	.long	0x7fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x1
	.uleb128 0x10
	.long	.LASF138
	.byte	0x8
	.byte	0x19
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x17
	.long	.LASF140
	.byte	0x8
	.byte	0x1b
	.long	0xbc7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF139
	.byte	0x8
	.byte	0x1c
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x18
	.long	.LASF141
	.byte	0x8
	.byte	0x1d
	.long	0xbc7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.word	0x2000
	.uleb128 0x10
	.long	.LASF142
	.byte	0x8
	.byte	0x1e
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x18
	.long	.LASF143
	.byte	0x8
	.byte	0x1f
	.long	0xbc7
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.word	0x3000
	.uleb128 0x10
	.long	.LASF144
	.byte	0x8
	.byte	0x20
	.long	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.long	.LASF137
	.byte	0x8
	.byte	0x25
	.long	.LASF145
	.byte	0x1
	.long	0xade
	.long	0xafe
	.uleb128 0x8
	.long	0xbcc
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
	.long	.LASF146
	.byte	0x8
	.byte	0x27
	.long	.LASF147
	.byte	0x1
	.long	0xb13
	.long	0xb24
	.uleb128 0x8
	.long	0xbcc
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF146
	.byte	0x8
	.byte	0x29
	.long	.LASF148
	.byte	0x1
	.long	0xb39
	.long	0xb4f
	.uleb128 0x8
	.long	0xbcc
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
	.long	.LASF149
	.byte	0x8
	.byte	0x2a
	.long	.LASF150
	.byte	0x1
	.long	0xb64
	.long	0xb6b
	.uleb128 0x8
	.long	0xbcc
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF151
	.byte	0x8
	.byte	0x2b
	.long	.LASF152
	.byte	0x1
	.long	0xb80
	.long	0xb87
	.uleb128 0x8
	.long	0xbcc
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF153
	.byte	0x8
	.byte	0x2c
	.long	.LASF154
	.byte	0x1
	.long	0xb9c
	.long	0xba8
	.uleb128 0x8
	.long	0xbcc
	.byte	0x1
	.uleb128 0xa
	.long	0xbd2
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF155
	.byte	0x8
	.byte	0x2e
	.long	.LASF156
	.byte	0x1
	.long	0xbb9
	.uleb128 0x8
	.long	0xbcc
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x50
	.uleb128 0x5
	.byte	0x2
	.long	0xa49
	.uleb128 0x5
	.byte	0x2
	.long	0x37
	.uleb128 0x11
	.string	"rom"
	.byte	0x8
	.byte	0x9
	.byte	0x10
	.long	0xd52
	.uleb128 0x10
	.long	.LASF112
	.byte	0x9
	.byte	0x16
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x2
	.uleb128 0x10
	.long	.LASF100
	.byte	0x9
	.byte	0x17
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x2
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.byte	0x18
	.long	0x3d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.byte	0x19
	.long	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x2
	.uleb128 0x12
	.byte	0x1
	.string	"rom"
	.byte	0x9
	.byte	0x1f
	.long	.LASF157
	.byte	0x1
	.long	0xc35
	.long	0xc3c
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"rom"
	.byte	0x9
	.byte	0x20
	.long	.LASF158
	.byte	0x1
	.long	0xc51
	.long	0xc67
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0xa
	.long	0x3d0
	.uleb128 0xa
	.long	0x53a
	.uleb128 0xa
	.long	0x82
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF105
	.byte	0x9
	.byte	0x21
	.long	.LASF159
	.long	0x93
	.byte	0x1
	.long	0xc80
	.long	0xc87
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF105
	.byte	0x9
	.byte	0x22
	.long	.LASF160
	.long	0x93
	.byte	0x1
	.long	0xca0
	.long	0xcac
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0xa
	.long	0x49
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF127
	.byte	0x9
	.byte	0x23
	.long	.LASF161
	.byte	0x1
	.long	0xcc1
	.long	0xccd
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF129
	.byte	0x9
	.byte	0x24
	.long	.LASF162
	.long	0x50
	.byte	0x1
	.long	0xce6
	.long	0xced
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF163
	.byte	0x9
	.byte	0x25
	.long	.LASF164
	.byte	0x1
	.long	0xd02
	.long	0xd0f
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"rom"
	.byte	0x9
	.byte	0x26
	.long	.LASF165
	.byte	0x1
	.long	0xd24
	.long	0xd30
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0xa
	.long	0xd58
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF135
	.byte	0x9
	.byte	0x27
	.long	.LASF166
	.long	0xd63
	.byte	0x1
	.long	0xd45
	.uleb128 0x8
	.long	0xd52
	.byte	0x1
	.uleb128 0xa
	.long	0xd58
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xbd8
	.uleb128 0x14
	.byte	0x2
	.long	0xd5e
	.uleb128 0x15
	.long	0xbd8
	.uleb128 0x14
	.byte	0x2
	.long	0xbd8
	.uleb128 0x6
	.long	.LASF167
	.byte	0x2
	.byte	0xa
	.byte	0xd
	.long	0xe2f
	.uleb128 0xf
	.string	"irq"
	.byte	0xa
	.byte	0x11
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.long	.LASF168
	.byte	0xa
	.byte	0x13
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x2
	.uleb128 0x7
	.byte	0x1
	.long	.LASF167
	.byte	0xa
	.byte	0x18
	.long	.LASF169
	.byte	0x1
	.long	0xda7
	.long	0xdae
	.uleb128 0x8
	.long	0xe2f
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF170
	.byte	0xa
	.byte	0x19
	.long	.LASF171
	.byte	0x1
	.long	0xdc3
	.long	0xdca
	.uleb128 0x8
	.long	0xe2f
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF172
	.byte	0xa
	.byte	0x1a
	.long	.LASF173
	.byte	0x1
	.long	0xddf
	.long	0xdec
	.uleb128 0x8
	.long	0xe2f
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF167
	.byte	0xa
	.byte	0x1c
	.long	.LASF174
	.byte	0x1
	.long	0xe01
	.long	0xe0d
	.uleb128 0x8
	.long	0xe2f
	.byte	0x1
	.uleb128 0xa
	.long	0xe35
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF135
	.byte	0xa
	.byte	0x1d
	.long	.LASF175
	.long	0xe40
	.byte	0x1
	.long	0xe22
	.uleb128 0x8
	.long	0xe2f
	.byte	0x1
	.uleb128 0xa
	.long	0xe35
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xd69
	.uleb128 0x14
	.byte	0x2
	.long	0xe3b
	.uleb128 0x15
	.long	0xd69
	.uleb128 0x14
	.byte	0x2
	.long	0xd69
	.uleb128 0x19
	.long	.LASF176
	.word	0x122
	.byte	0xb
	.byte	0x1a
	.long	0x1a86
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x4
	.byte	0xb
	.byte	0x1c
	.byte	0x3
	.long	0xf62
	.uleb128 0xf
	.string	"low"
	.byte	0xb
	.byte	0x1e
	.long	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF177
	.byte	0xb
	.byte	0x1f
	.long	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.byte	0x1
	.long	.LASF178
	.byte	0xb
	.byte	0x21
	.long	.LASF179
	.byte	0x1
	.long	0xe91
	.long	0xe98
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF178
	.byte	0xb
	.byte	0x25
	.long	.LASF180
	.byte	0x1
	.long	0xead
	.long	0xebe
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.uleb128 0xa
	.long	0x8d
	.uleb128 0xa
	.long	0x8d
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF181
	.byte	0xb
	.byte	0x2a
	.long	.LASF182
	.long	0x50
	.byte	0x1
	.long	0xed7
	.long	0xede
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF183
	.byte	0xb
	.byte	0x2f
	.long	.LASF184
	.long	0x37
	.byte	0x1
	.long	0xef7
	.long	0xefe
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF185
	.byte	0xb
	.byte	0x34
	.long	.LASF186
	.long	0x37
	.byte	0x1
	.long	0xf17
	.long	0xf1e
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF187
	.byte	0xb
	.byte	0x3b
	.long	.LASF188
	.byte	0x1
	.long	0xf33
	.long	0xf3f
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF187
	.byte	0xb
	.byte	0x40
	.long	.LASF189
	.byte	0x1
	.long	0xf50
	.uleb128 0x8
	.long	0x1a86
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF190
	.byte	0x1
	.byte	0xb
	.byte	0x47
	.byte	0x3
	.long	0x1037
	.uleb128 0x1b
	.long	.LASF368
	.byte	0x1
	.long	0x42
	.byte	0xb
	.byte	0x49
	.long	0xfaa
	.uleb128 0x1c
	.long	.LASF191
	.byte	0
	.uleb128 0x1c
	.long	.LASF192
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF194
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF195
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF196
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF198
	.byte	0xb
	.byte	0x4a
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF190
	.long	.LASF369
	.byte	0x1
	.byte	0x1
	.long	0xfcc
	.long	0xfd3
	.uleb128 0x8
	.long	0x1a8c
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF199
	.byte	0xb
	.byte	0x4b
	.long	.LASF200
	.long	0x93
	.byte	0x1
	.long	0xfec
	.long	0xff8
	.uleb128 0x8
	.long	0x1a8c
	.byte	0x1
	.uleb128 0xa
	.long	0xf6f
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF201
	.byte	0xb
	.byte	0x50
	.long	.LASF202
	.byte	0x1
	.long	0x100d
	.long	0x101e
	.uleb128 0x8
	.long	0x1a8c
	.byte	0x1
	.uleb128 0xa
	.long	0xf6f
	.uleb128 0xa
	.long	0x3d6
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF203
	.byte	0xb
	.byte	0x9b
	.long	.LASF204
	.byte	0x1
	.long	0x102f
	.uleb128 0x8
	.long	0x1a8c
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF205
	.byte	0xb
	.byte	0xa1
	.long	0x1a92
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.long	.LASF206
	.byte	0xb
	.byte	0xa2
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0xff
	.uleb128 0xd
	.long	.LASF207
	.byte	0xb
	.byte	0xa3
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x103
	.uleb128 0xd
	.long	.LASF208
	.byte	0xb
	.byte	0xa4
	.long	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x107
	.uleb128 0xd
	.long	.LASF209
	.byte	0xb
	.byte	0xa6
	.long	0xa32
	.byte	0x3
	.byte	0x23
	.uleb128 0x10b
	.uleb128 0xd
	.long	.LASF210
	.byte	0xb
	.byte	0xa7
	.long	0xa32
	.byte	0x3
	.byte	0x23
	.uleb128 0x10d
	.uleb128 0xd
	.long	.LASF211
	.byte	0xb
	.byte	0xa8
	.long	0xa32
	.byte	0x3
	.byte	0x23
	.uleb128 0x10f
	.uleb128 0xd
	.long	.LASF212
	.byte	0xb
	.byte	0xaa
	.long	0xbcc
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.uleb128 0xd
	.long	.LASF213
	.byte	0xb
	.byte	0xab
	.long	0xbcc
	.byte	0x3
	.byte	0x23
	.uleb128 0x113
	.uleb128 0xd
	.long	.LASF214
	.byte	0xb
	.byte	0xac
	.long	0xbcc
	.byte	0x3
	.byte	0x23
	.uleb128 0x115
	.uleb128 0x10
	.long	.LASF215
	.byte	0xb
	.byte	0xb3
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x117
	.byte	0x3
	.uleb128 0x10
	.long	.LASF216
	.byte	0xb
	.byte	0xb5
	.long	0x50
	.byte	0x3
	.byte	0x23
	.uleb128 0x119
	.byte	0x3
	.uleb128 0x10
	.long	.LASF217
	.byte	0xb
	.byte	0xb8
	.long	0x1aa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x11b
	.byte	0x3
	.uleb128 0x10
	.long	.LASF198
	.byte	0xb
	.byte	0xb9
	.long	0xf62
	.byte	0x3
	.byte	0x23
	.uleb128 0x121
	.byte	0x3
	.uleb128 0x7
	.byte	0x1
	.long	.LASF176
	.byte	0xb
	.byte	0xbc
	.long	.LASF218
	.byte	0x1
	.long	0x1121
	.long	0x1128
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF176
	.byte	0xb
	.byte	0xbd
	.long	.LASF219
	.byte	0x1
	.long	0x113d
	.long	0x1149
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x1abf
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"run"
	.byte	0xb
	.byte	0xc0
	.long	.LASF222
	.long	0x93
	.byte	0x1
	.long	0x1162
	.long	0x1169
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF220
	.byte	0xb
	.byte	0xc2
	.long	.LASF221
	.byte	0x1
	.long	0x117e
	.long	0x118b
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0x8
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"nop"
	.byte	0xb
	.byte	0xc4
	.long	.LASF223
	.byte	0x3
	.byte	0x1
	.long	0x11a1
	.long	0x11a8
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"inc"
	.byte	0xb
	.byte	0xc5
	.long	.LASF224
	.byte	0x3
	.byte	0x1
	.long	0x11be
	.long	0x11ca
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"inc"
	.byte	0xb
	.byte	0xc6
	.long	.LASF225
	.byte	0x3
	.byte	0x1
	.long	0x11e0
	.long	0x11ec
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"dec"
	.byte	0xb
	.byte	0xc7
	.long	.LASF226
	.byte	0x3
	.byte	0x1
	.long	0x1202
	.long	0x120e
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"dec"
	.byte	0xb
	.byte	0xc8
	.long	.LASF227
	.byte	0x3
	.byte	0x1
	.long	0x1224
	.long	0x1230
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"mov"
	.byte	0xb
	.byte	0xc9
	.long	.LASF228
	.byte	0x3
	.byte	0x1
	.long	0x1246
	.long	0x1257
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ld"
	.byte	0xb
	.byte	0xcb
	.long	.LASF229
	.byte	0x3
	.byte	0x1
	.long	0x126c
	.long	0x127d
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ldi"
	.byte	0xb
	.byte	0xcc
	.long	.LASF230
	.byte	0x3
	.byte	0x1
	.long	0x1293
	.long	0x12a4
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ldx"
	.byte	0xb
	.byte	0xcd
	.long	.LASF231
	.byte	0x3
	.byte	0x1
	.long	0x12ba
	.long	0x12c6
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ldy"
	.byte	0xb
	.byte	0xce
	.long	.LASF232
	.byte	0x3
	.byte	0x1
	.long	0x12dc
	.long	0x12e8
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ldz"
	.byte	0xb
	.byte	0xcf
	.long	.LASF233
	.byte	0x3
	.byte	0x1
	.long	0x12fe
	.long	0x130a
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"stx"
	.byte	0xb
	.byte	0xd1
	.long	.LASF234
	.byte	0x3
	.byte	0x1
	.long	0x1320
	.long	0x132c
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"sty"
	.byte	0xb
	.byte	0xd2
	.long	.LASF235
	.byte	0x3
	.byte	0x1
	.long	0x1342
	.long	0x134e
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"stz"
	.byte	0xb
	.byte	0xd3
	.long	.LASF236
	.byte	0x3
	.byte	0x1
	.long	0x1364
	.long	0x1370
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"std"
	.byte	0xb
	.byte	0xd4
	.long	.LASF237
	.byte	0x3
	.byte	0x1
	.long	0x1386
	.long	0x1397
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"svd"
	.byte	0xb
	.byte	0xd7
	.long	.LASF238
	.byte	0x3
	.byte	0x1
	.long	0x13ad
	.long	0x13be
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"svx"
	.byte	0xb
	.byte	0xd8
	.long	.LASF239
	.byte	0x3
	.byte	0x1
	.long	0x13d4
	.long	0x13e0
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"svy"
	.byte	0xb
	.byte	0xd9
	.long	.LASF240
	.byte	0x3
	.byte	0x1
	.long	0x13f6
	.long	0x1402
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"svz"
	.byte	0xb
	.byte	0xda
	.long	.LASF241
	.byte	0x3
	.byte	0x1
	.long	0x1418
	.long	0x1424
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"cmp"
	.byte	0xb
	.byte	0xdf
	.long	.LASF242
	.byte	0x3
	.byte	0x1
	.long	0x143a
	.long	0x144b
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"cpi"
	.byte	0xb
	.byte	0xe0
	.long	.LASF243
	.byte	0x3
	.byte	0x1
	.long	0x1461
	.long	0x1472
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ror"
	.byte	0xb
	.byte	0xe1
	.long	.LASF244
	.byte	0x3
	.byte	0x1
	.long	0x1488
	.long	0x1494
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"rol"
	.byte	0xb
	.byte	0xe2
	.long	.LASF245
	.byte	0x3
	.byte	0x1
	.long	0x14aa
	.long	0x14b6
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"txs"
	.byte	0xb
	.byte	0xe3
	.long	.LASF246
	.byte	0x3
	.byte	0x1
	.long	0x14cc
	.long	0x14d3
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"txy"
	.byte	0xb
	.byte	0xe4
	.long	.LASF247
	.byte	0x3
	.byte	0x1
	.long	0x14e9
	.long	0x14f0
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"txz"
	.byte	0xb
	.byte	0xe5
	.long	.LASF248
	.byte	0x3
	.byte	0x1
	.long	0x1506
	.long	0x150d
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tys"
	.byte	0xb
	.byte	0xe7
	.long	.LASF249
	.byte	0x3
	.byte	0x1
	.long	0x1523
	.long	0x152a
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tyx"
	.byte	0xb
	.byte	0xe8
	.long	.LASF250
	.byte	0x3
	.byte	0x1
	.long	0x1540
	.long	0x1547
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tyz"
	.byte	0xb
	.byte	0xe9
	.long	.LASF251
	.byte	0x3
	.byte	0x1
	.long	0x155d
	.long	0x1564
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tzs"
	.byte	0xb
	.byte	0xeb
	.long	.LASF252
	.byte	0x3
	.byte	0x1
	.long	0x157a
	.long	0x1581
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tzx"
	.byte	0xb
	.byte	0xec
	.long	.LASF253
	.byte	0x3
	.byte	0x1
	.long	0x1597
	.long	0x159e
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tzy"
	.byte	0xb
	.byte	0xed
	.long	.LASF254
	.byte	0x3
	.byte	0x1
	.long	0x15b4
	.long	0x15bb
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tsx"
	.byte	0xb
	.byte	0xf0
	.long	.LASF255
	.byte	0x3
	.byte	0x1
	.long	0x15d1
	.long	0x15d8
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tsy"
	.byte	0xb
	.byte	0xf1
	.long	.LASF256
	.byte	0x3
	.byte	0x1
	.long	0x15ee
	.long	0x15f5
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"tsz"
	.byte	0xb
	.byte	0xf2
	.long	.LASF257
	.byte	0x3
	.byte	0x1
	.long	0x160b
	.long	0x1612
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF258
	.byte	0xb
	.byte	0xf5
	.long	.LASF259
	.byte	0x3
	.byte	0x1
	.long	0x1628
	.long	0x1634
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF260
	.byte	0xb
	.byte	0xf6
	.long	.LASF261
	.byte	0x3
	.byte	0x1
	.long	0x164a
	.long	0x1656
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF262
	.byte	0xb
	.byte	0xf7
	.long	.LASF263
	.byte	0x3
	.byte	0x1
	.long	0x166c
	.long	0x1678
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF264
	.byte	0xb
	.byte	0xf9
	.long	.LASF265
	.byte	0x3
	.byte	0x1
	.long	0x168e
	.long	0x169a
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF266
	.byte	0xb
	.byte	0xfa
	.long	.LASF267
	.byte	0x3
	.byte	0x1
	.long	0x16b0
	.long	0x16bc
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF268
	.byte	0xb
	.byte	0xfb
	.long	.LASF269
	.byte	0x3
	.byte	0x1
	.long	0x16d2
	.long	0x16de
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF270
	.byte	0xb
	.byte	0xfd
	.long	.LASF271
	.byte	0x3
	.byte	0x1
	.long	0x16f4
	.long	0x1700
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF272
	.byte	0xb
	.byte	0xfe
	.long	.LASF273
	.byte	0x3
	.byte	0x1
	.long	0x1716
	.long	0x1722
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF274
	.byte	0xb
	.byte	0xff
	.long	.LASF275
	.byte	0x3
	.byte	0x1
	.long	0x1738
	.long	0x1744
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF276
	.byte	0xb
	.word	0x101
	.long	.LASF278
	.byte	0x3
	.byte	0x1
	.long	0x175b
	.long	0x1767
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF277
	.byte	0xb
	.word	0x102
	.long	.LASF279
	.byte	0x3
	.byte	0x1
	.long	0x177e
	.long	0x178a
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF280
	.byte	0xb
	.word	0x103
	.long	.LASF281
	.byte	0x3
	.byte	0x1
	.long	0x17a1
	.long	0x17ad
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"brg"
	.byte	0xb
	.word	0x105
	.long	.LASF286
	.byte	0x3
	.byte	0x1
	.long	0x17c4
	.long	0x17d0
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF282
	.byte	0xb
	.word	0x106
	.long	.LASF283
	.byte	0x3
	.byte	0x1
	.long	0x17e7
	.long	0x17f3
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF284
	.byte	0xb
	.word	0x107
	.long	.LASF285
	.byte	0x3
	.byte	0x1
	.long	0x180a
	.long	0x1816
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"brl"
	.byte	0xb
	.word	0x109
	.long	.LASF287
	.byte	0x3
	.byte	0x1
	.long	0x182d
	.long	0x1839
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF288
	.byte	0xb
	.word	0x10a
	.long	.LASF289
	.byte	0x3
	.byte	0x1
	.long	0x1850
	.long	0x185c
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF290
	.byte	0xb
	.word	0x10b
	.long	.LASF291
	.byte	0x3
	.byte	0x1
	.long	0x1873
	.long	0x187f
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"clr"
	.byte	0xb
	.word	0x10d
	.long	.LASF292
	.byte	0x3
	.byte	0x1
	.long	0x1896
	.long	0x18a2
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"clf"
	.byte	0xb
	.word	0x10f
	.long	.LASF293
	.byte	0x3
	.byte	0x1
	.long	0x18b9
	.long	0x18c5
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF294
	.byte	0xb
	.word	0x111
	.long	.LASF295
	.byte	0x3
	.byte	0x1
	.long	0x18dc
	.long	0x18e8
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF296
	.byte	0xb
	.word	0x113
	.long	.LASF370
	.long	0x93
	.byte	0x3
	.byte	0x1
	.long	0x1903
	.long	0x190a
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"pop"
	.byte	0xb
	.word	0x115
	.long	.LASF371
	.long	0x37
	.byte	0x3
	.byte	0x1
	.long	0x1925
	.long	0x192c
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"pop"
	.byte	0xb
	.word	0x116
	.long	.LASF297
	.byte	0x3
	.byte	0x1
	.long	0x1943
	.long	0x194f
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF298
	.byte	0xb
	.word	0x117
	.long	.LASF299
	.byte	0x3
	.byte	0x1
	.long	0x1966
	.long	0x1972
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x93
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF298
	.byte	0xb
	.word	0x118
	.long	.LASF300
	.byte	0x3
	.byte	0x1
	.long	0x1989
	.long	0x1995
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0xe53
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF301
	.byte	0xb
	.word	0x119
	.long	.LASF302
	.byte	0x3
	.byte	0x1
	.long	0x19ac
	.long	0x19b8
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x37
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"jmp"
	.byte	0xb
	.word	0x11c
	.long	.LASF303
	.byte	0x3
	.byte	0x1
	.long	0x19cf
	.long	0x19db
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF304
	.byte	0xb
	.word	0x11d
	.long	.LASF305
	.byte	0x3
	.byte	0x1
	.long	0x19f2
	.long	0x19fe
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF306
	.byte	0xb
	.word	0x11e
	.long	.LASF307
	.byte	0x3
	.byte	0x1
	.long	0x1a15
	.long	0x1a21
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF308
	.byte	0xb
	.word	0x11f
	.long	.LASF309
	.byte	0x3
	.byte	0x1
	.long	0x1a38
	.long	0x1a44
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"ret"
	.byte	0xb
	.word	0x120
	.long	.LASF310
	.byte	0x3
	.byte	0x1
	.long	0x1a5b
	.long	0x1a62
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF135
	.byte	0xb
	.word	0x124
	.long	.LASF311
	.long	0x1aca
	.byte	0x2
	.byte	0x1
	.long	0x1a79
	.uleb128 0x8
	.long	0x1ab9
	.byte	0x1
	.uleb128 0xa
	.long	0x1abf
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xe53
	.uleb128 0x5
	.byte	0x2
	.long	0xf62
	.uleb128 0x25
	.long	0x93
	.long	0x1aa2
	.uleb128 0x26
	.long	0x1aa2
	.byte	0xfe
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF312
	.uleb128 0x25
	.long	0x1a86
	.long	0x1ab9
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xe46
	.uleb128 0x14
	.byte	0x2
	.long	0x1ac5
	.uleb128 0x15
	.long	0xe46
	.uleb128 0x14
	.byte	0x2
	.long	0xe46
	.uleb128 0x27
	.byte	0x1
	.long	.LASF313
	.byte	0x1
	.byte	0x55
	.long	.LASF315
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1b06
	.uleb128 0x28
	.long	.LVL0
	.long	0x1149
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL9interpret
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF314
	.byte	0x1
	.byte	0x59
	.long	.LASF316
	.long	.LFB27
	.long	.LFE27
	.long	.LLST0
	.byte	0x1
	.long	0x1bd0
	.uleb128 0x2b
	.long	.LASF100
	.byte	0x1
	.byte	0x59
	.long	0x82
	.long	.LLST1
	.uleb128 0x2c
	.string	"out"
	.byte	0x1
	.byte	0x59
	.long	0x93
	.long	.LLST2
	.uleb128 0x2d
	.long	.LVL4
	.long	0x962
	.long	0x1b63
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank0
	.uleb128 0x29
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL8
	.long	0x962
	.long	0x1b7f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank1
	.byte	0
	.uleb128 0x2d
	.long	.LVL9
	.long	0x962
	.long	0x1b9b
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank2
	.byte	0
	.uleb128 0x2d
	.long	.LVL10
	.long	0x962
	.long	0x1bb7
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank3
	.byte	0
	.uleb128 0x28
	.long	.LVL11
	.long	0x962
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank4
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF325
	.byte	0x1
	.byte	0x72
	.long	.LASF372
	.long	0x93
	.long	.LFB28
	.long	.LFE28
	.long	.LLST3
	.byte	0x1
	.long	0x1c85
	.uleb128 0x2b
	.long	.LASF317
	.byte	0x1
	.byte	0x72
	.long	0x93
	.long	.LLST4
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.byte	0x72
	.long	0x3d6
	.long	.LLST5
	.uleb128 0x2f
	.long	.LASF319
	.byte	0x1
	.byte	0x74
	.long	0xa32
	.long	.LLST6
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x1
	.byte	0x7d
	.long	0xd52
	.long	.LLST7
	.uleb128 0x30
	.long	.Ldebug_ranges0+0
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0x94
	.long	0x50
	.long	.LLST8
	.uleb128 0x2d
	.long	.LVL17
	.long	0xc87
	.long	0x1c63
	.uleb128 0x29
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
	.uleb128 0x29
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
	.uleb128 0x28
	.long	.LVL18
	.long	0x93c
	.uleb128 0x29
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
	.uleb128 0x29
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
	.uleb128 0x27
	.byte	0x1
	.long	.LASF321
	.byte	0x1
	.byte	0x9b
	.long	.LASF322
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1cc7
	.uleb128 0x32
	.long	.LASF323
	.byte	0x1
	.byte	0x9b
	.long	0x8d
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x32
	.long	.LASF324
	.byte	0x1
	.byte	0x9b
	.long	0x49
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF326
	.byte	0x1
	.byte	0xa0
	.long	0x49
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1f54
	.uleb128 0x2f
	.long	.LASF327
	.byte	0x1
	.byte	0xa3
	.long	0x1f54
	.long	.LLST9
	.uleb128 0x2f
	.long	.LASF328
	.byte	0x1
	.byte	0xa4
	.long	0x93
	.long	.LLST10
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x18
	.long	0x1d27
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.byte	0xba
	.long	0x50
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.byte	0xba
	.long	0x50
	.long	.LLST11
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x30
	.long	0x1d4f
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x1
	.byte	0xbf
	.long	0x50
	.long	.LLST12
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.byte	0xbf
	.long	0x50
	.long	.LLST13
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x48
	.long	0x1d77
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x1
	.byte	0xc3
	.long	0x50
	.long	.LLST14
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.byte	0xc3
	.long	0x50
	.long	.LLST15
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x60
	.long	0x1d9f
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x1
	.byte	0xc7
	.long	0x50
	.long	.LLST16
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.byte	0xc7
	.long	0x50
	.long	.LLST17
	.byte	0
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x78
	.long	0x1dc3
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x1
	.byte	0xcc
	.long	0x50
	.long	.LLST18
	.uleb128 0x35
	.long	.LASF329
	.byte	0x1
	.byte	0xcc
	.long	0x50
	.byte	0
	.uleb128 0x36
	.long	.LBB22
	.long	.LBE22
	.long	0x1deb
	.uleb128 0x35
	.long	.LASF330
	.byte	0x1
	.byte	0xbb
	.long	0x50
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.byte	0xbb
	.long	0x50
	.long	.LLST19
	.byte	0
	.uleb128 0x2d
	.long	.LVL24
	.long	0x246
	.long	0x1e0d
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2d
	.long	.LVL25
	.long	0x288
	.long	0x1e2f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2d
	.long	.LVL26
	.long	0x267
	.long	0x1e50
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL27
	.long	0x2a9
	.long	0x1e71
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL30
	.long	0x7b9
	.long	0x1e8d
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL2kb
	.byte	0
	.uleb128 0x2d
	.long	.LVL31
	.long	0x2b39
	.long	0x1ea5
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.long	.LVL34
	.long	0x2b47
	.long	0x1ebe
	.uleb128 0x29
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
	.uleb128 0x2d
	.long	.LVL36
	.long	0x2b55
	.long	0x1ed7
	.uleb128 0x29
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
	.uleb128 0x2d
	.long	.LVL37
	.long	0x1149
	.long	0x1ef3
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL9interpret
	.byte	0
	.uleb128 0x2d
	.long	.LVL41
	.long	0x2b55
	.long	0x1f0c
	.uleb128 0x29
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
	.uleb128 0x2d
	.long	.LVL44
	.long	0x2b55
	.long	0x1f25
	.uleb128 0x29
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
	.uleb128 0x2d
	.long	.LVL47
	.long	0x2b55
	.long	0x1f3e
	.uleb128 0x29
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
	.uleb128 0x28
	.long	.LVL50
	.long	0x2b63
	.uleb128 0x29
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
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x1f5a
	.uleb128 0x37
	.long	0x93
	.uleb128 0x38
	.long	.LASF373
	.byte	0x1
	.byte	0x1
	.long	0x1f81
	.uleb128 0x39
	.long	.LASF331
	.byte	0x1
	.byte	0xe7
	.long	0x49
	.uleb128 0x39
	.long	.LASF332
	.byte	0x1
	.byte	0xe7
	.long	0x49
	.byte	0
	.uleb128 0x3a
	.long	.LASF333
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST20
	.byte	0x1
	.long	0x259f
	.uleb128 0x3b
	.long	0x1f5f
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.byte	0xe7
	.uleb128 0x3c
	.long	0x1f75
	.long	.LLST21
	.uleb128 0x3c
	.long	0x1f6a
	.long	.LLST22
	.uleb128 0x3d
	.long	.LVL52
	.long	0x1fd1
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.byte	0
	.uleb128 0x3d
	.long	.LVL53
	.long	0x2006
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x26
	.uleb128 0x29
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL54
	.long	0x203b
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5csreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.uleb128 0x29
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x29
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL55
	.long	0x2080
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6serial
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5csreg
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x33
	.uleb128 0x29
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL56
	.long	0x20ca
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank0
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL57
	.long	0x2114
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank1
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL58
	.long	0x215e
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank2
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL59
	.long	0x21a8
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank3
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL60
	.long	0x21f2
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank4
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL61
	.long	0x223c
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank5
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL62
	.long	0x2286
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank6
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL63
	.long	0x22d0
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank7
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL64
	.long	0x231a
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank8
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL65
	.long	0x2364
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank9
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0xc
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
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL66
	.long	0x2398
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4bios
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL67
	.long	0x23cc
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8settings
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL68
	.long	0x2400
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program0
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL69
	.long	0x2434
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program1
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL70
	.long	0x2468
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program2
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL71
	.long	0x249c
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program3
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL72
	.long	0x24db
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank0
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL73
	.long	0x251a
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank1
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL74
	.long	0x2559
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank2
	.uleb128 0x29
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x29
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x29
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.uleb128 0x29
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL75
	.long	0x2571
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL10irqhandler
	.byte	0
	.uleb128 0x3d
	.long	.LVL76
	.long	0x2589
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL9interpret
	.byte	0
	.uleb128 0x3e
	.long	.LVL77
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL2kb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF334
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x288d
	.uleb128 0x3b
	.long	0x1f5f
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0xe7
	.uleb128 0x3c
	.long	0x1f75
	.long	.LLST23
	.uleb128 0x3c
	.long	0x1f6a
	.long	.LLST24
	.uleb128 0x3d
	.long	.LVL79
	.long	0x25ef
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL2kb
	.byte	0
	.uleb128 0x3d
	.long	.LVL80
	.long	0x2607
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL9interpret
	.byte	0
	.uleb128 0x3d
	.long	.LVL81
	.long	0x261f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL10irqhandler
	.byte	0
	.uleb128 0x3d
	.long	.LVL82
	.long	0x2637
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL12vrambanklist+32
	.byte	0
	.uleb128 0x3d
	.long	.LVL83
	.long	0x264f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL12vrambanklist+16
	.byte	0
	.uleb128 0x3d
	.long	.LVL84
	.long	0x2667
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL12vrambanklist
	.byte	0
	.uleb128 0x3d
	.long	.LVL85
	.long	0x267f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank2
	.byte	0
	.uleb128 0x3d
	.long	.LVL86
	.long	0x2697
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank1
	.byte	0
	.uleb128 0x3d
	.long	.LVL87
	.long	0x26af
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank0
	.byte	0
	.uleb128 0x3d
	.long	.LVL88
	.long	0x26c7
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program3
	.byte	0
	.uleb128 0x3d
	.long	.LVL89
	.long	0x26df
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program2
	.byte	0
	.uleb128 0x3d
	.long	.LVL90
	.long	0x26f7
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program1
	.byte	0
	.uleb128 0x3d
	.long	.LVL91
	.long	0x270f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8program0
	.byte	0
	.uleb128 0x3d
	.long	.LVL92
	.long	0x2727
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL8settings
	.byte	0
	.uleb128 0x3d
	.long	.LVL93
	.long	0x273f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4bios
	.byte	0
	.uleb128 0x3d
	.long	.LVL94
	.long	0x2757
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank9
	.byte	0
	.uleb128 0x3d
	.long	.LVL95
	.long	0x276f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank8
	.byte	0
	.uleb128 0x3d
	.long	.LVL96
	.long	0x2787
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank7
	.byte	0
	.uleb128 0x3d
	.long	.LVL97
	.long	0x279f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank6
	.byte	0
	.uleb128 0x3d
	.long	.LVL98
	.long	0x27b7
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank5
	.byte	0
	.uleb128 0x3d
	.long	.LVL99
	.long	0x27cf
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank4
	.byte	0
	.uleb128 0x3d
	.long	.LVL100
	.long	0x27e7
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank3
	.byte	0
	.uleb128 0x3d
	.long	.LVL101
	.long	0x27ff
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank2
	.byte	0
	.uleb128 0x3d
	.long	.LVL102
	.long	0x2817
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank1
	.byte	0
	.uleb128 0x3d
	.long	.LVL103
	.long	0x282f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank0
	.byte	0
	.uleb128 0x3d
	.long	.LVL104
	.long	0x2847
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6serial
	.byte	0
	.uleb128 0x3d
	.long	.LVL105
	.long	0x285f
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL5csreg
	.byte	0
	.uleb128 0x3d
	.long	.LVL106
	.long	0x2877
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.byte	0
	.uleb128 0x3e
	.long	.LVL107
	.uleb128 0x29
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x289d
	.long	0x289d
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	0x93
	.uleb128 0x40
	.string	"run"
	.byte	0xc
	.byte	0xb
	.long	0x28b3
	.byte	0x5
	.byte	0x3
	.long	_ZL3run
	.uleb128 0x15
	.long	0x288d
	.uleb128 0x40
	.string	"cd"
	.byte	0xc
	.byte	0xc
	.long	0x28c8
	.byte	0x5
	.byte	0x3
	.long	_ZL2cd
	.uleb128 0x15
	.long	0x288d
	.uleb128 0x40
	.string	"ls"
	.byte	0xc
	.byte	0xd
	.long	0x28dd
	.byte	0x5
	.byte	0x3
	.long	_ZL2ls
	.uleb128 0x15
	.long	0x288d
	.uleb128 0x25
	.long	0x289d
	.long	0x28f2
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x4
	.byte	0
	.uleb128 0x41
	.long	.LASF335
	.byte	0xc
	.byte	0xe
	.long	0x2903
	.byte	0x5
	.byte	0x3
	.long	_ZL4load
	.uleb128 0x15
	.long	0x28e2
	.uleb128 0x25
	.long	0x291e
	.long	0x2918
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x289d
	.uleb128 0x15
	.long	0x2918
	.uleb128 0x41
	.long	.LASF336
	.byte	0xc
	.byte	0xf
	.long	0x2934
	.byte	0x5
	.byte	0x3
	.long	_ZL7command
	.uleb128 0x15
	.long	0x2908
	.uleb128 0x41
	.long	.LASF66
	.byte	0x1
	.byte	0x2e
	.long	0x9a
	.byte	0x5
	.byte	0x3
	.long	_ZL4port
	.uleb128 0x41
	.long	.LASF337
	.byte	0x1
	.byte	0x2f
	.long	0x3dd
	.byte	0x5
	.byte	0x3
	.long	_ZL6addreg
	.uleb128 0x41
	.long	.LASF80
	.byte	0x1
	.byte	0x30
	.long	0x3dd
	.byte	0x5
	.byte	0x3
	.long	_ZL5csreg
	.uleb128 0x41
	.long	.LASF102
	.byte	0x1
	.byte	0x31
	.long	0x540
	.byte	0x5
	.byte	0x3
	.long	_ZL6serial
	.uleb128 0x41
	.long	.LASF338
	.byte	0x1
	.byte	0x32
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank0
	.uleb128 0x41
	.long	.LASF339
	.byte	0x1
	.byte	0x33
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank1
	.uleb128 0x41
	.long	.LASF340
	.byte	0x1
	.byte	0x34
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank2
	.uleb128 0x41
	.long	.LASF341
	.byte	0x1
	.byte	0x35
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank3
	.uleb128 0x41
	.long	.LASF342
	.byte	0x1
	.byte	0x36
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank4
	.uleb128 0x41
	.long	.LASF343
	.byte	0x1
	.byte	0x38
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank5
	.uleb128 0x41
	.long	.LASF344
	.byte	0x1
	.byte	0x39
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank6
	.uleb128 0x41
	.long	.LASF345
	.byte	0x1
	.byte	0x3a
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank7
	.uleb128 0x41
	.long	.LASF346
	.byte	0x1
	.byte	0x3b
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank8
	.uleb128 0x41
	.long	.LASF347
	.byte	0x1
	.byte	0x3c
	.long	0x7fe
	.byte	0x5
	.byte	0x3
	.long	_ZL5bank9
	.uleb128 0x41
	.long	.LASF348
	.byte	0x1
	.byte	0x3e
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL4bios
	.uleb128 0x41
	.long	.LASF349
	.byte	0x1
	.byte	0x3f
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL8settings
	.uleb128 0x41
	.long	.LASF350
	.byte	0x1
	.byte	0x40
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL8program0
	.uleb128 0x41
	.long	.LASF351
	.byte	0x1
	.byte	0x41
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL8program1
	.uleb128 0x41
	.long	.LASF352
	.byte	0x1
	.byte	0x42
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL8program2
	.uleb128 0x41
	.long	.LASF353
	.byte	0x1
	.byte	0x43
	.long	0xbd8
	.byte	0x5
	.byte	0x3
	.long	_ZL8program3
	.uleb128 0x41
	.long	.LASF354
	.byte	0x1
	.byte	0x47
	.long	0xa49
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank0
	.uleb128 0x41
	.long	.LASF355
	.byte	0x1
	.byte	0x48
	.long	0xa49
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank1
	.uleb128 0x41
	.long	.LASF356
	.byte	0x1
	.byte	0x49
	.long	0xa49
	.byte	0x5
	.byte	0x3
	.long	_ZL6vbank2
	.uleb128 0x25
	.long	0xa32
	.long	0x2ad0
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x9
	.byte	0
	.uleb128 0x41
	.long	.LASF357
	.byte	0x1
	.byte	0x4b
	.long	0x2ae1
	.byte	0x5
	.byte	0x3
	.long	_ZL11rambanklist
	.uleb128 0x15
	.long	0x2ac0
	.uleb128 0x25
	.long	0xa49
	.long	0x2af6
	.uleb128 0x26
	.long	0x1aa2
	.byte	0x2
	.byte	0
	.uleb128 0x41
	.long	.LASF358
	.byte	0x1
	.byte	0x4c
	.long	0x2ae6
	.byte	0x5
	.byte	0x3
	.long	_ZL12vrambanklist
	.uleb128 0x41
	.long	.LASF359
	.byte	0x1
	.byte	0x50
	.long	0xd69
	.byte	0x5
	.byte	0x3
	.long	_ZL10irqhandler
	.uleb128 0x41
	.long	.LASF360
	.byte	0x1
	.byte	0x51
	.long	0xe46
	.byte	0x5
	.byte	0x3
	.long	_ZL9interpret
	.uleb128 0x40
	.string	"kb"
	.byte	0x1
	.byte	0x52
	.long	0x6ee
	.byte	0x5
	.byte	0x3
	.long	_ZL2kb
	.uleb128 0x42
	.byte	0x1
	.byte	0x1
	.long	.LASF361
	.long	.LASF361
	.byte	0xd
	.word	0x149
	.uleb128 0x42
	.byte	0x1
	.byte	0x1
	.long	.LASF362
	.long	.LASF362
	.byte	0xe
	.word	0x4f4
	.uleb128 0x42
	.byte	0x1
	.byte	0x1
	.long	.LASF363
	.long	.LASF363
	.byte	0xe
	.word	0x505
	.uleb128 0x42
	.byte	0x1
	.byte	0x1
	.long	.LASF364
	.long	.LASF364
	.byte	0xd
	.word	0x133
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB27
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
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.word	0x18
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
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x18
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
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7
	.word	0xa
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0xa
	.word	0x2000
	.byte	0xf7
	.uleb128 0x29
	.byte	0x22
	.byte	0x9f
	.long	.LVL7
	.long	.LFE27
	.word	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x29
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x60
	.long	.LVL2
	.long	.LVL12
	.word	0x1
	.byte	0x5e
	.long	.LVL12
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB28
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
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL16
	.word	0x1
	.byte	0x66
	.long	.LVL16
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x66
	.long	.LVL21
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL22
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL20
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL20
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL32
	.long	.LVL34-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34-1
	.long	.LFE30
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LFE30
	.word	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL39
	.long	.LVL40
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL40
	.long	.LVL41-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL42
	.long	.LVL43
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL43
	.long	.LVL44-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL46
	.long	.LVL47-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL35
	.long	.LVL36-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LFB32
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI29
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST21:
	.long	.LVL51
	.long	.LVL77
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL51
	.long	.LVL77
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL78
	.long	.LVL107
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL78
	.long	.LVL107
	.word	0x2
	.byte	0x30
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LBB5
	.long	.LBE5
	.long	.LBB24
	.long	.LBE24
	.long	0
	.long	0
	.long	.LBB8
	.long	.LBE8
	.long	.LBB20
	.long	.LBE20
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LBB14
	.long	.LBE14
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"digitalwriteb"
.LASF56:
	.string	"digitalwritec"
.LASF58:
	.string	"digitalwrited"
.LASF210:
	.string	"dataram"
.LASF201:
	.string	"setflag"
.LASF125:
	.string	"_ZN3ram5writeEjc"
.LASF101:
	.string	"addrreg"
.LASF136:
	.string	"_ZN3ramaSERKS_"
.LASF273:
	.string	"_ZN11interpreter7brgepcfEj"
.LASF162:
	.string	"_ZN3rom7getaddrEv"
.LASF52:
	.string	"digitalwritea"
.LASF295:
	.string	"_ZN11interpreter4swapEc"
.LASF175:
	.string	"_ZN10interruptsaSERKS_"
.LASF166:
	.string	"_ZN3romaSERKS_"
.LASF302:
	.string	"_ZN11interpreter5pushiEh"
.LASF61:
	.string	"shiftreg"
.LASF272:
	.string	"brgepcf"
.LASF200:
	.string	"_ZN11interpreter8cpuflags7getflagENS0_8bitflagsE"
.LASF254:
	.string	"_ZN11interpreter3tzyEv"
.LASF171:
	.string	"_ZN10interrupts15handleinterruptEv"
.LASF65:
	.string	"dataque"
.LASF323:
	.string	"buffer"
.LASF113:
	.string	"wepin"
.LASF258:
	.string	"breq"
.LASF202:
	.string	"_ZN11interpreter8cpuflags7setflagENS0_8bitflagsEb"
.LASF151:
	.string	"writeInstruction"
.LASF317:
	.string	"prognum"
.LASF70:
	.string	"_ZN8shiftreg8shiftoutEv"
.LASF5:
	.string	"unsigned int"
.LASF167:
	.string	"interrupts"
.LASF38:
	.string	"writeddra"
.LASF40:
	.string	"writeddrb"
.LASF42:
	.string	"writeddrc"
.LASF44:
	.string	"writeddrd"
.LASF270:
	.string	"brge"
.LASF29:
	.string	"writeporta"
.LASF32:
	.string	"writeportb"
.LASF34:
	.string	"writeportc"
.LASF36:
	.string	"writeportd"
.LASF218:
	.string	"_ZN11interpreterC4Ev"
.LASF68:
	.string	"_ZN8shiftregC4EhhhP14portcontroller"
.LASF249:
	.string	"_ZN11interpreter3tysEv"
.LASF130:
	.string	"_ZN3ram7getaddrEv"
.LASF263:
	.string	"_ZN11interpreter7breqpcbEj"
.LASF88:
	.string	"_ZN6Serial4sendEPci"
.LASF292:
	.string	"_ZN11interpreter3clrEc"
.LASF305:
	.string	"_ZN11interpreter6jmppcfEj"
.LASF360:
	.string	"interpret"
.LASF82:
	.string	"mosi"
.LASF299:
	.string	"_ZN11interpreter4pushEc"
.LASF232:
	.string	"_ZN11interpreter3ldyEc"
.LASF109:
	.string	"_ZN8keyboard7getsizeEv"
.LASF364:
	.string	"free"
.LASF260:
	.string	"breqpcf"
.LASF252:
	.string	"_ZN11interpreter3tzsEv"
.LASF37:
	.string	"_ZN14portcontroller10writeportdEc"
.LASF354:
	.string	"vbank0"
.LASF361:
	.string	"calloc"
.LASF321:
	.string	"readKeyboard"
.LASF372:
	.string	"_Z22loadmainprogramfromromcb"
.LASF19:
	.string	"_ZN14portcontroller9readportdEv"
.LASF330:
	.string	"__addr16"
.LASF259:
	.string	"_ZN11interpreter4breqEj"
.LASF91:
	.string	"recive"
.LASF53:
	.string	"_ZN14portcontroller13digitalwriteaEhb"
.LASF46:
	.string	"digitalread"
.LASF142:
	.string	"instruction_memory_offset"
.LASF370:
	.string	"_ZN11interpreter7syscallEv"
.LASF169:
	.string	"_ZN10interruptsC4Ev"
.LASF87:
	.string	"send"
.LASF181:
	.string	"getVal"
.LASF121:
	.string	"_ZN3ram4readEi"
.LASF7:
	.string	"uint32_t"
.LASF333:
	.string	"_GLOBAL__sub_I__Z10runprogramv"
.LASF335:
	.string	"load"
.LASF39:
	.string	"_ZN14portcontroller9writeddraEc"
.LASF92:
	.string	"_ZN6Serial6reciveEPci"
.LASF160:
	.string	"_ZN3rom4readEi"
.LASF161:
	.string	"_ZN3rom10setaddressEj"
.LASF115:
	.string	"addrptr"
.LASF224:
	.string	"_ZN11interpreter3incEc"
.LASF159:
	.string	"_ZN3rom4readEv"
.LASF199:
	.string	"getflag"
.LASF195:
	.string	"carry"
.LASF225:
	.string	"_ZN11interpreter3incEj"
.LASF148:
	.string	"_ZN4Vram9writeDataEjPcj"
.LASF155:
	.string	"~Vram"
.LASF298:
	.string	"push"
.LASF94:
	.string	"_ZN6Serial10recivebuffEv"
.LASF280:
	.string	"brlepcb"
.LASF0:
	.string	"long long unsigned int"
.LASF314:
	.string	"storememory"
.LASF311:
	.string	"_ZN11interpreteraSERKS_"
.LASF177:
	.string	"high"
.LASF365:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF28:
	.string	"portcontroller"
.LASF25:
	.string	"_ZN14portcontroller8readddrcEv"
.LASF176:
	.string	"interpreter"
.LASF203:
	.string	"clear"
.LASF248:
	.string	"_ZN11interpreter3txzEv"
.LASF117:
	.string	"addressbase"
.LASF47:
	.string	"_ZN14portcontroller11digitalreadEh"
.LASF331:
	.string	"__initialize_p"
.LASF188:
	.string	"_ZN11interpreter8indexreg8setValueEj"
.LASF236:
	.string	"_ZN11interpreter3stzEc"
.LASF196:
	.string	"sign"
.LASF268:
	.string	"brnepcb"
.LASF307:
	.string	"_ZN11interpreter6jmppcbEj"
.LASF112:
	.string	"offset"
.LASF57:
	.string	"_ZN14portcontroller13digitalwritecEhb"
.LASF205:
	.string	"registers"
.LASF306:
	.string	"jmppcb"
.LASF349:
	.string	"settings"
.LASF363:
	.string	"strcasecmp_P"
.LASF216:
	.string	"addressptr"
.LASF332:
	.string	"__priority"
.LASF157:
	.string	"_ZN3romC4Ev"
.LASF187:
	.string	"setValue"
.LASF78:
	.string	"_ZN8shiftreg10shiftout64Ey"
.LASF33:
	.string	"_ZN14portcontroller10writeportbEc"
.LASF140:
	.string	"char_memory_base"
.LASF230:
	.string	"_ZN11interpreter3ldiEcc"
.LASF15:
	.string	"_ZN14portcontroller9readportbEv"
.LASF245:
	.string	"_ZN11interpreter3rolEc"
.LASF123:
	.string	"_ZN3ram5writeEc"
.LASF325:
	.string	"loadmainprogramfromrom"
.LASF152:
	.string	"_ZN4Vram16writeInstructionEv"
.LASF217:
	.string	"indregs"
.LASF119:
	.string	"_ZN3ramC4EP14portcontrollerP8shiftreghm"
.LASF150:
	.string	"_ZN4Vram9cleardataEv"
.LASF98:
	.string	"_ZN6SerialD4Ev"
.LASF289:
	.string	"_ZN11interpreter6brlpcfEj"
.LASF156:
	.string	"_ZN4VramD4Ev"
.LASF288:
	.string	"brlpcf"
.LASF194:
	.string	"equals"
.LASF45:
	.string	"_ZN14portcontroller9writeddrdEc"
.LASF222:
	.string	"_ZN11interpreter3runEv"
.LASF279:
	.string	"_ZN11interpreter7brlepcfEj"
.LASF132:
	.string	"_ZN3ramD4Ev"
.LASF350:
	.string	"program0"
.LASF351:
	.string	"program1"
.LASF11:
	.string	"char"
.LASF353:
	.string	"program3"
.LASF257:
	.string	"_ZN11interpreter3tszEv"
.LASF183:
	.string	"getLow"
.LASF267:
	.string	"_ZN11interpreter7brnepcfEj"
.LASF352:
	.string	"program2"
.LASF300:
	.string	"_ZN11interpreter4pushENS_8indexregE"
.LASF209:
	.string	"baseprogram"
.LASF120:
	.string	"_ZN3ram4readEv"
.LASF139:
	.string	"char_memory_offset"
.LASF134:
	.string	"_ZN3rameqES_"
.LASF79:
	.string	"Serial"
.LASF315:
	.string	"_Z10runprogramv"
.LASF49:
	.string	"_ZN14portcontroller12digitalwriteEhb"
.LASF278:
	.string	"_ZN11interpreter4brleEj"
.LASF355:
	.string	"vbank1"
.LASF356:
	.string	"vbank2"
.LASF111:
	.string	"_ZN8keyboardD4Ev"
.LASF114:
	.string	"portptr"
.LASF223:
	.string	"_ZN11interpreter3nopEv"
.LASF3:
	.string	"uint8_t"
.LASF158:
	.string	"_ZN3romC4EP14portcontrollerP8shiftregy"
.LASF338:
	.string	"bank0"
.LASF303:
	.string	"_ZN11interpreter3jmpEj"
.LASF192:
	.string	"greater"
.LASF178:
	.string	"indexreg"
.LASF107:
	.string	"_ZN8keyboard4readEPc"
.LASF63:
	.string	"clockpin"
.LASF345:
	.string	"bank7"
.LASF346:
	.string	"bank8"
.LASF347:
	.string	"bank9"
.LASF241:
	.string	"_ZN11interpreter3svzEc"
.LASF340:
	.string	"bank2"
.LASF174:
	.string	"_ZN10interruptsC4ERKS_"
.LASF341:
	.string	"bank3"
.LASF328:
	.string	"retval"
.LASF294:
	.string	"swap"
.LASF75:
	.string	"shiftout32"
.LASF235:
	.string	"_ZN11interpreter3styEc"
.LASF21:
	.string	"_ZN14portcontroller8readddraEv"
.LASF9:
	.string	"long long int"
.LASF191:
	.string	"zero"
.LASF122:
	.string	"write"
.LASF97:
	.string	"_ZN8shiftregD4Ev"
.LASF284:
	.string	"brgpcb"
.LASF89:
	.string	"sendandrecive1byte"
.LASF304:
	.string	"jmppcf"
.LASF282:
	.string	"brgpcf"
.LASF276:
	.string	"brle"
.LASF30:
	.string	"_ZN14portcontrollerC4Ev"
.LASF297:
	.string	"_ZN11interpreter3popEc"
.LASF274:
	.string	"brgepcb"
.LASF211:
	.string	"stackram"
.LASF246:
	.string	"_ZN11interpreter3txsEv"
.LASF60:
	.string	"bool"
.LASF234:
	.string	"_ZN11interpreter3stxEc"
.LASF233:
	.string	"_ZN11interpreter3ldzEc"
.LASF371:
	.string	"_ZN11interpreter3popEv"
.LASF312:
	.string	"sizetype"
.LASF287:
	.string	"_ZN11interpreter3brlEj"
.LASF290:
	.string	"brlpcb"
.LASF271:
	.string	"_ZN11interpreter4brgeEj"
.LASF135:
	.string	"operator="
.LASF146:
	.string	"writeData"
.LASF369:
	.string	"_ZN11interpreter8cpuflagsC4Ev"
.LASF144:
	.string	"custom_char_memory_offset"
.LASF286:
	.string	"_ZN11interpreter3brgEj"
.LASF168:
	.string	"irqdata"
.LASF336:
	.string	"command"
.LASF51:
	.string	"_ZN14portcontrollerD4Ev"
.LASF322:
	.string	"_Z12readKeyboardPci"
.LASF238:
	.string	"_ZN11interpreter3svdEjc"
.LASF296:
	.string	"syscall"
.LASF50:
	.string	"~portcontroller"
.LASF133:
	.string	"operator=="
.LASF266:
	.string	"brnepcf"
.LASF153:
	.string	"writecustomchar"
.LASF165:
	.string	"_ZN3romC4ERKS_"
.LASF265:
	.string	"_ZN11interpreter4brneEj"
.LASF193:
	.string	"less"
.LASF110:
	.string	"~keyboard"
.LASF41:
	.string	"_ZN14portcontroller9writeddrbEc"
.LASF170:
	.string	"handleinterrupt"
.LASF116:
	.string	"dataptr"
.LASF138:
	.string	"mempin"
.LASF244:
	.string	"_ZN11interpreter3rorEc"
.LASF237:
	.string	"_ZN11interpreter3stdEjc"
.LASF255:
	.string	"_ZN11interpreter3tsxEv"
.LASF359:
	.string	"irqhandler"
.LASF73:
	.string	"shiftout16"
.LASF4:
	.string	"uint16_t"
.LASF367:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF324:
	.string	"buffsize"
.LASF184:
	.string	"_ZN11interpreter8indexreg6getLowEv"
.LASF84:
	.string	"_ZN6SerialC4EP8shiftreg"
.LASF329:
	.string	"__result"
.LASF106:
	.string	"_ZN8keyboard4readEPcm"
.LASF310:
	.string	"_ZN11interpreter3retEv"
.LASF253:
	.string	"_ZN11interpreter3tzxEv"
.LASF96:
	.string	"~Serial"
.LASF141:
	.string	"instruction_memory_base"
.LASF228:
	.string	"_ZN11interpreter3movEcc"
.LASF221:
	.string	"_ZN11interpreterD4Ev"
.LASF362:
	.string	"strcpy_P"
.LASF229:
	.string	"_ZN11interpreter2ldEcj"
.LASF239:
	.string	"_ZN11interpreter3svxEc"
.LASF27:
	.string	"_ZN14portcontroller8readddrdEv"
.LASF6:
	.string	"long int"
.LASF86:
	.string	"_ZN6SerialC4EP8shiftregP14portcontrollerccc"
.LASF185:
	.string	"getHigh"
.LASF261:
	.string	"_ZN11interpreter7breqpcfEj"
.LASF145:
	.string	"_ZN4VramC4EP14portcontrollerP8shiftreghhy"
.LASF313:
	.string	"runprogram"
.LASF93:
	.string	"recivebuff"
.LASF213:
	.string	"videoinstructionram"
.LASF281:
	.string	"_ZN11interpreter7brlepcbEj"
.LASF90:
	.string	"_ZN6Serial18sendandrecive1byteEc"
.LASF182:
	.string	"_ZN11interpreter8indexreg6getValEv"
.LASF198:
	.string	"flag"
.LASF186:
	.string	"_ZN11interpreter8indexreg7getHighEv"
.LASF214:
	.string	"videocustomcharram"
.LASF10:
	.string	"uint64_t"
.LASF206:
	.string	"registerx"
.LASF264:
	.string	"brne"
.LASF154:
	.string	"_ZN4Vram15writecustomcharEPh"
.LASF147:
	.string	"_ZN4Vram9writeDataEjc"
.LASF220:
	.string	"~interpreter"
.LASF180:
	.string	"_ZN11interpreter8indexregC4EPcS1_"
.LASF231:
	.string	"_ZN11interpreter3ldxEc"
.LASF108:
	.string	"getsize"
.LASF80:
	.string	"csreg"
.LASF358:
	.string	"vrambanklist"
.LASF262:
	.string	"breqpcb"
.LASF74:
	.string	"_ZN8shiftreg10shiftout16Ej"
.LASF291:
	.string	"_ZN11interpreter6brlpcbEj"
.LASF243:
	.string	"_ZN11interpreter3cpiEcc"
.LASF316:
	.string	"_Z11storememoryyc"
.LASF55:
	.string	"_ZN14portcontroller13digitalwritebEhb"
.LASF35:
	.string	"_ZN14portcontroller10writeportcEc"
.LASF81:
	.string	"miso"
.LASF173:
	.string	"_ZN10interruptsD4Ev"
.LASF64:
	.string	"latchclkpin"
.LASF293:
	.string	"_ZN11interpreter3clfEc"
.LASF163:
	.string	"~rom"
.LASF17:
	.string	"_ZN14portcontroller9readportcEv"
.LASF283:
	.string	"_ZN11interpreter6brgpcfEj"
.LASF226:
	.string	"_ZN11interpreter3decEc"
.LASF250:
	.string	"_ZN11interpreter3tyxEv"
.LASF277:
	.string	"brlepcf"
.LASF95:
	.string	"~shiftreg"
.LASF227:
	.string	"_ZN11interpreter3decEj"
.LASF189:
	.string	"_ZN11interpreter8indexreg8setValueEcc"
.LASF320:
	.string	"prog"
.LASF8:
	.string	"long unsigned int"
.LASF100:
	.string	"address"
.LASF190:
	.string	"cpuflags"
.LASF366:
	.string	".././main.cpp"
.LASF66:
	.string	"port"
.LASF83:
	.string	"_ZN6SerialC4Ev"
.LASF102:
	.string	"serial"
.LASF76:
	.string	"_ZN8shiftreg10shiftout32Em"
.LASF285:
	.string	"_ZN11interpreter6brgpcbEj"
.LASF127:
	.string	"setaddress"
.LASF337:
	.string	"addreg"
.LASF71:
	.string	"shiftout8"
.LASF118:
	.string	"_ZN3ramC4Ev"
.LASF2:
	.string	"unsigned char"
.LASF242:
	.string	"_ZN11interpreter3cmpEcc"
.LASF269:
	.string	"_ZN11interpreter7brnepcbEj"
.LASF256:
	.string	"_ZN11interpreter3tsyEv"
.LASF131:
	.string	"~ram"
.LASF149:
	.string	"cleardata"
.LASF308:
	.string	"call"
.LASF318:
	.string	"mainprogram"
.LASF104:
	.string	"_ZN8keyboardC4Em"
.LASF327:
	.string	"in_str"
.LASF179:
	.string	"_ZN11interpreter8indexregC4Ev"
.LASF103:
	.string	"_ZN8keyboardC4Ev"
.LASF99:
	.string	"keyboard"
.LASF143:
	.string	"custom_char_memory_base"
.LASF137:
	.string	"Vram"
.LASF251:
	.string	"_ZN11interpreter3tyzEv"
.LASF373:
	.string	"__static_initialization_and_destruction_0"
.LASF124:
	.string	"_ZN3ram5writeEhc"
.LASF85:
	.string	"_ZN6SerialC4EP8shiftregP14portcontroller"
.LASF62:
	.string	"datapin"
.LASF77:
	.string	"shiftout64"
.LASF197:
	.string	"underflow"
.LASF275:
	.string	"_ZN11interpreter7brgepcbEj"
.LASF23:
	.string	"_ZN14portcontroller8readddrbEv"
.LASF48:
	.string	"digitalwrite"
.LASF128:
	.string	"_ZN3ram10setaddressEy"
.LASF357:
	.string	"rambanklist"
.LASF247:
	.string	"_ZN11interpreter3txyEv"
.LASF59:
	.string	"_ZN14portcontroller13digitalwritedEhb"
.LASF1:
	.string	"signed char"
.LASF207:
	.string	"registery"
.LASF208:
	.string	"registerz"
.LASF319:
	.string	"prog_ram"
.LASF69:
	.string	"shiftout"
.LASF67:
	.string	"_ZN8shiftregC4Ev"
.LASF219:
	.string	"_ZN11interpreterC4ERKS_"
.LASF164:
	.string	"_ZN3romD4Ev"
.LASF326:
	.string	"main"
.LASF334:
	.string	"_GLOBAL__sub_D__Z10runprogramv"
.LASF172:
	.string	"~interrupts"
.LASF368:
	.string	"bitflags"
.LASF129:
	.string	"getaddr"
.LASF348:
	.string	"bios"
.LASF309:
	.string	"_ZN11interpreter4callEj"
.LASF20:
	.string	"readddra"
.LASF22:
	.string	"readddrb"
.LASF24:
	.string	"readddrc"
.LASF26:
	.string	"readddrd"
.LASF240:
	.string	"_ZN11interpreter3svyEc"
.LASF204:
	.string	"_ZN11interpreter8cpuflags5clearEv"
.LASF301:
	.string	"pushi"
.LASF31:
	.string	"_ZN14portcontroller10writeportaEc"
.LASF212:
	.string	"videoram"
.LASF72:
	.string	"_ZN8shiftreg9shiftout8Eh"
.LASF339:
	.string	"bank1"
.LASF14:
	.string	"_ZN14portcontroller9readportaEv"
.LASF12:
	.string	"readporta"
.LASF13:
	.string	"readportb"
.LASF16:
	.string	"readportc"
.LASF18:
	.string	"readportd"
.LASF343:
	.string	"bank5"
.LASF215:
	.string	"stackptr"
.LASF344:
	.string	"bank6"
.LASF105:
	.string	"read"
.LASF126:
	.string	"_ZN3ram5writeEyc"
.LASF342:
	.string	"bank4"
.LASF43:
	.string	"_ZN14portcontroller9writeddrcEc"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
