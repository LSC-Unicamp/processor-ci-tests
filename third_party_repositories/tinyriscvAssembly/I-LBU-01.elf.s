

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
auipc	t0,0x2
addi	t0,t0,-80 # 2030 <begin_signature>
auipc	t6,0x2
addi	t6,t6,-112 # 2018 <test_data>
lbu	zero,0(t6)
sw	zero,0(t0)
auipc	t5,0x2
addi	t5,t5,-128 # 2018 <test_data>
lbu	ra,-2(t5)
sw	ra,4(t0)
auipc	t4,0x2
addi	t4,t4,-144 # 2018 <test_data>
lbu	sp,3(t4)
sw	sp,8(t0)
auipc	t3,0x2
addi	t3,t3,-160 # 2018 <test_data>
lbu	gp,-4(t3)
sw	gp,12(t0)
auipc	s11,0x2
addi	s11,s11,-176 # 2018 <test_data>
lbu	tp,2(s11)
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-148 # 2044 <test_2_res>
auipc	s10,0x2
addi	s10,s10,-200 # 2018 <test_data>
lbu	t0,4(s10)
sw	t0,0(ra)
auipc	s9,0x2
addi	s9,s9,-216 # 2018 <test_data>
lbu	t1,-1(s9)
sw	t1,4(ra)
auipc	s8,0x2
addi	s8,s8,-232 # 2018 <test_data>
lbu	t2,1(s8)
sw	t2,8(ra)
auipc	s7,0x2
addi	s7,s7,-248 # 2018 <test_data>
lbu	s0,0(s7)
sw	s0,12(ra)
auipc	s6,0x2
addi	s6,s6,-264 # 2018 <test_data>
lbu	s1,-2(s6)
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-216 # 2058 <test_3_res>
auipc	s5,0x2
addi	s5,s5,-288 # 2018 <test_data>
lbu	a0,3(s5)
sw	a0,0(ra)
auipc	s4,0x2
addi	s4,s4,-304 # 2018 <test_data>
lbu	a1,-4(s4)
sw	a1,4(ra)
auipc	s3,0x2
addi	s3,s3,-320 # 2018 <test_data>
lbu	a2,2(s3)
sw	a2,8(ra)
auipc	s2,0x2
addi	s2,s2,-336 # 2018 <test_data>
lbu	a3,4(s2)
sw	a3,12(ra)
auipc	a7,0x2
addi	a7,a7,-352 # 2018 <test_data>
lbu	a4,-1(a7)
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-284 # 206c <test_4_res>
auipc	a6,0x2
addi	a6,a6,-376 # 2018 <test_data>
lbu	a5,1(a6)
sw	a5,0(sp)
auipc	a5,0x2
addi	a5,a5,-392 # 2018 <test_data>
lbu	a6,0(a5)
sw	a6,4(sp)
auipc	a4,0x2
addi	a4,a4,-408 # 2018 <test_data>
lbu	a7,-2(a4)
sw	a7,8(sp)
auipc	a3,0x2
addi	a3,a3,-424 # 2018 <test_data>
lbu	s2,3(a3)
sw	s2,12(sp)
auipc	a2,0x2
addi	a2,a2,-440 # 2018 <test_data>
lbu	s3,-4(a2)
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-352 # 2080 <test_5_res>
auipc	a1,0x2
addi	a1,a1,-464 # 2018 <test_data>
lbu	s4,2(a1)
sw	s4,0(ra)
auipc	a0,0x2
addi	a0,a0,-480 # 2018 <test_data>
lbu	s5,4(a0)
sw	s5,4(ra)
auipc	s1,0x2
addi	s1,s1,-496 # 2018 <test_data>
lbu	s6,-1(s1)
sw	s6,8(ra)
auipc	s0,0x2
addi	s0,s0,-512 # 2018 <test_data>
lbu	s7,1(s0)
sw	s7,12(ra)
auipc	t2,0x2
addi	t2,t2,-528 # 2018 <test_data>
lbu	s8,0(t2)
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-420 # 2094 <test_6_res>
auipc	t1,0x2
addi	t1,t1,-552 # 2018 <test_data>
lbu	s9,-2(t1)
sw	s9,0(ra)
auipc	t0,0x2
addi	t0,t0,-568 # 2018 <test_data>
lbu	s10,3(t0)
sw	s10,4(ra)
auipc	tp,0x2
addi	tp,tp,-584 # 2018 <test_data>
lbu	s11,-4(tp) # fffffffc <_end+0xffffddf8>
sw	s11,8(ra)
auipc	gp,0x2
addi	gp,gp,-600 # 2018 <test_data>
lbu	t3,2(gp)
sw	t3,12(ra)
auipc	sp,0x2
addi	sp,sp,-616 # 2018 <test_data>
lbu	t4,4(sp)
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-488 # 20a8 <test_7_res>
auipc	ra,0x2
addi	ra,ra,-640 # 2018 <test_data>
lbu	t5,-1(ra)
sw	t5,0(sp)
auipc	ra,0x2
addi	ra,ra,-656 # 2018 <test_data>
lbu	t6,1(ra)
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-648 # 2030 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-524 # 20c0 <end_signature>
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
 	unimp


