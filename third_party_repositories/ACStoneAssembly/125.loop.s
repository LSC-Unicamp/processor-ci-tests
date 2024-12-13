	.file	"125.loop.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"ArchC - Architecture Description Language\n"
	.align	2
.LC1:
	.string	"Computer System Laboratory\n"
	.align	2
.LC2:
	.string	"Institute of Computing - UNICAMP\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,-28(s0)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	sw	a5,-32(s0)
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	sw	zero,-24(s0)
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L4:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L5
	sw	zero,-24(s0)
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L6
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L7
	sw	zero,-24(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: () 13.2.0"
