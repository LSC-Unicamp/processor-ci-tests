	.file	"112.if.c"
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
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	sb	zero,-21(s0)
	li	a5,-1
	sb	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bleu	a4,a5,.L2
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L3
.L2:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L3:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgeu	a4,a5,.L4
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L5
.L4:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L5:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bne	a4,a5,.L6
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L7
.L6:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L7:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bltu	a4,a5,.L8
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L9
.L8:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L9:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgtu	a4,a5,.L10
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L11
.L10:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L11:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,-1
	sb	a5,-21(s0)
	li	a5,-2
	sb	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bleu	a4,a5,.L12
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L13
.L12:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L13:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgeu	a4,a5,.L14
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L15
.L14:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L15:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bne	a4,a5,.L16
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L17
.L16:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L17:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bltu	a4,a5,.L18
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L19
.L18:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L19:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgtu	a4,a5,.L20
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L21
.L20:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L21:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,1
	sb	a5,-21(s0)
	li	a5,2
	sb	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bleu	a4,a5,.L22
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L23
.L22:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L23:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgeu	a4,a5,.L24
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L25
.L24:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L25:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bne	a4,a5,.L26
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L27
.L26:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L27:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bltu	a4,a5,.L28
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L29
.L28:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L29:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgtu	a4,a5,.L30
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L31
.L30:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L31:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,15
	sb	a5,-21(s0)
	li	a5,15
	sb	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bleu	a4,a5,.L32
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L33
.L32:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L33:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgeu	a4,a5,.L34
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L35
.L34:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L35:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bne	a4,a5,.L36
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L37
.L36:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L37:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bltu	a4,a5,.L38
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L39
.L38:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L39:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgtu	a4,a5,.L40
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L41
.L40:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L41:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,1
	sb	a5,-21(s0)
	li	a5,-1
	sb	a5,-22(s0)
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bleu	a4,a5,.L42
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L43
.L42:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L43:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgeu	a4,a5,.L44
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L45
.L44:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L45:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bne	a4,a5,.L46
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L47
.L46:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L47:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bltu	a4,a5,.L48
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L49
.L48:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L49:
	lbu	a4,-21(s0)
	lbu	a5,-22(s0)
	bgtu	a4,a5,.L50
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L51
.L50:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L51:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
