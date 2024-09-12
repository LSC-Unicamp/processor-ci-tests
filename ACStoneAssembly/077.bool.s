	.file	"077.bool.c"
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
	li	a5,-32
	sw	a5,-20(s0)
	li	a5,-50
	sw	a5,-24(s0)
	sw	zero,-28(s0)
	lw	a5,-20(s0)
	slti	a5,a5,-50
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,-5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	slti	a5,a5,-5
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,200
	sw	a5,-20(s0)
	li	a5,250
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	slti	a5,a5,250
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,210
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	slti	a5,a5,210
	andi	a5,a5,0xff
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
