	.file	"065.div.c"
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
	li	a5,-1
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,15
	sw	a5,-20(s0)
	li	a5,3
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,-1431654400
	addi	a5,a5,-1366
	sw	a5,-20(s0)
	li	a5,1431654400
	addi	a5,a5,1365
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-20(s0)
	li	a5,-1
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	li	a5,-2147483648
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,48
	sw	a5,-20(s0)
	li	a5,5
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,-1
	sw	a5,-20(s0)
	li	a5,-1
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,-2
	sw	a5,-20(s0)
	li	a5,16
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,32
	sw	a5,-20(s0)
	li	a5,-2
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	li	a5,-1
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	div	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,120
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,5
	div	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	srai	a4,a5,31
	andi	a4,a4,3
	add	a5,a4,a5
	srai	a5,a5,2
	sw	a5,-28(s0)
	lw	a4,-28(s0)
	li	a5,3
	div	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	srli	a4,a5,31
	add	a5,a4,a5
	srai	a5,a5,1
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,268435456
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	neg	a5,a5
	sw	a5,-28(s0)
	sw	zero,-28(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
