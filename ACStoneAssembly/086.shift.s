	.file	"086.shift.c"
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
	li	t1,-200
	li	t2,-1
	sw	t1,-24(s0)
	sw	t2,-20(s0)
	li	t1,0
	li	t2,0
	sw	t1,-32(s0)
	sw	t2,-28(s0)
	lw	t1,-32(s0)
	addi	t3,t1,-32
	blt	t3,zero,.L2
	lw	t1,-20(s0)
	sra	a6,t1,t3
	lw	t1,-20(s0)
	srai	a7,t1,31
	j	.L3
.L2:
	lw	t3,-20(s0)
	slli	t4,t3,1
	li	t3,31
	sub	t3,t3,t1
	sll	t3,t4,t3
	lw	t4,-24(s0)
	srl	a6,t4,t1
	or	a6,t3,a6
	lw	t3,-20(s0)
	sra	a7,t3,t1
.L3:
	sw	a6,-24(s0)
	sw	a7,-20(s0)
	li	a6,1
	li	a7,0
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	lw	a6,-32(s0)
	addi	a7,a6,-32
	blt	a7,zero,.L4
	lw	a6,-20(s0)
	sra	a0,a6,a7
	lw	a6,-20(s0)
	srai	a1,a6,31
	j	.L5
.L4:
	lw	a7,-20(s0)
	slli	t1,a7,1
	li	a7,31
	sub	a7,a7,a6
	sll	a7,t1,a7
	lw	t1,-24(s0)
	srl	a0,t1,a6
	or	a0,a7,a0
	lw	a7,-20(s0)
	sra	a1,a7,a6
.L5:
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	li	a0,2
	li	a1,0
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	lw	a1,-32(s0)
	addi	a0,a1,-32
	blt	a0,zero,.L6
	lw	a1,-20(s0)
	sra	a2,a1,a0
	lw	a1,-20(s0)
	srai	a3,a1,31
	j	.L7
.L6:
	lw	a0,-20(s0)
	slli	a6,a0,1
	li	a0,31
	sub	a0,a0,a1
	sll	a0,a6,a0
	lw	a6,-24(s0)
	srl	a2,a6,a1
	or	a2,a0,a2
	lw	a0,-20(s0)
	sra	a3,a0,a1
.L7:
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a3,-32(s0)
	addi	a2,a3,-32
	blt	a2,zero,.L8
	lw	a3,-20(s0)
	sra	a4,a3,a2
	lw	a3,-20(s0)
	srai	a5,a3,31
	j	.L9
.L8:
	lw	a2,-20(s0)
	slli	a1,a2,1
	li	a2,31
	sub	a2,a2,a3
	sll	a2,a1,a2
	lw	a1,-24(s0)
	srl	a4,a1,a3
	or	a4,a2,a4
	lw	a2,-20(s0)
	sra	a5,a2,a3
.L9:
	sw	a4,-24(s0)
	sw	a5,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
