	.file	"122.loop.c"
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
	sb	zero,-25(s0)
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
	lbu	a5,-25(s0)
	addi	a5,a5,1
	sb	a5,-25(s0)
.L2:
	lbu	a4,-25(s0)
	li	a5,4
	bleu	a4,a5,.L3
	sb	zero,-25(s0)
	sb	zero,-26(s0)
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
	lb	a5,-26(s0)
	andi	a5,a5,0xff
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,-26(s0)
.L4:
	lb	a4,-26(s0)
	li	a5,4
	ble	a4,a5,.L5
	sb	zero,-26(s0)
	sh	zero,-28(s0)
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
	lhu	a5,-28(s0)
	addi	a5,a5,1
	sh	a5,-28(s0)
.L6:
	lhu	a4,-28(s0)
	li	a5,4
	bleu	a4,a5,.L7
	sh	zero,-28(s0)
	sh	zero,-30(s0)
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
	lh	a5,-30(s0)
	slli	a5,a5,16
	srli	a5,a5,16
	addi	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	sh	a5,-30(s0)
.L8:
	lh	a4,-30(s0)
	li	a5,4
	ble	a4,a5,.L9
	sh	zero,-30(s0)
	sw	zero,-36(s0)
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
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a4,-36(s0)
	li	a5,4
	bleu	a4,a5,.L11
	sw	zero,-36(s0)
	sw	zero,-40(s0)
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
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L12:
	lw	a4,-40(s0)
	li	a5,4
	ble	a4,a5,.L13
	sw	zero,-40(s0)
	li	a5,0
	li	a6,0
	sw	a5,-48(s0)
	sw	a6,-44(s0)
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
	lw	a2,-48(s0)
	lw	a3,-44(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-48(s0)
	sw	a5,-44(s0)
.L14:
	lw	a5,-44(s0)
	bne	a5,zero,.L21
	lw	a5,-44(s0)
	bne	a5,zero,.L15
	lw	a4,-48(s0)
	li	a5,4
	bleu	a4,a5,.L15
.L21:
	li	a5,0
	li	a6,0
	sw	a5,-48(s0)
	sw	a6,-44(s0)
	sw	a5,-56(s0)
	sw	a6,-52(s0)
	j	.L17
.L18:
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
	lw	a2,-56(s0)
	lw	a3,-52(s0)
	li	a0,1
	li	a1,0
	add	a4,a2,a0
	mv	a6,a4
	sltu	a6,a6,a2
	add	a5,a3,a1
	add	a3,a6,a5
	mv	a5,a3
	sw	a4,-56(s0)
	sw	a5,-52(s0)
.L17:
	lw	a5,-52(s0)
	bgt	a5,zero,.L22
	lw	a5,-52(s0)
	bne	a5,zero,.L18
	lw	a4,-56(s0)
	li	a5,4
	bleu	a4,a5,.L18
.L22:
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
