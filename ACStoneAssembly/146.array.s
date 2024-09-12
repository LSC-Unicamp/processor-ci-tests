	.file	"146.array.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-368
	sw	ra,364(sp)
	sw	s0,360(sp)
	addi	s0,sp,368
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,-200(s0)
	sw	a5,-196(s0)
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,-192(s0)
	sw	a5,-188(s0)
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,-184(s0)
	sw	a5,-180(s0)
	li	a4,305459200
	addi	a4,a4,1605
	li	a5,0
	sw	a4,-176(s0)
	sw	a5,-172(s0)
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,-168(s0)
	sw	a5,-164(s0)
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,-160(s0)
	sw	a5,-156(s0)
	lui	a5,%hi(.LC5)
	lw	a4,%lo(.LC5)(a5)
	lw	a5,%lo(.LC5+4)(a5)
	sw	a4,-152(s0)
	sw	a5,-148(s0)
	lui	a5,%hi(.LC6)
	lw	a4,%lo(.LC6)(a5)
	lw	a5,%lo(.LC6+4)(a5)
	sw	a4,-144(s0)
	sw	a5,-140(s0)
	li	a2,0
	li	a3,0
	sw	a2,-136(s0)
	sw	a3,-132(s0)
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
	sw	a4,-128(s0)
	sw	a5,-124(s0)
	lui	a5,%hi(.LC8)
	lw	a4,%lo(.LC8)(a5)
	lw	a5,%lo(.LC8+4)(a5)
	sw	a4,-120(s0)
	sw	a5,-116(s0)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-112(s0)
	sw	a5,-108(s0)
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,-104(s0)
	sw	a5,-100(s0)
	lui	a5,%hi(.LC11)
	lw	a4,%lo(.LC11)(a5)
	lw	a5,%lo(.LC11+4)(a5)
	sw	a4,-96(s0)
	sw	a5,-92(s0)
	lui	a5,%hi(.LC12)
	lw	a4,%lo(.LC12)(a5)
	lw	a5,%lo(.LC12+4)(a5)
	sw	a4,-88(s0)
	sw	a5,-84(s0)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,-80(s0)
	sw	a5,-76(s0)
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
	sw	a4,-72(s0)
	sw	a5,-68(s0)
	lui	a5,%hi(.LC14)
	lw	a4,%lo(.LC14)(a5)
	lw	a5,%lo(.LC14+4)(a5)
	sw	a4,-64(s0)
	sw	a5,-60(s0)
	lui	a5,%hi(.LC15)
	lw	a4,%lo(.LC15)(a5)
	lw	a5,%lo(.LC15+4)(a5)
	sw	a4,-56(s0)
	sw	a5,-52(s0)
	lui	a5,%hi(.LC16)
	lw	a4,%lo(.LC16)(a5)
	lw	a5,%lo(.LC16+4)(a5)
	sw	a4,-48(s0)
	sw	a5,-44(s0)
	li	a4,5
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,-368(s0)
	sw	a5,-364(s0)
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,-360(s0)
	sw	a5,-356(s0)
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,-352(s0)
	sw	a5,-348(s0)
	li	a4,305459200
	addi	a4,a4,1605
	li	a5,0
	sw	a4,-344(s0)
	sw	a5,-340(s0)
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,-336(s0)
	sw	a5,-332(s0)
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,-328(s0)
	sw	a5,-324(s0)
	lui	a5,%hi(.LC5)
	lw	a4,%lo(.LC5)(a5)
	lw	a5,%lo(.LC5+4)(a5)
	sw	a4,-320(s0)
	sw	a5,-316(s0)
	lui	a5,%hi(.LC6)
	lw	a4,%lo(.LC6)(a5)
	lw	a5,%lo(.LC6+4)(a5)
	sw	a4,-312(s0)
	sw	a5,-308(s0)
	sw	a2,-304(s0)
	sw	a3,-300(s0)
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
	sw	a4,-296(s0)
	sw	a5,-292(s0)
	lui	a5,%hi(.LC8)
	lw	a4,%lo(.LC8)(a5)
	lw	a5,%lo(.LC8+4)(a5)
	sw	a4,-288(s0)
	sw	a5,-284(s0)
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,-280(s0)
	sw	a5,-276(s0)
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,-272(s0)
	sw	a5,-268(s0)
	lui	a5,%hi(.LC11)
	lw	a4,%lo(.LC11)(a5)
	lw	a5,%lo(.LC11+4)(a5)
	sw	a4,-264(s0)
	sw	a5,-260(s0)
	lui	a5,%hi(.LC12)
	lw	a4,%lo(.LC12)(a5)
	lw	a5,%lo(.LC12+4)(a5)
	sw	a4,-256(s0)
	sw	a5,-252(s0)
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,-248(s0)
	sw	a5,-244(s0)
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
	sw	a4,-240(s0)
	sw	a5,-236(s0)
	lui	a5,%hi(.LC14)
	lw	a4,%lo(.LC14)(a5)
	lw	a5,%lo(.LC14+4)(a5)
	sw	a4,-232(s0)
	sw	a5,-228(s0)
	lui	a5,%hi(.LC15)
	lw	a4,%lo(.LC15)(a5)
	lw	a5,%lo(.LC15+4)(a5)
	sw	a4,-224(s0)
	sw	a5,-220(s0)
	lui	a5,%hi(.LC16)
	lw	a4,%lo(.LC16)(a5)
	lw	a5,%lo(.LC16+4)(a5)
	sw	a4,-216(s0)
	sw	a5,-212(s0)
	li	a4,5
	li	a5,0
	sw	a4,-208(s0)
	sw	a5,-204(s0)
	addi	a5,s0,-200
	li	a1,21
	mv	a0,a5
	call	sliBubbleSort
	addi	a5,s0,-368
	li	a1,21
	mv	a0,a5
	call	uliBubbleSort
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L5:
	lw	a5,-20(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,-184(a5)
	lw	a3,-180(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-184(a5)
	lw	a5,-180(a5)
	mv	a0,a3
	mv	a1,a5
	bgt	a0,a1,.L11
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L3
	mv	a3,a2
	mv	a5,a4
	bleu	a3,a5,.L3
.L11:
	li	a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L5
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	j	.L6
.L9:
	lw	a5,-20(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,-352(a5)
	lw	a3,-348(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-352(a5)
	lw	a5,-348(a5)
	mv	a0,a3
	mv	a1,a5
	bgtu	a0,a1,.L12
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L7
	mv	a3,a2
	mv	a5,a4
	bleu	a3,a5,.L7
.L12:
	li	a5,1
	sw	a5,-28(s0)
.L7:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L9
	li	a5,0
	mv	a0,a5
	lw	ra,364(sp)
	lw	s0,360(sp)
	addi	sp,sp,368
	jr	ra
	.size	main, .-main
	.align	2
	.globl	sliBubbleSort
	.type	sliBubbleSort, @function
sliBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L14
.L19:
	sw	zero,-24(s0)
	j	.L15
.L18:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-24(s0)
	slli	a3,a3,3
	lw	a2,-36(s0)
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a3
	mv	a1,a5
	bgt	a0,a1,.L20
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L16
	mv	a3,a2
	mv	a5,a4
	bleu	a3,a5,.L16
.L20:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	addi	a4,a4,1
	slli	a4,a4,3
	lw	a3,-36(s0)
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a3,a4,a5
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
.L16:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L15:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L18
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L14:
	lw	a5,-20(s0)
	bge	a5,zero,.L19
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	sliBubbleSort, .-sliBubbleSort
	.align	2
	.globl	uliBubbleSort
	.type	uliBubbleSort, @function
uliBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L22
.L27:
	sw	zero,-24(s0)
	j	.L23
.L26:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-24(s0)
	slli	a3,a3,3
	lw	a2,-36(s0)
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a3
	mv	a1,a5
	bgtu	a0,a1,.L28
	mv	a0,a3
	mv	a1,a5
	bne	a0,a1,.L24
	mv	a3,a2
	mv	a5,a4
	bleu	a3,a5,.L24
.L28:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,-32(s0)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-24(s0)
	addi	a4,a4,1
	slli	a4,a4,3
	lw	a3,-36(s0)
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-24(s0)
	slli	a5,a5,3
	lw	a4,-36(s0)
	add	a3,a4,a5
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
.L24:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L23:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L26
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L22:
	lw	a5,-20(s0)
	bge	a5,zero,.L27
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	uliBubbleSort, .-uliBubbleSort
	.section	.rodata
	.align	3
.LC0:
	.word	-231410209
	.word	-184343739
	.align	3
.LC1:
	.word	592520260
	.word	-744163807
	.align	3
.LC2:
	.word	878073362
	.word	-1737088460
	.align	3
.LC3:
	.word	-1996357760
	.word	591751049
	.align	3
.LC4:
	.word	2022707933
	.word	2022724658
	.align	3
.LC5:
	.word	591741763
	.word	305419896
	.align	3
.LC6:
	.word	-1989807769
	.word	-1996004061
	.align	3
.LC7:
	.word	1164378403
	.word	1159939448
	.align	3
.LC8:
	.word	591737601
	.word	159846964
	.align	3
.LC9:
	.word	1412567799
	.word	1450707335
	.align	3
.LC10:
	.word	1985251141
	.word	-2041310668
	.align	3
.LC11:
	.word	591757958
	.word	1172513076
	.align	3
.LC12:
	.word	-2023419242
	.word	-231451032
	.align	3
.LC13:
	.word	43332690
	.word	-750426295
	.align	3
.LC14:
	.word	572662870
	.word	591751049
	.align	3
.LC15:
	.word	305424163
	.word	-2004285050
	.align	3
.LC16:
	.word	-732531440
	.word	305419315
	.ident	"GCC: () 13.2.0"
