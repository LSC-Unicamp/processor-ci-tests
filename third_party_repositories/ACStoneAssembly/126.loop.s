	.file	"126.loop.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sw	s0,60(sp)
	addi	s0,sp,64
	li	a0,25
	li	a1,0
	sw	a0,-56(s0)
	sw	a1,-52(s0)
	li	a0,1
	li	a1,0
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a0,-56(s0)
	lw	a1,-52(s0)
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	j	.L2
.L3:
	lw	a0,-20(s0)
	lw	a1,-32(s0)
	mul	a0,a0,a1
	lw	a6,-28(s0)
	lw	a1,-24(s0)
	mul	a1,a6,a1
	add	a6,a0,a1
	lw	a0,-24(s0)
	lw	a1,-32(s0)
	mul	a7,a0,a1
	mulhu	a3,a0,a1
	mv	a2,a7
	add	a1,a6,a3
	mv	a3,a1
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	lw	a6,-32(s0)
	lw	a7,-28(s0)
	li	t1,-1
	li	t2,-1
	add	a0,a6,t1
	mv	t3,a0
	sltu	t3,t3,a6
	add	a1,a7,t2
	add	a6,t3,a1
	mv	a1,a6
	sw	a0,-32(s0)
	sw	a1,-28(s0)
.L2:
	lw	a1,-28(s0)
	bne	a1,zero,.L3
	lw	a1,-28(s0)
	bne	a1,zero,.L9
	lw	a0,-32(s0)
	li	a1,1
	bgtu	a0,a1,.L3
.L9:
	li	a2,0
	li	a3,0
	sw	a2,-24(s0)
	sw	a3,-20(s0)
	li	a2,25
	li	a3,0
	sw	a2,-64(s0)
	sw	a3,-60(s0)
	li	a2,1
	li	a3,0
	sw	a2,-40(s0)
	sw	a3,-36(s0)
	lw	a2,-64(s0)
	lw	a3,-60(s0)
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	j	.L5
.L6:
	lw	a2,-36(s0)
	lw	a3,-48(s0)
	mul	a2,a2,a3
	lw	a1,-44(s0)
	lw	a3,-40(s0)
	mul	a3,a1,a3
	add	a1,a2,a3
	lw	a2,-40(s0)
	lw	a3,-48(s0)
	mul	a0,a2,a3
	mulhu	a5,a2,a3
	mv	a4,a0
	add	a3,a1,a5
	mv	a5,a3
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a0,-48(s0)
	lw	a1,-44(s0)
	li	a6,-1
	li	a7,-1
	add	a2,a0,a6
	mv	t1,a2
	sltu	t1,t1,a0
	add	a3,a1,a7
	add	a1,t1,a3
	mv	a3,a1
	sw	a2,-48(s0)
	sw	a3,-44(s0)
.L5:
	lw	a3,-44(s0)
	bgt	a3,zero,.L6
	lw	a3,-44(s0)
	bne	a3,zero,.L10
	lw	a2,-48(s0)
	li	a3,1
	bgtu	a2,a3,.L6
.L10:
	li	a5,0
	li	a6,0
	sw	a5,-40(s0)
	sw	a6,-36(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,60(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
