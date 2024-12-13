	.file	"142.array.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-2032
	sw	s0,2028(sp)
	addi	s0,sp,2032
	addi	sp,sp,-400
	sb	zero,-20(s0)
	sb	zero,-17(s0)
	j	.L2
.L7:
	sb	zero,-18(s0)
	j	.L3
.L6:
	lbu	a4,-17(s0)
	lbu	a5,-18(s0)
	bne	a4,a5,.L4
	lbu	a4,-17(s0)
	lbu	t1,-18(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,t1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	li	t1,1
	li	t2,0
	sw	t1,-808(a5)
	sw	t2,-804(a5)
	j	.L5
.L4:
	lbu	a4,-17(s0)
	lbu	t1,-18(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,t1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	li	t1,0
	li	t2,0
	sw	t1,-808(a5)
	sw	t2,-804(a5)
.L5:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L3:
	lbu	a4,-18(s0)
	li	a5,9
	bleu	a4,a5,.L6
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L2:
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L7
	sb	zero,-17(s0)
	j	.L8
.L11:
	sb	zero,-18(s0)
	j	.L9
.L10:
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	mv	a2,a5
	li	a3,0
	lbu	a5,-18(s0)
	andi	a5,a5,0xff
	mv	a6,a5
	li	a7,0
	lbu	t3,-17(s0)
	lbu	t4,-18(s0)
	add	a4,a2,a6
	mv	t1,a4
	sltu	t1,t1,a2
	add	a5,a3,a7
	add	t1,t1,a5
	mv	a5,t1
	mv	t1,a4
	mv	t2,a5
	mv	a5,t3
	slli	a5,a5,2
	add	a5,a5,t3
	slli	a5,a5,1
	add	a5,a5,t4
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	t1,-1608(a5)
	sw	t2,-1604(a5)
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L9:
	lbu	a4,-18(s0)
	li	a5,9
	bleu	a4,a5,.L10
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L8:
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L11
	sb	zero,-17(s0)
	j	.L12
.L15:
	sb	zero,-18(s0)
	j	.L13
.L14:
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,3
	add	a5,a3,a5
	li	a3,0
	li	a4,0
	sw	a3,1688(a5)
	sw	a4,1692(a5)
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L13:
	lbu	a4,-18(s0)
	li	a5,9
	bleu	a4,a5,.L14
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L12:
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L15
	sb	zero,-17(s0)
	j	.L16
.L21:
	sb	zero,-18(s0)
	j	.L17
.L20:
	sb	zero,-19(s0)
	j	.L18
.L19:
	lbu	a4,-17(s0)
	lbu	a2,-18(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,3
	add	a5,a3,a5
	lw	a6,1688(a5)
	lw	a7,1692(a5)
	lbu	a4,-17(s0)
	lbu	a3,-19(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,-808(a5)
	lw	a3,-804(a5)
	lbu	a4,-19(s0)
	lbu	t1,-18(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,t1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-1608(a5)
	lw	a5,-1604(a5)
	mul	t3,a3,a4
	mul	t1,a5,a2
	add	t1,t3,t1
	mul	t3,a2,a4
	mulhu	a1,a2,a4
	mv	a0,t3
	add	a5,t1,a1
	mv	a1,a5
	lbu	t1,-17(s0)
	lbu	t3,-18(s0)
	add	a4,a6,a0
	mv	a3,a4
	sltu	a3,a3,a6
	add	a5,a7,a1
	add	a3,a3,a5
	mv	a5,a3
	mv	a2,a4
	mv	a3,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	mv	a5,t1
	slli	a5,a5,2
	add	a5,a5,t1
	slli	a5,a5,1
	add	a5,a5,t3
	slli	a5,a5,3
	add	a5,a4,a5
	sw	a2,1688(a5)
	sw	a3,1692(a5)
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
.L18:
	lbu	a4,-19(s0)
	li	a5,9
	bleu	a4,a5,.L19
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L17:
	lbu	a4,-18(s0)
	li	a5,9
	bleu	a4,a5,.L20
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L16:
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L21
	sb	zero,-17(s0)
	j	.L22
.L27:
	sb	zero,-18(s0)
	j	.L23
.L26:
	lbu	a4,-17(s0)
	lbu	a3,-18(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a3
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,-1608(a5)
	lw	a3,-1604(a5)
	lbu	a4,-17(s0)
	lbu	a0,-18(s0)
	li	a5,-4096
	addi	a5,a5,-16
	add	a1,a5,s0
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a0
	slli	a5,a5,3
	add	a5,a1,a5
	lw	a4,1688(a5)
	lw	a5,1692(a5)
	mv	a0,a2
	mv	a1,a4
	bne	a0,a1,.L29
	beq	a3,a5,.L24
.L29:
	li	a5,1
	sb	a5,-20(s0)
.L24:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L23:
	lbu	a4,-18(s0)
	li	a5,9
	bleu	a4,a5,.L26
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L22:
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L27
	sb	zero,-20(s0)
	li	a5,0
	mv	a0,a5
	addi	sp,sp,400
	lw	s0,2028(sp)
	addi	sp,sp,2032
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
