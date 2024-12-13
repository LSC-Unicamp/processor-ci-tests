	.file	"143.array.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sw	ra,76(sp)
	sw	s0,72(sp)
	addi	s0,sp,80
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	sw	zero,-28(s0)
	li	a5,-33
	sb	a5,-52(s0)
	li	a5,68
	sb	a5,-51(s0)
	li	a5,18
	sb	a5,-50(s0)
	li	a5,69
	sb	a5,-49(s0)
	li	a5,-128
	sb	a5,-48(s0)
	li	a5,-35
	sb	a5,-47(s0)
	li	a5,67
	sb	a5,-46(s0)
	li	a5,103
	sb	a5,-45(s0)
	sb	zero,-44(s0)
	li	a5,35
	sb	a5,-43(s0)
	li	a5,1
	sb	a5,-42(s0)
	li	a5,-9
	sb	a5,-41(s0)
	li	a5,69
	sb	a5,-40(s0)
	li	a5,-122
	sb	a5,-39(s0)
	li	a5,-106
	sb	a5,-38(s0)
	li	a5,82
	sb	a5,-37(s0)
	li	a5,-1
	sb	a5,-36(s0)
	li	a5,86
	sb	a5,-35(s0)
	li	a5,35
	sb	a5,-34(s0)
	li	a5,16
	sb	a5,-33(s0)
	li	a5,5
	sb	a5,-32(s0)
	li	a5,-33
	sb	a5,-76(s0)
	li	a5,68
	sb	a5,-75(s0)
	li	a5,18
	sb	a5,-74(s0)
	li	a5,69
	sb	a5,-73(s0)
	li	a5,-128
	sb	a5,-72(s0)
	li	a5,-35
	sb	a5,-71(s0)
	li	a5,67
	sb	a5,-70(s0)
	li	a5,103
	sb	a5,-69(s0)
	sb	zero,-68(s0)
	li	a5,35
	sb	a5,-67(s0)
	li	a5,1
	sb	a5,-66(s0)
	li	a5,-9
	sb	a5,-65(s0)
	li	a5,69
	sb	a5,-64(s0)
	li	a5,-122
	sb	a5,-63(s0)
	li	a5,-106
	sb	a5,-62(s0)
	li	a5,82
	sb	a5,-61(s0)
	li	a5,-1
	sb	a5,-60(s0)
	li	a5,86
	sb	a5,-59(s0)
	li	a5,35
	sb	a5,-58(s0)
	li	a5,16
	sb	a5,-57(s0)
	li	a5,5
	sb	a5,-56(s0)
	addi	a5,s0,-52
	li	a1,21
	mv	a0,a5
	call	scBubbleSort
	addi	a5,s0,-76
	li	a1,21
	mv	a0,a5
	call	ucBubbleSort
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a4,-36(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lb	a5,-36(a5)
	ble	a4,a5,.L3
	li	a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L4
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	j	.L5
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-60(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-60(a5)
	bleu	a4,a5,.L6
	li	a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L7
	li	a5,0
	mv	a0,a5
	lw	ra,76(sp)
	lw	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.align	2
	.globl	scBubbleSort
	.type	scBubbleSort, @function
scBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L10
.L14:
	sw	zero,-24(s0)
	j	.L11
.L13:
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lb	a4,0(a5)
	lw	a5,-24(s0)
	lw	a3,-36(s0)
	add	a5,a3,a5
	lb	a5,0(a5)
	bge	a4,a5,.L12
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lb	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,0(a5)
.L12:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L11:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L13
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	bge	a5,zero,.L14
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	scBubbleSort, .-scBubbleSort
	.align	2
	.globl	ucBubbleSort
	.type	ucBubbleSort, @function
ucBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L16
.L20:
	sw	zero,-24(s0)
	j	.L17
.L19:
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-24(s0)
	lw	a3,-36(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	bgeu	a4,a5,.L18
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	lw	a4,-36(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,0(a5)
.L18:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L17:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	bge	a5,zero,.L20
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	ucBubbleSort, .-ucBubbleSort
	.ident	"GCC: () 13.2.0"
