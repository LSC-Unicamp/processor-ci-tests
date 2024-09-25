

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
addi	t0,t0,-124 # 2004 <test_1_res>
sb	zero,0(t0)
li	a6,-1
mv	t6,t0
sb	a6,0(t6)
sb	zero,-2(t0)
li	a5,1
mv	t5,t0
sb	a5,-2(t5)
sb	zero,3(t0)
li	a4,0
mv	t4,t0
sb	a4,3(t4)
sb	zero,-4(t0)
li	a3,2047
mv	t3,t0
sb	a3,-4(t3)
sb	zero,2(t0)
li	a2,0
mv	s11,t0
sb	a2,2(s11)
auipc	ra,0x2
addi	ra,ra,-192 # 2018 <test_2_res>
sb	zero,4(ra)
lui	a1,0x1
addi	a1,a1,-2048 # 800 <end_testcode+0x4dc>
mv	s10,ra
sb	a1,4(s10)
sb	zero,-1(ra)
lui	a0,0x7654
addi	a0,a0,801 # 7654321 <_end+0x765211d>
mv	s9,ra
sb	a0,-1(s9)
sb	zero,1(ra)
lui	s1,0x80000
addi	s1,s1,-1 # 7fffffff <_end+0x7fffddfb>
mv	s8,ra
sb	s1,1(s8)
sb	zero,0(ra)
li	s0,1
mv	s7,ra
sb	s0,0(s7)
sb	zero,-2(ra)
li	t2,-1
mv	s6,ra
sb	t2,-2(s6)
auipc	ra,0x2
addi	ra,ra,-272 # 202c <test_3_res>
sb	zero,3(ra)
lui	t1,0x1
addi	t1,t1,564 # 1234 <fromhost+0x134>
mv	s5,ra
sb	t1,3(s5)
sb	zero,-4(ra)
lui	t0,0x80000
mv	s4,ra
sb	t0,-4(s4)
sb	zero,2(ra)
lui	tp,0xfffff
addi	tp,tp,-564 # ffffedcc <_end+0xffffcbc8>
mv	s3,ra
sb	tp,2(s3)
sb	zero,4(ra)
li	gp,-1
mv	s2,ra
sb	gp,4(s2)
sb	zero,-1(ra)
li	sp,-2047
mv	a7,ra
sb	sp,-1(a7)
auipc	sp,0x2
addi	sp,sp,-348 # 2040 <test_4_res>
sb	zero,1(sp)
li	ra,0
mv	a6,sp
sb	ra,1(a6)
sb	zero,0(sp)
li	zero,-1
mv	a5,sp
sb	zero,0(a5)
sb	zero,-2(sp)
li	t6,1
mv	a4,sp
sb	t6,-2(a4)
sb	zero,3(sp)
li	t5,0
mv	a3,sp
sb	t5,3(a3)
sb	zero,-4(sp)
li	t4,2047
mv	a2,sp
sb	t4,-4(a2)
auipc	ra,0x2
addi	ra,ra,-416 # 2054 <test_5_res>
sb	zero,2(ra)
li	t3,0
mv	a1,ra
sb	t3,2(a1)
sb	zero,4(ra)
lui	s11,0x1
addi	s11,s11,-2048 # 800 <end_testcode+0x4dc>
mv	a0,ra
sb	s11,4(a0)
sb	zero,-1(ra)
lui	s10,0x7654
addi	s10,s10,801 # 7654321 <_end+0x765211d>
mv	s1,ra
sb	s10,-1(s1)
sb	zero,1(ra)
lui	s9,0x80000
addi	s9,s9,-1 # 7fffffff <_end+0x7fffddfb>
mv	s0,ra
sb	s9,1(s0)
sb	zero,0(ra)
li	s8,1
mv	t2,ra
sb	s8,0(t2)
auipc	ra,0x2
addi	ra,ra,-496 # 2068 <test_6_res>
sb	zero,-2(ra)
li	s7,-1
mv	t1,ra
sb	s7,-2(t1)
sb	zero,3(ra)
lui	s6,0x1
addi	s6,s6,564 # 1234 <fromhost+0x134>
mv	t0,ra
sb	s6,3(t0) # 80000003 <_end+0x7fffddff>
sb	zero,-4(ra)
lui	s5,0x80000
mv	tp,ra
sb	s5,-4(tp) # fffffffc <_end+0xffffddf8>
sb	zero,2(ra)
lui	s4,0xfffff
addi	s4,s4,-564 # ffffedcc <_end+0xffffcbc8>
mv	gp,ra
sb	s4,2(gp)
sb	zero,4(ra)
li	s3,-1
mv	sp,ra
sb	s3,4(sp)
auipc	sp,0x2
addi	sp,sp,-572 # 207c <test_7_res>
sb	zero,-1(sp)
li	s2,-2047
mv	ra,sp
sb	s2,-1(ra)
sb	zero,1(sp)
li	a7,0
mv	ra,sp
sb	a7,1(ra)
auipc	t0,0x2
addi	t0,t0,-736 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-612 # 2090 <end_signature>
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


