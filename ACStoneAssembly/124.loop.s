	.file	"124.loop.c"
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
	li	t1,32
	sb	t1,-17(s0)
	li	t1,-2110488576
	addi	t1,t1,579
	sw	t1,-36(s0)
	li	t1,1094160384
	addi	t1,t1,-1678
	sw	t1,-28(s0)
	sw	zero,-32(s0)
	sw	zero,-24(s0)
	j	.L2
.L12:
	lw	t1,-28(s0)
	slli	t1,t1,1
	andi	t3,t1,2
	lw	t1,-32(s0)
	andi	t1,t1,1
	or	t1,t3,t1
	sw	t1,-52(s0)
	lw	t3,-52(s0)
	li	t1,3
	beq	t3,t1,.L14
	lw	t3,-52(s0)
	li	t1,3
	bgtu	t3,t1,.L4
	lw	t3,-52(s0)
	li	t1,2
	beq	t3,t1,.L5
	lw	t3,-52(s0)
	li	t1,2
	bgtu	t3,t1,.L4
	lw	t1,-52(s0)
	beq	t1,zero,.L14
	lw	t3,-52(s0)
	li	t1,1
	beq	t3,t1,.L6
	j	.L4
.L5:
	lw	t3,-24(s0)
	lw	t1,-36(s0)
	sub	t1,t3,t1
	sw	t1,-24(s0)
	j	.L4
.L6:
	lw	t3,-24(s0)
	lw	t1,-36(s0)
	add	t1,t3,t1
	sw	t1,-24(s0)
	j	.L4
.L14:
	nop
.L4:
	lw	t1,-28(s0)
	andi	t1,t1,1
	beq	t1,zero,.L7
	li	t1,1
	sw	t1,-32(s0)
	j	.L8
.L7:
	sw	zero,-32(s0)
.L8:
	lw	t1,-28(s0)
	srli	t1,t1,1
	sw	t1,-28(s0)
	lw	t1,-24(s0)
	andi	t1,t1,1
	beq	t1,zero,.L9
	lw	t3,-28(s0)
	li	t1,-2147483648
	or	t1,t3,t1
	sw	t1,-28(s0)
	j	.L10
.L9:
	lw	t3,-28(s0)
	li	t1,-2147483648
	addi	t1,t1,-1
	and	t1,t3,t1
	sw	t1,-28(s0)
.L10:
	lw	t1,-24(s0)
	srli	t1,t1,1
	sw	t1,-24(s0)
	lw	t3,-24(s0)
	li	t1,1073741824
	and	t1,t3,t1
	beq	t1,zero,.L11
	lw	t3,-24(s0)
	li	t1,-2147483648
	or	t1,t3,t1
	sw	t1,-24(s0)
.L11:
	lbu	t1,-17(s0)
	addi	t1,t1,-1
	sb	t1,-17(s0)
.L2:
	lbu	t1,-17(s0)
	bne	t1,zero,.L12
	li	t3,0
	li	t4,0
	sw	t3,-48(s0)
	sw	t4,-44(s0)
	lw	t1,-24(s0)
	mv	a6,t1
	li	a7,0
	slli	a5,a6,0
	li	a4,0
	lw	a6,-28(s0)
	mv	a2,a6
	li	a3,0
	or	a0,a4,a2
	or	a1,a5,a3
	sw	a0,-48(s0)
	sw	a1,-44(s0)
	sw	t3,-48(s0)
	sw	t4,-44(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,60(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
