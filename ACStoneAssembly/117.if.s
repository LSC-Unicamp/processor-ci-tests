	.file	"117.if.c"
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
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,0
	li	a6,0
	sw	a5,-32(s0)
	sw	a6,-28(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L73
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L2
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L2
.L73:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L4
.L2:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L4:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L74
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L5
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L5
.L74:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L7
.L5:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L7:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L8
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L8
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L9
.L8:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L9:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L10
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L75
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L10
.L75:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L12
.L10:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L12:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L13
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L76
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L13
.L76:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L15
.L13:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L15:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a4,-2
	li	a5,-1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L77
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L16
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L16
.L77:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L18
.L16:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L18:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L78
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L19
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L19
.L78:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L21
.L19:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L21:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L22
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L22
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L23
.L22:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L23:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L24
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L79
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L24
.L79:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L26
.L24:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L26:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L27
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L80
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L27
.L80:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L29
.L27:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L29:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a4,1
	li	a5,0
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a4,2
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L81
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L30
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L30
.L81:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L32
.L30:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L32:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L82
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L33
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L33
.L82:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L35
.L33:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L35:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L36
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L36
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L37
.L36:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L37:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L38
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L83
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L38
.L83:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L40
.L38:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L40:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L41
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L84
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L41
.L84:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L43
.L41:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L43:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a4,15
	li	a5,0
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a4,15
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L85
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L44
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L44
.L85:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L46
.L44:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L46:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L86
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L47
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L47
.L86:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L49
.L47:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L49:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L50
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L50
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L51
.L50:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L51:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L52
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L87
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L52
.L87:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L54
.L52:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L54:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L55
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L88
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L55
.L88:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L57
.L55:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L57:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a4,1
	li	a5,0
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	li	a4,-1
	li	a5,-1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L89
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L58
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L58
.L89:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L60
.L58:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L60:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L90
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L61
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L61
.L90:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L63
.L61:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L63:
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L64
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L64
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L65
.L64:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L65:
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bgt	a4,a5,.L66
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	bne	a4,a5,.L91
	lw	a4,-40(s0)
	lw	a5,-32(s0)
	bgtu	a4,a5,.L66
.L91:
	lbu	a5,-19(s0)
	addi	a5,a5,1
	sb	a5,-19(s0)
	j	.L68
.L66:
	lbu	a5,-18(s0)
	addi	a5,a5,1
	sb	a5,-18(s0)
.L68:
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bgt	a4,a5,.L69
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	bne	a4,a5,.L92
	lw	a4,-32(s0)
	lw	a5,-40(s0)
	bgtu	a4,a5,.L69
.L92:
	lbu	a5,-20(s0)
	addi	a5,a5,1
	sb	a5,-20(s0)
	j	.L71
.L69:
	lbu	a5,-17(s0)
	addi	a5,a5,1
	sb	a5,-17(s0)
.L71:
	sb	zero,-19(s0)
	sb	zero,-17(s0)
	sb	zero,-20(s0)
	sb	zero,-18(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
