	.file	"016.const.c"
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
	li	a5,1431654400
	addi	a5,a5,1365
	sw	a5,-20(s0)
	li	a5,-1431654400
	addi	a5,a5,-1366
	sw	a5,-20(s0)
	sw	zero,-20(s0)
	li	a5,-1
	sw	a5,-20(s0)
	li	a5,-2147483648
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-20(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-20(s0)
	li	a5,-2
	sw	a5,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
