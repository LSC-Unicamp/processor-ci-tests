	.file	"403.double.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	compare_double
	.type	compare_double, @function
compare_double:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	feq.d	a5,fa4,fa5
	beq	a5,zero,.L2
	li	a5,1
	j	.L3
.L2:
	li	a5,0
.L3:
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	compare_double, .-compare_double
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsd	fa5,-24(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fsd	fa5,-32(s0)
	lui	a5,%hi(.LC1)
	fld	fa5,%lo(.LC1)(a5)
	fsd	fa5,-40(s0)
	lui	a5,%hi(.LC2)
	fld	fa5,%lo(.LC2)(a5)
	fsd	fa5,-48(s0)
	sb	zero,-49(s0)
	fld	fa5,-40(s0)
	fneg.d	fa4,fa5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fadd.d	fa5,fa4,fa5
	fcvt.d.w	fa4,x0
	feq.d	a5,fa5,fa4
	beq	a5,zero,.L5
	li	a5,1
	sb	a5,-49(s0)
.L5:
	sb	zero,-49(s0)
	lui	a5,%hi(.LC3)
	fld	fa5,%lo(.LC3)(a5)
	fmv.d	fa1,fa5
	fld	fa0,-32(s0)
	call	compare_double
	mv	a5,a0
	bne	a5,zero,.L6
	li	a5,1
	sb	a5,-49(s0)
.L6:
	sb	zero,-49(s0)
	fcvt.d.w	fa1,x0
	fcvt.d.w	fa0,x0
	call	compare_double
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L7
	li	a5,1
	sb	a5,-49(s0)
.L7:
	sb	zero,-49(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fmv.d	fa1,fa5
	fld	fa0,-32(s0)
	call	compare_double
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L8
	li	a5,1
	sb	a5,-49(s0)
.L8:
	sb	zero,-49(s0)
	lui	a5,%hi(.LC0)
	fld	fa5,%lo(.LC0)(a5)
	fmv.d	fa1,fa5
	fld	fa0,-32(s0)
	call	compare_double
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L9
	li	a5,1
	sb	a5,-49(s0)
.L9:
	sb	zero,-49(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,60(sp)
	lw	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	1073741824
	.align	3
.LC2:
	.word	0
	.word	1074790400
	.align	3
.LC3:
	.word	-611603343
	.word	1072693352
	.ident	"GCC: () 13.2.0"
