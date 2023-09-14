	.file	"interrupts.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN10interruptsC2Ev,"ax",@progbits
.global	_ZN10interruptsC2Ev
	.type	_ZN10interruptsC2Ev, @function
_ZN10interruptsC2Ev:
.LFB1:
	.file 1 "../cpu/interrupts/interrupts.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN10interruptsC2Ev, .-_ZN10interruptsC2Ev
.global	_ZN10interruptsC1Ev
	.set	_ZN10interruptsC1Ev,_ZN10interruptsC2Ev
	.section	.text._ZN10interrupts15handleinterruptEv,"ax",@progbits
.global	_ZN10interrupts15handleinterruptEv
	.type	_ZN10interrupts15handleinterruptEv, @function
_ZN10interrupts15handleinterruptEv:
.LFB3:
	.loc 1 17 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN10interrupts15handleinterruptEv, .-_ZN10interrupts15handleinterruptEv
	.section	.text._ZN10interruptsD2Ev,"ax",@progbits
.global	_ZN10interruptsD2Ev
	.type	_ZN10interruptsD2Ev, @function
_ZN10interruptsD2Ev:
.LFB5:
	.loc 1 52 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN10interruptsD2Ev, .-_ZN10interruptsD2Ev
.global	_ZN10interruptsD1Ev
	.set	_ZN10interruptsD1Ev,_ZN10interruptsD2Ev
	.text
.Letext0:
	.file 2 "../cpu/interrupts/interrupts.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e9
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF12
	.byte	0x4
	.long	.LASF13
	.long	.LASF14
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0xd
	.long	0xef
	.uleb128 0x3
	.string	"irq"
	.byte	0x2
	.byte	0x11
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x13
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x2
	.uleb128 0x5
	.byte	0x1
	.long	.LASF0
	.byte	0x2
	.byte	0x18
	.long	.LASF2
	.byte	0x1
	.long	0x67
	.long	0x6e
	.uleb128 0x6
	.long	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF1
	.byte	0x2
	.byte	0x19
	.long	.LASF3
	.byte	0x1
	.long	0x83
	.long	0x8a
	.uleb128 0x6
	.long	0xf6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF4
	.byte	0x2
	.byte	0x1a
	.long	.LASF5
	.byte	0x1
	.long	0x9f
	.long	0xac
	.uleb128 0x6
	.long	0xf6
	.byte	0x1
	.uleb128 0x6
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF0
	.byte	0x2
	.byte	0x1c
	.long	.LASF6
	.byte	0x1
	.long	0xc1
	.long	0xcd
	.uleb128 0x6
	.long	0xf6
	.byte	0x1
	.uleb128 0x7
	.long	0x103
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF7
	.byte	0x2
	.byte	0x1d
	.long	.LASF8
	.long	0x10e
	.byte	0x1
	.long	0xe2
	.uleb128 0x6
	.long	0xf6
	.byte	0x1
	.uleb128 0x7
	.long	0x103
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0xa
	.byte	0x2
	.long	0x29
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x2
	.long	0x109
	.uleb128 0xd
	.long	0x29
	.uleb128 0xc
	.byte	0x2
	.long	0x29
	.uleb128 0xe
	.long	0x52
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x124
	.long	0x12f
	.uleb128 0xf
	.long	.LASF10
	.long	0x12f
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	0xf6
	.uleb128 0x10
	.long	0x114
	.long	.LASF16
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x152
	.byte	0x1
	.long	0x15f
	.uleb128 0x11
	.long	0x124
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x12
	.long	0x6e
	.byte	0x1
	.byte	0x10
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x17b
	.byte	0x1
	.long	0x19b
	.uleb128 0x13
	.long	.LASF10
	.long	0x12f
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	.LASF17
	.byte	0x1
	.byte	0x12
	.long	0xef
	.byte	0x2
	.byte	0x88
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.long	0x8a
	.byte	0x1
	.byte	0x34
	.byte	0
	.long	0x1ab
	.long	0x1c0
	.uleb128 0xf
	.long	.LASF10
	.long	0x12f
	.byte	0x1
	.uleb128 0xf
	.long	.LASF11
	.long	0x1c0
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.uleb128 0x15
	.long	0x19b
	.long	.LASF18
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x1df
	.byte	0x1
	.uleb128 0x11
	.long	0x1ab
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB3
	.long	.LFE3
	.long	.LFB5
	.long	.LFE5
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"irqdata"
.LASF17:
	.string	"irqprotected"
.LASF11:
	.string	"__in_chrg"
.LASF4:
	.string	"~interrupts"
.LASF14:
	.string	"C:\\\\Users\\\\Brent\\\\Documents\\\\GitHub\\\\8bitos\\\\code\\\\os\\\\os\\\\Debug"
.LASF1:
	.string	"handleinterrupt"
.LASF8:
	.string	"_ZN10interruptsaSERKS_"
.LASF2:
	.string	"_ZN10interruptsC4Ev"
.LASF5:
	.string	"_ZN10interruptsD4Ev"
.LASF10:
	.string	"this"
.LASF18:
	.string	"_ZN10interruptsD2Ev"
.LASF6:
	.string	"_ZN10interruptsC4ERKS_"
.LASF13:
	.string	"../cpu/interrupts/interrupts.cpp"
.LASF7:
	.string	"operator="
.LASF16:
	.string	"_ZN10interruptsC2Ev"
.LASF0:
	.string	"interrupts"
.LASF12:
	.string	"GNU C++14 5.4.0 -mn-flash=1 -mmcu=avr5 -g2 -O1 -pedantic-errors -std=c++14 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -mn-flash=1 -mno-skip-bug -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF3:
	.string	"_ZN10interrupts15handleinterruptEv"
.LASF9:
	.string	"char"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
