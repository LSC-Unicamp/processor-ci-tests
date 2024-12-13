	.file	"201.atomic.c"
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
	sw	zero,-20(s0)
	li	a5,1
	addi	a4,s0,-20
	fence iorw,ow; amoadd.w.aq zero,a5,0(a4)
	li	a5,1
	neg	a5,a5
	addi	a4,s0,-20
	fence iorw,ow; amoadd.w.aq zero,a5,0(a4)
	li	a5,15
	addi	a4,s0,-20
	fence iorw,ow; amoor.w.aq zero,a5,0(a4)
	li	a5,15
	addi	a4,s0,-20
	fence iorw,ow; amoadd.w.aq zero,a5,0(a4)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
