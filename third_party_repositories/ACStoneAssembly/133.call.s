	.file	"133.call.c"
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
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	addi	s0,sp,32
	li	a0,25
	li	a1,0
	call	ulifatorial
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	li	a5,0
	li	a6,0
	mv	s2,a5
	mv	s3,a6
	sw	a5,-24(s0)
	sw	a6,-20(s0)
	li	a0,25
	li	a1,0
	call	slifatorial
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	mv	a5,s2
	mv	a6,s3
	sw	a5,-32(s0)
	sw	a6,-28(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	ulifatorial
	.type	ulifatorial, @function
ulifatorial:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	addi	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	bne	a5,zero,.L7
	lw	a5,-20(s0)
	bne	a5,zero,.L4
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L4
.L7:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	li	a0,-1
	li	a1,-1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	call	ulifatorial
	mv	a4,a0
	mv	a5,a1
	lw	a3,-24(s0)
	mul	a2,a3,a5
	lw	a3,-20(s0)
	mul	a3,a3,a4
	add	a2,a2,a3
	lw	a3,-24(s0)
	mul	a1,a3,a4
	mulhu	s3,a3,a4
	mv	s2,a1
	add	a5,a2,s3
	mv	s3,a5
	j	.L6
.L4:
	li	s2,1
	li	s3,0
.L6:
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	ulifatorial, .-ulifatorial
	.align	2
	.globl	slifatorial
	.type	slifatorial, @function
slifatorial:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	addi	s0,sp,32
	sw	a0,-24(s0)
	sw	a1,-20(s0)
	lw	a5,-20(s0)
	bgt	a5,zero,.L12
	lw	a5,-20(s0)
	bne	a5,zero,.L9
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L9
.L12:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	li	a0,-1
	li	a1,-1
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	call	slifatorial
	mv	a4,a0
	mv	a5,a1
	lw	a3,-24(s0)
	mul	a2,a3,a5
	lw	a3,-20(s0)
	mul	a3,a3,a4
	add	a2,a2,a3
	lw	a3,-24(s0)
	mul	a1,a3,a4
	mulhu	s3,a3,a4
	mv	s2,a1
	add	a5,a2,s3
	mv	s3,a5
	j	.L11
.L9:
	li	s2,1
	li	s3,0
.L11:
	mv	a4,s2
	mv	a5,s3
	mv	a0,a4
	mv	a1,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	lw	s2,20(sp)
	lw	s3,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	slifatorial, .-slifatorial
	.ident	"GCC: () 13.2.0"
