	.file	"075.bool.c"
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
	lui	t5,%hi(.LC0)
	lw	t6,%lo(.LC0+4)(t5)
	lw	t5,%lo(.LC0)(t5)
	sw	t5,-24(s0)
	sw	t6,-20(s0)
	lw	t6,-24(s0)
	li	t5,-252645376
	addi	t5,t5,240
	or	t3,t6,t5
	lw	t6,-20(s0)
	li	t5,-252645376
	addi	t5,t5,240
	or	t4,t6,t5
	sw	t3,-32(s0)
	sw	t4,-28(s0)
	li	t5,0
	li	t6,0
	sw	t5,-32(s0)
	sw	t6,-28(s0)
	lw	t4,-24(s0)
	li	t3,-252645376
	addi	t3,t3,240
	and	t1,t4,t3
	lw	t4,-20(s0)
	li	t3,-252645376
	addi	t3,t3,240
	and	t2,t4,t3
	sw	t1,-32(s0)
	sw	t2,-28(s0)
	mv	t4,t5
	mv	t5,t6
	sw	t4,-32(s0)
	sw	t5,-28(s0)
	lw	t3,-24(s0)
	li	t1,-252645376
	addi	t1,t1,240
	xor	a6,t3,t1
	lw	t3,-20(s0)
	li	t1,-252645376
	addi	t1,t1,240
	xor	a7,t3,t1
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	mv	t1,t4
	mv	t2,t5
	sw	t1,-32(s0)
	sw	t2,-28(s0)
	lw	a7,-24(s0)
	li	a6,-252645376
	addi	a6,a6,240
	or	a2,a7,a6
	lw	a7,-20(s0)
	li	a6,-252645376
	addi	a6,a6,240
	or	a3,a7,a6
	not	a6,a2
	sw	a6,-32(s0)
	not	a3,a3
	sw	a3,-28(s0)
	mv	a6,t1
	mv	a7,t2
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	lw	a2,-24(s0)
	li	a3,-252645376
	addi	a3,a3,240
	and	a4,a2,a3
	lw	a2,-20(s0)
	li	a3,-252645376
	addi	a3,a3,240
	and	a5,a2,a3
	not	a3,a4
	sw	a3,-32(s0)
	not	a5,a5
	sw	a5,-28(s0)
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	lw	a4,-24(s0)
	li	a5,252645376
	addi	a5,a5,-241
	xor	a0,a4,a5
	lw	a4,-20(s0)
	li	a5,252645376
	addi	a5,a5,-241
	xor	a1,a4,a5
	sw	a0,-32(s0)
	sw	a1,-28(s0)
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	sw	a6,-32(s0)
	sw	a7,-28(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	-1431655766
	.word	-1431655766
	.align	3
.LC1:
	.word	252645135
	.word	252645135
	.ident	"GCC: () 13.2.0"