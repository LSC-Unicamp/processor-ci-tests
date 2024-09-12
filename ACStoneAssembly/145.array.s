	.file	"145.array.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-208
	sw	ra,204(sp)
	sw	s0,200(sp)
	addi	s0,sp,208
	li	a5,-231411712
	addi	a5,a5,1503
	sw	a5,-112(s0)
	li	a5,592519168
	addi	a5,a5,1092
	sw	a5,-108(s0)
	li	a5,878071808
	addi	a5,a5,1554
	sw	a5,-104(s0)
	li	a5,305459200
	addi	a5,a5,1605
	sw	a5,-100(s0)
	li	a5,-1996357632
	addi	a5,a5,-128
	sw	a5,-96(s0)
	li	a5,2022707200
	addi	a5,a5,733
	sw	a5,-92(s0)
	li	a5,591740928
	addi	a5,a5,835
	sw	a5,-88(s0)
	li	a5,-1989808128
	addi	a5,a5,359
	sw	a5,-84(s0)
	sw	zero,-80(s0)
	li	a5,1164378112
	addi	a5,a5,291
	sw	a5,-76(s0)
	li	a5,591736832
	addi	a5,a5,769
	sw	a5,-72(s0)
	li	a5,1412567040
	addi	a5,a5,759
	sw	a5,-68(s0)
	li	a5,1985249280
	addi	a5,a5,1861
	sw	a5,-64(s0)
	li	a5,591757312
	addi	a5,a5,646
	sw	a5,-60(s0)
	li	a5,-2023419904
	addi	a5,a5,662
	sw	a5,-56(s0)
	li	a5,-750440448
	addi	a5,a5,1106
	sw	a5,-52(s0)
	li	a5,-1003298816
	addi	a5,a5,1023
	sw	a5,-48(s0)
	li	a5,572661760
	addi	a5,a5,1110
	sw	a5,-44(s0)
	li	a5,305422336
	addi	a5,a5,1827
	sw	a5,-40(s0)
	li	a5,-732532736
	addi	a5,a5,1296
	sw	a5,-36(s0)
	li	a5,5
	sw	a5,-32(s0)
	li	a5,-231411712
	addi	a5,a5,1503
	sw	a5,-196(s0)
	li	a5,592519168
	addi	a5,a5,1092
	sw	a5,-192(s0)
	li	a5,878071808
	addi	a5,a5,1554
	sw	a5,-188(s0)
	li	a5,305459200
	addi	a5,a5,1605
	sw	a5,-184(s0)
	li	a5,-1996357632
	addi	a5,a5,-128
	sw	a5,-180(s0)
	li	a5,2022707200
	addi	a5,a5,733
	sw	a5,-176(s0)
	li	a5,591740928
	addi	a5,a5,835
	sw	a5,-172(s0)
	li	a5,-1989808128
	addi	a5,a5,359
	sw	a5,-168(s0)
	sw	zero,-164(s0)
	li	a5,1164378112
	addi	a5,a5,291
	sw	a5,-160(s0)
	li	a5,591736832
	addi	a5,a5,769
	sw	a5,-156(s0)
	li	a5,1412567040
	addi	a5,a5,759
	sw	a5,-152(s0)
	li	a5,1985249280
	addi	a5,a5,1861
	sw	a5,-148(s0)
	li	a5,591757312
	addi	a5,a5,646
	sw	a5,-144(s0)
	li	a5,-2023419904
	addi	a5,a5,662
	sw	a5,-140(s0)
	li	a5,-750440448
	addi	a5,a5,1106
	sw	a5,-136(s0)
	li	a5,-1003298816
	addi	a5,a5,1023
	sw	a5,-132(s0)
	li	a5,572661760
	addi	a5,a5,1110
	sw	a5,-128(s0)
	li	a5,305422336
	addi	a5,a5,1827
	sw	a5,-124(s0)
	li	a5,-732532736
	addi	a5,a5,1296
	sw	a5,-120(s0)
	li	a5,5
	sw	a5,-116(s0)
	addi	a5,s0,-112
	li	a1,21
	mv	a0,a5
	call	siBubbleSort
	addi	a5,s0,-196
	li	a1,21
	mv	a0,a5
	call	uiBubbleSort
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-96(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-96(a5)
	ble	a4,a5,.L3
	li	a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L4
	sw	zero,-28(s0)
	sw	zero,-20(s0)
	j	.L5
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-180(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-180(a5)
	bleu	a4,a5,.L6
	li	a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a4,-20(s0)
	li	a5,19
	ble	a4,a5,.L7
	li	a5,0
	mv	a0,a5
	lw	ra,204(sp)
	lw	s0,200(sp)
	addi	sp,sp,208
	jr	ra
	.size	main, .-main
	.align	2
	.globl	siBubbleSort
	.type	siBubbleSort, @function
siBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L10
.L14:
	sw	zero,-24(s0)
	j	.L11
.L13:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	bge	a4,a5,.L12
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L12:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L11:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L13
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	bge	a5,zero,.L14
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	siBubbleSort, .-siBubbleSort
	.align	2
	.globl	uiBubbleSort
	.type	uiBubbleSort, @function
uiBubbleSort:
	addi	sp,sp,-48
	sw	s0,44(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	j	.L16
.L20:
	sw	zero,-24(s0)
	j	.L17
.L19:
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	bgeu	a4,a5,.L18
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	lw	a3,-36(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	lw	a4,-36(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L18:
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L17:
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	blt	a4,a5,.L19
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L16:
	lw	a5,-20(s0)
	bge	a5,zero,.L20
	nop
	nop
	lw	s0,44(sp)
	addi	sp,sp,48
	jr	ra
	.size	uiBubbleSort, .-uiBubbleSort
	.ident	"GCC: () 13.2.0"
