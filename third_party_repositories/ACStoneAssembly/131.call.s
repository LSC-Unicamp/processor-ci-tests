	.file	"131.call.c"
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
	addi	s0,sp,32
	li	a0,0
	call	funcmenos
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a0,0
	call	funcmais
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a0,-1
	call	funcmenos
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a0,-1
	call	funcmais
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a0,1
	call	funcmenos
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a0,1
	call	funcmais
	sw	a0,-20(s0)
	sw	zero,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	funcmenos
	.type	funcmenos, @function
funcmenos:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a5,a5,-1
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	funcmenos, .-funcmenos
	.align	2
	.globl	funcmais
	.type	funcmais, @function
funcmais:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	lw	a5,-20(s0)
	addi	a5,a5,1
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	funcmais, .-funcmais
	.ident	"GCC: () 13.2.0"
