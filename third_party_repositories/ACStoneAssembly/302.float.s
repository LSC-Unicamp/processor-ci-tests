	.file	"302.float.c"
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
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-20(s0)
	fmv.s.x	fa5,zero
	fsw	fa5,-24(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsw	fa5,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	flw	fa5,-20(s0)
	fcvt.d.s	fa4,fa5
	lui	a5,%hi(.LC2)
	fld	fa5,%lo(.LC2)(a5)
	fmul.d	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fcvt.d.s	fa5,fa5
	fmul.d	fa4,fa4,fa5
	flw	fa3,-20(s0)
	lui	a5,%hi(.LC3)
	flw	fa5,%lo(.LC3)(a5)
	fmul.s	fa3,fa3,fa5
	flw	fa5,-24(s0)
	fmul.s	fa5,fa3,fa5
	fcvt.d.s	fa5,fa5
	fadd.d	fa5,fa4,fa5
	fcvt.s.d	fa5,fa5
	fsw	fa5,-20(s0)
	flw	fa5,-24(s0)
	fcvt.d.s	fa4,fa5
	lui	a5,%hi(.LC4)
	fld	fa5,%lo(.LC4)(a5)
	fdiv.d	fa5,fa4,fa5
	fcvt.s.d	fa5,fa5
	fsw	fa5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-20(s0)
	fadd.s	fa4,fa4,fa5
	flw	fa5,-20(s0)
	fadd.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fadd.s	fa4,fa4,fa5
	flw	fa5,-24(s0)
	fadd.s	fa4,fa4,fa5
	flw	fa5,-20(s0)
	fsub.s	fa4,fa4,fa5
	flw	fa3,-20(s0)
	flw	fa5,-24(s0)
	fmul.s	fa5,fa3,fa5
	fadd.s	fa5,fa5,fa5
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	flw	fa5,-20(s0)
	fsub.s	fa5,fa5,fa5
	fsw	fa5,-20(s0)
	lui	a5,%hi(.LC5)
	flw	fa5,%lo(.LC5)(a5)
	fsw	fa5,-20(s0)
	flw	fa4,-20(s0)
	lui	a5,%hi(.LC5)
	flw	fa5,%lo(.LC5)(a5)
	fsub.s	fa5,fa4,fa5
	fsw	fa5,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.word	1077936128
	.align	2
.LC1:
	.word	1091567616
	.align	3
.LC2:
	.word	-858993459
	.word	1073925324
	.align	2
.LC3:
	.word	1102577664
	.align	3
.LC4:
	.word	-1504956541
	.word	1073923594
	.align	2
.LC5:
	.word	1065353216
	.ident	"GCC: () 13.2.0"
