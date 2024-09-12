	.file	"013.const.c"
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
	li	a5,20480
	addi	a5,a5,1365
	sh	a5,-18(s0)
	li	a5,-20480
	addi	a5,a5,-1366
	sh	a5,-18(s0)
	sh	zero,-18(s0)
	li	a5,-1
	sh	a5,-18(s0)
	li	a5,-32768
	sh	a5,-18(s0)
	li	a5,1
	sh	a5,-18(s0)
	li	a5,-32768
	xori	a5,a5,-1
	sh	a5,-18(s0)
	li	a5,-2
	sh	a5,-18(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
