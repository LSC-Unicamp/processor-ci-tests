	.file	"303.float.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	compare_float
	.type	compare_float, @function
compare_float:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	fsw	fa0,-20(s0)
	fsw	fa1,-24(s0)
	flw	fa4,-20(s0)
	flw	fa5,-24(s0)
	feq.s	a5,fa4,fa5
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
	.size	compare_float, .-compare_float
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-20(s0)
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fsw	fa5,-24(s0)
	lui	a5,%hi(.LC1)
	flw	fa5,%lo(.LC1)(a5)
	fsw	fa5,-28(s0)
	lui	a5,%hi(.LC2)
	flw	fa5,%lo(.LC2)(a5)
	fsw	fa5,-32(s0)
	sb	zero,-33(s0)
	flw	fa5,-28(s0)
	fneg.s	fa4,fa5
	flw	fa5,-28(s0)
	fmul.s	fa4,fa4,fa5
	flw	fa5,-32(s0)
	fadd.s	fa5,fa4,fa5
	fmv.s.x	fa4,zero
	feq.s	a5,fa5,fa4
	beq	a5,zero,.L5
	li	a5,1
	sb	a5,-33(s0)
.L5:
	sb	zero,-33(s0)
	lui	a5,%hi(.LC3)
	flw	fa5,%lo(.LC3)(a5)
	fmv.s	fa1,fa5
	flw	fa0,-24(s0)
	call	compare_float
	mv	a5,a0
	bne	a5,zero,.L6
	li	a5,1
	sb	a5,-33(s0)
.L6:
	sb	zero,-33(s0)
	fmv.s.x	fa1,zero
	fmv.s.x	fa0,zero
	call	compare_float
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L7
	li	a5,1
	sb	a5,-33(s0)
.L7:
	sb	zero,-33(s0)
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fmv.s	fa1,fa5
	flw	fa0,-24(s0)
	call	compare_float
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L8
	li	a5,1
	sb	a5,-33(s0)
.L8:
	sb	zero,-33(s0)
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	fmv.s	fa1,fa5
	flw	fa0,-24(s0)
	call	compare_float
	mv	a4,a0
	li	a5,1
	bne	a4,a5,.L9
	li	a5,1
	sb	a5,-33(s0)
.L9:
	sb	zero,-33(s0)
	li	a5,0
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.word	1065353216
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1082130432
	.align	2
.LC3:
	.word	1065354055
	.ident	"GCC: () 13.2.0"
