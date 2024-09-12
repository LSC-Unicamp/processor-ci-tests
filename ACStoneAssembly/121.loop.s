	.file	"121.loop.c"
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
	li	a5,0
	li	a6,0
	sw	a5,-24(s0)
	sw	a6,-20(s0)
	li	a5,5
	sb	a5,-25(s0)
	j	.L2
.L3:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L2:
	lbu	a5,-25(s0)
	addi	a4,a5,-1
	sb	a4,-25(s0)
	bne	a5,zero,.L3
	sb	zero,-25(s0)
	li	a5,5
	sb	a5,-26(s0)
	j	.L4
.L5:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L4:
	lb	a5,-26(s0)
	andi	a4,a5,0xff
	addi	a4,a4,-1
	andi	a4,a4,0xff
	sb	a4,-26(s0)
	bne	a5,zero,.L5
	sb	zero,-26(s0)
	li	a5,5
	sh	a5,-28(s0)
	j	.L6
.L7:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L6:
	lhu	a5,-28(s0)
	addi	a4,a5,-1
	sh	a4,-28(s0)
	bne	a5,zero,.L7
	sh	zero,-28(s0)
	li	a5,5
	sh	a5,-30(s0)
	j	.L8
.L9:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L8:
	lh	a5,-30(s0)
	slli	a4,a5,16
	srli	a4,a4,16
	addi	a4,a4,-1
	slli	a4,a4,16
	srli	a4,a4,16
	sh	a4,-30(s0)
	bne	a5,zero,.L9
	sh	zero,-30(s0)
	li	a5,5
	sw	a5,-36(s0)
	j	.L10
.L11:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L10:
	lw	a5,-36(s0)
	addi	a4,a5,-1
	sw	a4,-36(s0)
	bne	a5,zero,.L11
	sw	zero,-36(s0)
	li	a5,5
	sw	a5,-40(s0)
	j	.L12
.L13:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L12:
	lw	a5,-40(s0)
	addi	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L13
	sw	zero,-40(s0)
	li	a4,5
	li	a5,0
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	j	.L14
.L15:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L14:
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	li	a0,-1
	li	a1,-1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a1,a6,a3
	mv	a3,a1
	sw	a2,-48(s0)
	sw	a3,-44(s0)
	mv	a3,a4
	or	a3,a3,a5
	bne	a3,zero,.L15
	li	a5,0
	li	a6,0
	sw	a5,-48(s0)
	sw	a6,-44(s0)
	li	a4,5
	li	a5,0
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	j	.L16
.L17:
	lw	a2,-24(s0)
	lw	a3,-20(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-24(s0)
	sw	a5,-20(s0)
.L16:
	lw	a4,-56(s0)
	lw	a5,-52(s0)
	li	a0,-1
	li	a1,-1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a1,a6,a3
	mv	a3,a1
	sw	a2,-56(s0)
	sw	a3,-52(s0)
	mv	a3,a4
	or	a3,a3,a5
	bne	a3,zero,.L17
	li	a5,0
	li	a6,0
	sw	a5,-56(s0)
	sw	a6,-52(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,60(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
