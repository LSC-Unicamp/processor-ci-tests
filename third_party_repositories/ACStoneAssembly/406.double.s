	.file	"406.double.c"
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
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsd	fa5,-24(s0)
	fcvt.d.w	fa5,x0
	fsd	fa5,-32(s0)
	lui	a5,%hi(.LC1)
	fld	fa5,%lo(.LC1)(a5)
	fsd	fa5,-32(s0)
	fld	fa5,-24(s0)
	fneg.d	fa4,fa5
	fld	fa5,-24(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fsub.d	fa5,fa4,fa5
	fld	fa4,-24(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC2)
	fld	fa5,%lo(.LC2)(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-32(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa3,-24(s0)
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	fmul.d	fa3,fa3,fa5
	fld	fa5,-32(s0)
	fmul.d	fa5,fa3,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-32(s0)
	fcvt.d.w	fa4,x0
	fdiv.d	fa5,fa5,fa4
	fsd	fa5,-24(s0)
	fld	fa4,-32(s0)
	fld	fa5,-24(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-32(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-32(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-24(s0)
	fsub.d	fa4,fa4,fa5
	fld	fa3,-24(s0)
	fld	fa5,-32(s0)
	fmul.d	fa5,fa3,fa5
	fadd.d	fa5,fa5,fa5
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa5,fa5
	fsd	fa5,-24(s0)
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC5)
	fld	fa5,%lo(.LC5)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
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
	.word	-858993459
	.word	1073925324
	.align	3
.LC3:
	.word	0
	.word	1077346304
	.align	3
.LC4:
	.word	0
	.word	1072693248
	.align	3
.LC5:
	.word	-1717006681
	.word	989026242
	.ident	"GCC: () 13.2.0"
