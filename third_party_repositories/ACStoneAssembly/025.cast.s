	.file	"025.cast.c"
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
	li	a3,0
	li	a4,0
	sw	a3,-24(s0)
	sw	a4,-20(s0)
	li	a5,1
	sh	a5,-26(s0)
	lhu	a5,-26(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	sw	a5,-24(s0)
	srai	a5,a5,31
	sw	a5,-20(s0)
	sw	a3,-24(s0)
	sw	a4,-20(s0)
	li	a5,-1
	sh	a5,-26(s0)
	lhu	a5,-26(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	sw	a5,-24(s0)
	srai	a5,a5,31
	sw	a5,-20(s0)
	sw	a3,-24(s0)
	sw	a4,-20(s0)
	li	a5,-32768
	sh	a5,-26(s0)
	lhu	a5,-26(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	sw	a5,-24(s0)
	srai	a5,a5,31
	sw	a5,-20(s0)
	sw	a3,-24(s0)
	sw	a4,-20(s0)
	li	a5,-32768
	xori	a5,a5,-1
	sh	a5,-26(s0)
	lhu	a5,-26(s0)
	slli	a5,a5,16
	srai	a5,a5,16
	sw	a5,-24(s0)
	srai	a5,a5,31
	sw	a5,-20(s0)
	sw	a3,-24(s0)
	sw	a4,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
