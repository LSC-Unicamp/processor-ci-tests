	.file	"018.const.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a5,0
	li	a6,0
	sw	a5,-24(s0)
	sw	a6,-20(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a4,0
	li	a5,-2147483648
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a4,1
	li	a5,0
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a4,-1
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a4,-2
	li	a5,-1
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1431655765
	.word	1431655765
	.align	3
.LC1:
	.word	-1431655766
	.word	-1431655766
	.ident	"GCC: () 13.2.0"
