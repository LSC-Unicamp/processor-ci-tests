	.file	"123.loop.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	li	a5,32
	sb	a5,-17(s0)
	li	a5,320122880
	addi	a5,a5,-1214
	sw	a5,-36(s0)
	li	a5,-239910912
	addi	a5,a5,1303
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L2
.L9:
	lw	a5,-32(s0)
	andi	a5,a5,1
	beq	a5,zero,.L3
	lw	a5,-28(s0)
	mv	a2,a5
	li	a3,0
	lw	a5,-36(s0)
	mv	t1,a5
	li	t2,0
	add	a4,a2,t1
	mv	t5,a4
	sltu	t5,t5,a2
	add	a5,a3,t2
	add	t5,t5,a5
	mv	a5,t5
	bne	a5,zero,.L11
	sw	zero,-24(s0)
	j	.L6
.L11:
	li	a5,1
	sw	a5,-24(s0)
.L6:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L3:
	lw	a5,-32(s0)
	srli	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	andi	a5,a5,1
	beq	a5,zero,.L7
	lw	a4,-32(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-32(s0)
.L7:
	lw	a5,-28(s0)
	srli	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	andi	a5,a5,1
	beq	a5,zero,.L8
	lw	a4,-28(s0)
	li	a5,-2147483648
	or	a5,a4,a5
	sw	a5,-28(s0)
.L8:
	lw	a5,-24(s0)
	srli	a5,a5,1
	sw	a5,-24(s0)
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	sb	a5,-17(s0)
.L2:
	lbu	a5,-17(s0)
	bne	a5,zero,.L9
	li	a3,0
	li	a4,0
	sw	a3,-48(s0)
	sw	a4,-44(s0)
	lw	a5,-28(s0)
	mv	t3,a5
	li	t4,0
	slli	a1,t3,0
	li	a0,0
	lw	a5,-32(s0)
	mv	a6,a5
	li	a7,0
	or	a5,a0,a6
	sw	a5,-48(s0)
	or	a5,a1,a7
	sw	a5,-44(s0)
	sw	a3,-48(s0)
	sw	a4,-44(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
