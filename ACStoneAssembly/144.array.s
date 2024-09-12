	.file	"144.array.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	addi	s0,sp,128
	li	a5,-4096
	addi	a5,a5,1503
	sh	a5,-72(s0)
	li	a5,8192
	addi	a5,a5,1092
	sh	a5,-70(s0)
	li	a5,20480
	addi	a5,a5,1554
	sh	a5,-68(s0)
	li	a5,-4096
	addi	a5,a5,1605
	sh	a5,-66(s0)
	li	a5,-128
	sh	a5,-64(s0)
	li	a5,4096
	addi	a5,a5,733
	sh	a5,-62(s0)
	li	a5,16384
	addi	a5,a5,835
	sh	a5,-60(s0)
	li	a5,-4096
	addi	a5,a5,359
	sh	a5,-58(s0)
	sh	zero,-56(s0)
	li	a5,291
	sh	a5,-54(s0)
	li	a5,12288
	addi	a5,a5,769
	sh	a5,-52(s0)
	li	a5,4096
	addi	a5,a5,759
	sh	a5,-50(s0)
	li	a5,-32768
	addi	a5,a5,1861
	sh	a5,-48(s0)
	li	a5,-32768
	addi	a5,a5,646
	sh	a5,-46(s0)
	li	a5,4096
	addi	a5,a5,662
	sh	a5,-44(s0)
	li	a5,12288
	addi	a5,a5,1106
	sh	a5,-42(s0)
	li	a5,-8192
	addi	a5,a5,1023
	sh	a5,-40(s0)
	li	a5,8192
	addi	a5,a5,1110
	sh	a5,-38(s0)
	li	a5,24576
	addi	a5,a5,1827
	sh	a5,-36(s0)
	li	a5,28672
	addi	a5,a5,1296
	sh	a5,-34(s0)
	li	a5,5
	sh	a5,-32(s0)
	li	a5,-4096
	addi	a5,a5,1503
	sh	a5,-116(s0)
	li	a5,8192
	addi	a5,a5,1092
	sh	a5,-114(s0)
	li	a5,20480
	addi	a5,a5,1554
	sh	a5,-112(s0)
	li	a5,-4096
	addi	a5,a5,1605
	sh	a5,-110(s0)
	li	a5,-128
	sh	a5,-108(s0)
	li	a5,4096
	addi	a5,a5,733
	sh	a5,-106(s0)
	li	a5,16384
	addi	a5,a5,835
	sh	a5,-104(s0)
	li	a5,-4096
	addi	a5,a5,359
	sh	a5,-102(s0)
	sh	zero,-100(s0)
	li	a5,291
	sh	a5,-98(s0)
	li	a5,12288
	addi	a5,a5,769
	sh	a5,-96(s0)
	li	a5,4096
	addi	a5,a5,759
	sh	a5,-94(s0)
	li	a5,-32768
	addi	a5,a5,1861
	sh	a5,-92(s0)
	li	a5,-32768
	addi	a5,a5,646
	sh	a5,-90(s0)
	li	a5,4096
	addi	a5,a5,662
	sh	a5,-88(s0)
	li	a5,12288
	addi	a5,a5,1106
	sh	a5,-86(s0)
	li	a5,-8192
	addi	a5,a5,1023
	sh	a5,-84(s0)
	li	a5,8192
	addi	a5,a5,1110
	sh	a5,-82(s0)
	li	a5,24576
	addi	a5,a5,1827
	sh	a5,-80(s0)
	li	a5,28672
	addi	a5,a5,1296
	sh	a5,-78(s0)
	li	a5,5
	sh	a5,-76(s0)
	addi	a5,s0,-72
	li	a1,21
	mv	a0,a5
	call	ssiBubbleSort
	addi	a5,s0,-116
	li	a1,21
	mv	a0,a5
	call	usiBubbleSort
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lh	a4,-56(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lh	a5,-56(a5)
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
	slli	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lhu	a4,-100(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lhu	a5,-100(a5)
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
	lw	ra,124(sp)
	lw	s0,120(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.align	2
	.globl	ssiBubbleSort
	.type	ssiBubbleSort, @function
ssiBubbleSort:
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
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lh	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lh	a5,0(a5)
	bge	a4,a5,.L12
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	sh	a5,-26(s0)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lh	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a4,-26(s0)
	sh	a4,0(a5)
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
	.size	ssiBubbleSort, .-ssiBubbleSort
	.align	2
	.globl	usiBubbleSort
	.type	usiBubbleSort, @function
usiBubbleSort:
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
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lhu	a5,0(a5)
	bgeu	a4,a5,.L18
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a5,0(a5)
	sh	a5,-26(s0)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,1
	lw	a3,-36(s0)
	add	a5,a3,a5
	lhu	a4,0(a4)
	sh	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,1
	lw	a4,-36(s0)
	add	a5,a4,a5
	lhu	a4,-26(s0)
	sh	a4,0(a5)
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
	.size	usiBubbleSort, .-usiBubbleSort
	.ident	"GCC: () 13.2.0"
