	.file	"401.double.c"
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
	fld	fa5,-24(s0)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC1)
	fld	fa5,%lo(.LC1)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa5,-24(s0)
	fadd.d	fa5,fa5,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
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
	.word	2130303779
	.word	1076173930
	.align	3
.LC1:
	.word	0
	.word	1073741824
	.ident	"GCC: () 13.2.0"
