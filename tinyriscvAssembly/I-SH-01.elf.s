

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
sh	zero,0(t0)
li	a6,-1
mv	t6,t0
sh	a6,0(t6)
sh	zero,-2(t0)
li	a5,1
mv	t5,t0
sh	a5,-2(t5)
sh	zero,2(t0)
li	a4,0
mv	t4,t0
sh	a4,2(t4)
sh	zero,-4(t0)
li	a3,2047
mv	t3,t0
sh	a3,-4(t3)
sh	zero,2(t0)
li	a2,0
mv	s11,t0
sh	a2,2(s11)
auipc	ra,0x2
addi	ra,ra,-192 # 2018 <test_2_res>
sh	zero,4(ra)
lui	a1,0x1
addi	a1,a1,-2048 # 800 <end_testcode+0x4dc>
mv	s10,ra
sh	a1,4(s10)
sh	zero,0(ra)
lui	a0,0x7654
addi	a0,a0,801 # 7654321 <_end+0x765211d>
mv	s9,ra
sh	a0,0(s9)
sh	zero,0(ra)
lui	s1,0x80000
addi	s1,s1,-1 # 7fffffff <_end+0x7fffddfb>
mv	s8,ra
sh	s1,0(s8)
sh	zero,0(ra)
li	s0,1
mv	s7,ra
sh	s0,0(s7)
sh	zero,-2(ra)
li	t2,-1
mv	s6,ra
sh	t2,-2(s6)
auipc	ra,0x2
addi	ra,ra,-272 # 202c <test_3_res>
sh	zero,2(ra)
lui	t1,0x1
addi	t1,t1,564 # 1234 <fromhost+0x134>
mv	s5,ra
sh	t1,2(s5)
sh	zero,-4(ra)
lui	t0,0x80000
mv	s4,ra
sh	t0,-4(s4)
sh	zero,2(ra)
lui	tp,0xfffff
addi	tp,tp,-564 # ffffedcc <_end+0xffffcbc8>
mv	s3,ra
sh	tp,2(s3)
sh	zero,4(ra)
li	gp,-1
mv	s2,ra
sh	gp,4(s2)
sh	zero,0(ra)
li	sp,-2047
mv	a7,ra
sh	sp,0(a7)
auipc	sp,0x2
addi	sp,sp,-348 # 2040 <test_4_res>
sh	zero,0(sp)
li	ra,0
mv	a6,sp
sh	ra,0(a6)
sh	zero,0(sp)
li	zero,-1
mv	a5,sp
sh	zero,0(a5)
sh	zero,-2(sp)
li	t6,1
mv	a4,sp
sh	t6,-2(a4)
sh	zero,2(sp)
li	t5,0
mv	a3,sp
sh	t5,2(a3)
sh	zero,-4(sp)
li	t4,2047
mv	a2,sp
sh	t4,-4(a2)
auipc	ra,0x2
addi	ra,ra,-416 # 2054 <test_5_res>
sh	zero,2(ra)
li	t3,0
mv	a1,ra
sh	t3,2(a1)
sh	zero,4(ra)
lui	s11,0x1
addi	s11,s11,-2048 # 800 <end_testcode+0x4dc>
mv	a0,ra
sh	s11,4(a0)
sh	zero,0(ra)
lui	s10,0x7654
addi	s10,s10,801 # 7654321 <_end+0x765211d>
mv	s1,ra
sh	s10,0(s1)
sh	zero,0(ra)
lui	s9,0x80000
addi	s9,s9,-1 # 7fffffff <_end+0x7fffddfb>
mv	s0,ra
sh	s9,0(s0)
sh	zero,0(ra)
li	s8,1
mv	t2,ra
sh	s8,0(t2)
auipc	ra,0x2
addi	ra,ra,-496 # 2068 <test_6_res>
sh	zero,-2(ra)
li	s7,-1
mv	t1,ra
sh	s7,-2(t1)
sh	zero,2(ra)
lui	s6,0x1
addi	s6,s6,564 # 1234 <fromhost+0x134>
mv	t0,ra
sh	s6,2(t0) # 80000002 <_end+0x7fffddfe>
sh	zero,-4(ra)
lui	s5,0x80000
mv	tp,ra
sh	s5,-4(tp) # fffffffc <_end+0xffffddf8>
sh	zero,2(ra)
lui	s4,0xfffff
addi	s4,s4,-564 # ffffedcc <_end+0xffffcbc8>
mv	gp,ra
sh	s4,2(gp)
sh	zero,4(ra)
li	s3,-1
mv	sp,ra
sh	s3,4(sp)
auipc	sp,0x2
addi	sp,sp,-572 # 207c <test_7_res>
sh	zero,0(sp)
li	s2,-2047
mv	ra,sp
sh	s2,0(ra)
sh	zero,0(sp)
li	a7,0
mv	ra,sp
sh	a7,0(ra)
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


