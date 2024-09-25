

<_start>:
j	4c <reset_vector>

<trap_vector>:
csrr	t5,mcause
li	t6,8
beq	t5,t6,40 <write_tohost>
li	t6,9
beq	t5,t6,40 <write_tohost>
li	t6,11
beq	t5,t6,40 <write_tohost>
auipc	t5,0x0
addi	t5,t5,-32 # 0 <_start>
beqz	t5,30 <trap_vector+0x2c>
jr	t5
csrr	t5,mcause
bgez	t5,3c <handle_exception>
j	3c <handle_exception>

<handle_exception>:
ori	gp,gp,1337

<write_tohost>:
auipc	t5,0x1
sw	gp,-64(t5) # 1000 <tohost>
j	40 <write_tohost>

<reset_vector>:
li	gp,0
auipc	t0,0x0
addi	t0,t0,-76 # 4 <trap_vector>
csrw	mtvec,t0
csrwi	mstatus,0
auipc	t0,0x0
addi	t0,t0,32 # 80 <begin_testcode>
csrw	mepc,t0
li	t0,0
lui	t1,0x10000
addi	t1,t1,16 # 10000010 <_end+0xfffde0c>
sw	t0,0(t1)
mret

<begin_testcode>:
auipc	ra,0x2
addi	ra,ra,-128 # 2000 <test_A1_data>
auipc	sp,0x2
addi	sp,sp,-88 # 2030 <begin_signature>
lw	gp,0(ra)
li	tp,0
li	t0,1
li	t1,-1
lui	t2,0x80000
addi	t2,t2,-1 # 7fffffff <_end+0x7fffddfb>
lui	s0,0x80000
add	tp,gp,tp
add	t0,gp,t0
add	t1,gp,t1
add	t2,gp,t2
add	s0,gp,s0
sw	gp,0(sp)
sw	tp,4(sp)
sw	t0,8(sp)
sw	t1,12(sp)
sw	t2,16(sp)
sw	s0,20(sp)
auipc	ra,0x2
addi	ra,ra,-212 # 2004 <test_A2_data>
auipc	sp,0x2
addi	sp,sp,-152 # 2048 <test_A2_res>
lw	s0,0(ra)
li	s1,0
li	a0,1
li	a1,-1
lui	a2,0x80000
addi	a2,a2,-1 # 7fffffff <_end+0x7fffddfb>
lui	a3,0x80000
add	s1,s0,s1
add	a0,s0,a0
add	a1,s0,a1
add	a2,s0,a2
add	a3,s0,a3
sw	s0,0(sp)
sw	s1,4(sp)
sw	a0,8(sp)
sw	a1,12(sp)
sw	a2,16(sp)
sw	a3,20(sp)
auipc	ra,0x2
addi	ra,ra,-296 # 2008 <test_A3_data>
auipc	sp,0x2
addi	sp,sp,-216 # 2060 <test_A3_res>
lw	a3,0(ra)
li	a4,0
li	a5,1
li	a6,-1
lui	a7,0x80000
addi	a7,a7,-1 # 7fffffff <_end+0x7fffddfb>
lui	s2,0x80000
add	a4,a3,a4
add	a5,a3,a5
add	a6,a3,a6
add	a7,a3,a7
add	s2,a3,s2
sw	a3,0(sp)
sw	a4,4(sp)
sw	a5,8(sp)
sw	a6,12(sp)
sw	a7,16(sp)
sw	s2,20(sp)
auipc	ra,0x2
addi	ra,ra,-380 # 200c <test_A4_data>
auipc	sp,0x2
addi	sp,sp,-280 # 2078 <test_A4_res>
lw	s2,0(ra)
li	s3,0
li	s4,1
li	s5,-1
lui	s6,0x80000
addi	s6,s6,-1 # 7fffffff <_end+0x7fffddfb>
lui	s7,0x80000
add	s3,s2,s3
add	s4,s2,s4
add	s5,s2,s5
add	s6,s2,s6
add	s7,s2,s7
sw	s2,0(sp)
sw	s3,4(sp)
sw	s4,8(sp)
sw	s5,12(sp)
sw	s6,16(sp)
sw	s7,20(sp)
auipc	ra,0x2
addi	ra,ra,-464 # 2010 <test_A5_data>
auipc	sp,0x2
addi	sp,sp,-344 # 2090 <test_A5_res>
lw	s7,0(ra)
li	s8,0
li	s9,1
li	s10,-1
lui	s11,0x80000
addi	s11,s11,-1 # 7fffffff <_end+0x7fffddfb>
lui	t3,0x80000
add	s8,s7,s8
add	s9,s7,s9
add	s10,s7,s10
add	s11,s7,s11
add	t3,s7,t3
sw	s7,0(sp)
sw	s8,4(sp)
sw	s9,8(sp)
sw	s10,12(sp)
sw	s11,16(sp)
sw	t3,20(sp)
auipc	s9,0x2
addi	s9,s9,-548 # 2014 <test_B_data>
auipc	s10,0x2
addi	s10,s10,-408 # 20a8 <test_B_res>
lw	t3,0(s9)
li	s11,1
add	t4,t3,s11
add	t5,t4,s11
add	t6,t5,s11
add	ra,t6,s11
add	sp,ra,s11
add	gp,sp,s11
sw	s11,0(s10)
sw	t3,4(s10)
sw	t4,8(s10)
sw	t5,12(s10)
sw	t6,16(s10)
sw	ra,20(s10)
sw	sp,24(s10)
sw	gp,28(s10)
auipc	ra,0x2
addi	ra,ra,-624 # 2018 <test_C_data>
auipc	sp,0x2
addi	sp,sp,-456 # 20c8 <test_C_res>
lw	t3,0(ra)
lui	s11,0xf7ff9
addi	s11,s11,-2024 # f7ff8818 <_end+0xf7ff6614>
add	zero,t3,s11
sw	zero,0(sp)
auipc	ra,0x2
addi	ra,ra,-656 # 201c <test_D_data>
auipc	sp,0x2
addi	sp,sp,-488 # 20cc <test_D_res>
lw	t3,0(ra)
lui	s11,0xf7ff9
addi	s11,s11,-2024 # f7ff8818 <_end+0xf7ff6614>
add	zero,t3,s11
add	t0,zero,zero
sw	zero,0(sp)
sw	t0,4(sp)
auipc	ra,0x2
addi	ra,ra,-696 # 2020 <test_E_data>
auipc	sp,0x2
addi	sp,sp,-524 # 20d4 <test_E_res>
lw	gp,0(ra)
add	tp,gp,zero
add	t0,tp,zero
add	t1,zero,t0
add	a4,t1,zero
add	a5,a4,zero
add	a6,a5,zero
add	s9,zero,a6
add	s10,zero,s9
add	s11,s10,zero
sw	tp,0(sp)
sw	s10,4(sp)
sw	s11,8(sp)
auipc	t0,0x2
addi	t0,t0,-748 # 2030 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-592 # 20e0 <end_signature>
lui	t1,0x10000
addi	t1,t1,12 # 1000000c <_end+0xfffde08>
sw	t0,0(t1)
li	t0,1
lui	t1,0x10000
addi	t1,t1,16 # 10000010 <_end+0xfffde0c>
sw	t0,0(t1)
nop
li	gp,1
ecall

<end_testcode>:
unimp


