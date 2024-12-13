	.file	"407.double.c"
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
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsd	fa5,-24(s0)
	fcvt.d.w	fa5,x0
	fsd	fa5,-32(s0)
	li	a5,2
	sw	a5,-36(s0)
	lui	a5,%hi(.LC1)
	fld	fa5,%lo(.LC1)(a5)
	fsd	fa5,-32(s0)
	lw	a5,-36(s0)
	fcvt.d.w	fa5,a5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-36(s0)
	fcvt.d.w	fa5,a5
	fld	fa4,-24(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-36(s0)
	fcvt.d.w	fa5,a5
	fld	fa4,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lw	a5,-36(s0)
	fcvt.d.w	fa4,a5
	fld	fa5,-32(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-24(s0)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-24(s0)
	lui	a5,%hi(.LC2)
	fld	fa5,%lo(.LC2)(a5)
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1074266112
	.align	3
.LC1:
	.word	0
	.word	1075970048
	.align	3
.LC2:
	.word	0
	.word	1072693248
	.ident	"GCC: () 13.2.0"
