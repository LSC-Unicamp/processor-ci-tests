

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
addi	t0,t0,-128 # 2000 <begin_signature>
lui	t6,0xd
addi	t6,t6,-820 # cccc <_end+0xaac8>
auipc	a6,0x0
addi	a6,a6,20 # a4 <begin_testcode+0x24>
jr	a6
lui	t6,0x12
addi	t6,t6,939 # 123ab <_end+0x101a7>
sw	t6,0(t0)
lui	t5,0xd
addi	t5,t5,-820 # cccc <_end+0xaac8>
auipc	a5,0x0
addi	a5,a5,19 # c3 <begin_testcode+0x43>
jalr	1(a5)
lui	t5,0x12
addi	t5,t5,939 # 123ab <_end+0x101a7>
sw	t5,4(t0)
j	d0 <begin_testcode+0x50>
j	ec <begin_testcode+0x6c>
lui	t4,0xd
addi	t4,t4,-820 # cccc <_end+0xaac8>
auipc	a4,0x0
addi	a4,a4,-13 # cb <begin_testcode+0x4b>
jalr	sp,1(a4)
lui	t4,0x12
addi	t4,t4,939 # 123ab <_end+0x101a7>
sw	t4,8(t0)
lui	t3,0xd
addi	t3,t3,-820 # cccc <_end+0xaac8>
auipc	a3,0x0
addi	a3,a3,16 # 108 <begin_testcode+0x88>
jalr	gp,4(a3)
lui	t3,0x12
addi	t3,t3,939 # 123ab <_end+0x101a7>
sw	t3,12(t0)
lui	s11,0xd
addi	s11,s11,-820 # cccc <_end+0xaac8>
auipc	a2,0x0
addi	a2,a2,18 # 12a <begin_testcode+0xaa>
jalr	tp,2(a2)
lui	s11,0x12
addi	s11,s11,939 # 123ab <_end+0x101a7>
sw	s11,16(t0)
auipc	ra,0x2
addi	ra,ra,-284 # 2014 <test_2_res>
lui	s10,0xd
addi	s10,s10,-820 # cccc <_end+0xaac8>
auipc	a1,0x0
addi	a1,a1,16 # 150 <begin_testcode+0xd0>
jalr	t0,4(a1)
lui	s10,0x12
addi	s10,s10,939 # 123ab <_end+0x101a7>
sw	s10,0(ra)
lui	s9,0xd
addi	s9,s9,-820 # cccc <_end+0xaac8>
auipc	a0,0x0
addi	a0,a0,17 # 171 <begin_testcode+0xf1>
jalr	t1,3(a0)
lui	s9,0x12
addi	s9,s9,939 # 123ab <_end+0x101a7>
sw	s9,4(ra)
j	180 <begin_testcode+0x100>
j	19c <begin_testcode+0x11c>
lui	s8,0xd
addi	s8,s8,-820 # cccc <_end+0xaac8>
auipc	s1,0x0
addi	s1,s1,-14 # 17a <begin_testcode+0xfa>
jalr	t2,2(s1)
lui	s8,0x12
addi	s8,s8,939 # 123ab <_end+0x101a7>
sw	s8,8(ra)
lui	s7,0xd
addi	s7,s7,-820 # cccc <_end+0xaac8>
auipc	s0,0x0
addi	s0,s0,20 # 1bc <begin_testcode+0x13c>
jalr	s0,s0
lui	s7,0x12
addi	s7,s7,939 # 123ab <_end+0x101a7>
sw	s7,12(ra)
lui	s6,0xd
addi	s6,s6,-820 # cccc <_end+0xaac8>
auipc	t2,0x0
addi	t2,t2,19 # 1db <begin_testcode+0x15b>
jalr	s1,1(t2)
lui	s6,0x12
addi	s6,s6,939 # 123ab <_end+0x101a7>
sw	s6,16(ra)
auipc	ra,0x2
addi	ra,ra,-440 # 2028 <test_3_res>
lui	s5,0xd
addi	s5,s5,-820 # cccc <_end+0xaac8>
auipc	t1,0x0
addi	t1,t1,19 # 203 <begin_testcode+0x183>
jalr	a0,1(t1)
lui	s5,0x12
addi	s5,s5,939 # 123ab <_end+0x101a7>
sw	s5,0(ra)
lui	s4,0xd
addi	s4,s4,-820 # cccc <_end+0xaac8>
auipc	t0,0x0
addi	t0,t0,16 # 220 <begin_testcode+0x1a0>
jalr	a1,4(t0)
lui	s4,0x12
addi	s4,s4,939 # 123ab <_end+0x101a7>
sw	s4,4(ra)
j	230 <begin_testcode+0x1b0>
j	24c <begin_testcode+0x1cc>
lui	s3,0xd
addi	s3,s3,-820 # cccc <_end+0xaac8>
auipc	tp,0x0
addi	tp,tp,-14 # 22a <begin_testcode+0x1aa>
jalr	a2,2(tp) # 0 <_start>
lui	s3,0x12
addi	s3,s3,939 # 123ab <_end+0x101a7>
sw	s3,8(ra)
lui	s2,0xd
addi	s2,s2,-820 # cccc <_end+0xaac8>
auipc	gp,0x0
addi	gp,gp,16 # 268 <begin_testcode+0x1e8>
jalr	a3,4(gp)
lui	s2,0x12
addi	s2,s2,939 # 123ab <_end+0x101a7>
sw	s2,12(ra)
lui	a7,0xd
addi	a7,a7,-820 # cccc <_end+0xaac8>
auipc	sp,0x0
addi	sp,sp,17 # 289 <begin_testcode+0x209>
jalr	a4,3(sp)
lui	a7,0x12
addi	a7,a7,939 # 123ab <_end+0x101a7>
sw	a7,16(ra)
auipc	sp,0x2
addi	sp,sp,-596 # 203c <test_4_res>
lui	a6,0xd
addi	a6,a6,-820 # cccc <_end+0xaac8>
auipc	ra,0x0
addi	ra,ra,18 # 2b2 <begin_testcode+0x232>
jalr	a5,2(ra)
lui	a6,0x12
addi	a6,a6,939 # 123ab <_end+0x101a7>
sw	a6,0(sp)
lui	a5,0xd
addi	a5,a5,-820 # cccc <_end+0xaac8>
auipc	ra,0x0
addi	ra,ra,20 # 2d4 <begin_testcode+0x254>
jalr	a6,ra
lui	a5,0x12
addi	a5,a5,939 # 123ab <_end+0x101a7>
sw	a5,4(sp)
j	2e0 <begin_testcode+0x260>
j	2fc <begin_testcode+0x27c>
lui	a4,0xd
addi	a4,a4,-820 # cccc <_end+0xaac8>
auipc	t6,0x0
addi	t6,t6,-13 # 2db <begin_testcode+0x25b>
jalr	a7,1(t6)
lui	a4,0x12
addi	a4,a4,939 # 123ab <_end+0x101a7>
sw	a4,8(sp)
lui	a3,0xd
addi	a3,a3,-820 # cccc <_end+0xaac8>
auipc	t5,0x0
addi	t5,t5,19 # 31b <begin_testcode+0x29b>
jalr	s2,1(t5)
lui	a3,0x12
addi	a3,a3,939 # 123ab <_end+0x101a7>
sw	a3,12(sp)
lui	a2,0xd
addi	a2,a2,-820 # cccc <_end+0xaac8>
auipc	t4,0x0
addi	t4,t4,16 # 338 <begin_testcode+0x2b8>
jalr	s3,4(t4)
lui	a2,0x12
addi	a2,a2,939 # 123ab <_end+0x101a7>
sw	a2,16(sp)
auipc	ra,0x2
addi	ra,ra,-752 # 2050 <test_5_res>
lui	a1,0xd
addi	a1,a1,-820 # cccc <_end+0xaac8>
auipc	t3,0x0
addi	t3,t3,18 # 362 <begin_testcode+0x2e2>
jalr	s4,2(t3)
lui	a1,0x12
addi	a1,a1,939 # 123ab <_end+0x101a7>
sw	a1,0(ra)
lui	a0,0xd
addi	a0,a0,-820 # cccc <_end+0xaac8>
auipc	s11,0x0
addi	s11,s11,16 # 380 <begin_testcode+0x300>
jalr	s5,4(s11)
lui	a0,0x12
addi	a0,a0,939 # 123ab <_end+0x101a7>
sw	a0,4(ra)
j	390 <begin_testcode+0x310>
j	3ac <begin_testcode+0x32c>
lui	s1,0xd
addi	s1,s1,-820 # cccc <_end+0xaac8>
auipc	s10,0x0
addi	s10,s10,-15 # 389 <begin_testcode+0x309>
jalr	s6,3(s10)
lui	s1,0x12
addi	s1,s1,939 # 123ab <_end+0x101a7>
sw	s1,8(ra)
lui	s0,0xd
addi	s0,s0,-820 # cccc <_end+0xaac8>
auipc	s9,0x0
addi	s9,s9,18 # 3ca <begin_testcode+0x34a>
jalr	s7,2(s9)
lui	s0,0x12
addi	s0,s0,939 # 123ab <_end+0x101a7>
sw	s0,12(ra)
lui	t2,0xd
addi	t2,t2,-820 # cccc <_end+0xaac8>
auipc	s8,0x0
addi	s8,s8,20 # 3ec <begin_testcode+0x36c>
jalr	s8,s8
lui	t2,0x12
addi	t2,t2,939 # 123ab <_end+0x101a7>
sw	t2,16(ra)
auipc	ra,0x2
addi	ra,ra,-908 # 2064 <test_6_res>
lui	t1,0xd
addi	t1,t1,-820 # cccc <_end+0xaac8>
auipc	s7,0x0
addi	s7,s7,19 # 413 <begin_testcode+0x393>
jalr	s9,1(s7)
lui	t1,0x12
addi	t1,t1,939 # 123ab <_end+0x101a7>
sw	t1,0(ra)
lui	t0,0xd
addi	t0,t0,-820 # cccc <_end+0xaac8>
auipc	s6,0x0
addi	s6,s6,19 # 433 <begin_testcode+0x3b3>
jalr	s10,1(s6)
lui	t0,0x12
addi	t0,t0,939 # 123ab <_end+0x101a7>
sw	t0,4(ra)
j	440 <begin_testcode+0x3c0>
j	45c <begin_testcode+0x3dc>
lui	tp,0xd
addi	tp,tp,-820 # cccc <_end+0xaac8>
auipc	s5,0x0
addi	s5,s5,-16 # 438 <begin_testcode+0x3b8>
jalr	s11,4(s5)
lui	tp,0x12
addi	tp,tp,939 # 123ab <_end+0x101a7>
sw	tp,8(ra)
lui	gp,0xd
addi	gp,gp,-820 # cccc <_end+0xaac8>
auipc	s4,0x0
addi	s4,s4,18 # 47a <begin_testcode+0x3fa>
jalr	t3,2(s4)
lui	gp,0x12
addi	gp,gp,939 # 123ab <_end+0x101a7>
sw	gp,12(ra)
lui	sp,0xd
addi	sp,sp,-820 # cccc <_end+0xaac8>
auipc	s3,0x0
addi	s3,s3,16 # 498 <begin_testcode+0x418>
jalr	t4,4(s3)
lui	sp,0x12
addi	sp,sp,939 # 123ab <_end+0x101a7>
sw	sp,16(ra)
auipc	sp,0x2
addi	sp,sp,-1064 # 2078 <test_7_res>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
auipc	s2,0x0
addi	s2,s2,17 # 4c1 <begin_testcode+0x441>
jalr	t5,3(s2)
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(sp)
lui	zero,0xd
li	zero,-820
auipc	a7,0x0
addi	a7,a7,18 # 4e2 <begin_testcode+0x462>
jalr	t6,2(a7)
lui	zero,0x12
li	zero,939
sw	zero,4(sp)
auipc	t0,0x2
addi	t0,t0,-1256 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-1132 # 2090 <end_signature>
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


