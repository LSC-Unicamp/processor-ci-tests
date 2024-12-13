

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
lui	zero,0xd
li	zero,-820
jal	t6,9c <begin_testcode+0x1c>
lui	zero,0x12
li	zero,939
sw	zero,0(t0)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
jal	t5,b4 <begin_testcode+0x34>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(t0)
j	c0 <begin_testcode+0x40>
j	d4 <begin_testcode+0x54>
lui	sp,0xd
addi	sp,sp,-820 # cccc <_end+0xaac8>
jal	t4,bc <begin_testcode+0x3c>
lui	sp,0x12
addi	sp,sp,939 # 123ab <_end+0x101a7>
sw	sp,8(t0)
lui	gp,0xd
addi	gp,gp,-820 # cccc <_end+0xaac8>
jal	t3,ec <begin_testcode+0x6c>
lui	gp,0x12
addi	gp,gp,939 # 123ab <_end+0x101a7>
sw	gp,12(t0)
lui	tp,0xd
addi	tp,tp,-820 # cccc <_end+0xaac8>
jal	s11,104 <begin_testcode+0x84>
lui	tp,0x12
addi	tp,tp,939 # 123ab <_end+0x101a7>
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-244 # 2014 <test_2_res>
lui	t0,0xd
addi	t0,t0,-820 # cccc <_end+0xaac8>
jal	s10,124 <begin_testcode+0xa4>
lui	t0,0x12
addi	t0,t0,939 # 123ab <_end+0x101a7>
sw	t0,0(ra)
lui	t1,0xd
addi	t1,t1,-820 # cccc <_end+0xaac8>
jal	s9,13c <begin_testcode+0xbc>
lui	t1,0x12
addi	t1,t1,939 # 123ab <_end+0x101a7>
sw	t1,4(ra)
j	148 <begin_testcode+0xc8>
j	15c <begin_testcode+0xdc>
lui	t2,0xd
addi	t2,t2,-820 # cccc <_end+0xaac8>
jal	s8,144 <begin_testcode+0xc4>
lui	t2,0x12
addi	t2,t2,939 # 123ab <_end+0x101a7>
sw	t2,8(ra)
lui	s0,0xd
addi	s0,s0,-820 # cccc <_end+0xaac8>
jal	s7,174 <begin_testcode+0xf4>
lui	s0,0x12
addi	s0,s0,939 # 123ab <_end+0x101a7>
sw	s0,12(ra)
lui	s1,0xd
addi	s1,s1,-820 # cccc <_end+0xaac8>
jal	s6,18c <begin_testcode+0x10c>
lui	s1,0x12
addi	s1,s1,939 # 123ab <_end+0x101a7>
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-360 # 2028 <test_3_res>
lui	a0,0xd
addi	a0,a0,-820 # cccc <_end+0xaac8>
jal	s5,1ac <begin_testcode+0x12c>
lui	a0,0x12
addi	a0,a0,939 # 123ab <_end+0x101a7>
sw	a0,0(ra)
lui	a1,0xd
addi	a1,a1,-820 # cccc <_end+0xaac8>
jal	s4,1c4 <begin_testcode+0x144>
lui	a1,0x12
addi	a1,a1,939 # 123ab <_end+0x101a7>
sw	a1,4(ra)
j	1d0 <begin_testcode+0x150>
j	1e4 <begin_testcode+0x164>
lui	a2,0xd
addi	a2,a2,-820 # cccc <_end+0xaac8>
jal	s3,1cc <begin_testcode+0x14c>
lui	a2,0x12
addi	a2,a2,939 # 123ab <_end+0x101a7>
sw	a2,8(ra)
lui	a3,0xd
addi	a3,a3,-820 # cccc <_end+0xaac8>
jal	s2,1fc <begin_testcode+0x17c>
lui	a3,0x12
addi	a3,a3,939 # 123ab <_end+0x101a7>
sw	a3,12(ra)
lui	a4,0xd
addi	a4,a4,-820 # cccc <_end+0xaac8>
jal	a7,214 <begin_testcode+0x194>
lui	a4,0x12
addi	a4,a4,939 # 123ab <_end+0x101a7>
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-476 # 203c <test_4_res>
lui	a5,0xd
addi	a5,a5,-820 # cccc <_end+0xaac8>
jal	a6,234 <begin_testcode+0x1b4>
lui	a5,0x12
addi	a5,a5,939 # 123ab <_end+0x101a7>
sw	a5,0(sp)
lui	a6,0xd
addi	a6,a6,-820 # cccc <_end+0xaac8>
jal	a5,24c <begin_testcode+0x1cc>
lui	a6,0x12
addi	a6,a6,939 # 123ab <_end+0x101a7>
sw	a6,4(sp)
j	258 <begin_testcode+0x1d8>
j	26c <begin_testcode+0x1ec>
lui	a7,0xd
addi	a7,a7,-820 # cccc <_end+0xaac8>
jal	a4,254 <begin_testcode+0x1d4>
lui	a7,0x12
addi	a7,a7,939 # 123ab <_end+0x101a7>
sw	a7,8(sp)
lui	s2,0xd
addi	s2,s2,-820 # cccc <_end+0xaac8>
jal	a3,284 <begin_testcode+0x204>
lui	s2,0x12
addi	s2,s2,939 # 123ab <_end+0x101a7>
sw	s2,12(sp)
lui	s3,0xd
addi	s3,s3,-820 # cccc <_end+0xaac8>
jal	a2,29c <begin_testcode+0x21c>
lui	s3,0x12
addi	s3,s3,939 # 123ab <_end+0x101a7>
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-592 # 2050 <test_5_res>
lui	s4,0xd
addi	s4,s4,-820 # cccc <_end+0xaac8>
jal	a1,2bc <begin_testcode+0x23c>
lui	s4,0x12
addi	s4,s4,939 # 123ab <_end+0x101a7>
sw	s4,0(ra)
lui	s5,0xd
addi	s5,s5,-820 # cccc <_end+0xaac8>
jal	a0,2d4 <begin_testcode+0x254>
lui	s5,0x12
addi	s5,s5,939 # 123ab <_end+0x101a7>
sw	s5,4(ra)
j	2e0 <begin_testcode+0x260>
j	2f4 <begin_testcode+0x274>
lui	s6,0xd
addi	s6,s6,-820 # cccc <_end+0xaac8>
jal	s1,2dc <begin_testcode+0x25c>
lui	s6,0x12
addi	s6,s6,939 # 123ab <_end+0x101a7>
sw	s6,8(ra)
lui	s7,0xd
addi	s7,s7,-820 # cccc <_end+0xaac8>
jal	s0,30c <begin_testcode+0x28c>
lui	s7,0x12
addi	s7,s7,939 # 123ab <_end+0x101a7>
sw	s7,12(ra)
lui	s8,0xd
addi	s8,s8,-820 # cccc <_end+0xaac8>
jal	t2,324 <begin_testcode+0x2a4>
lui	s8,0x12
addi	s8,s8,939 # 123ab <_end+0x101a7>
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-708 # 2064 <test_6_res>
lui	s9,0xd
addi	s9,s9,-820 # cccc <_end+0xaac8>
jal	t1,344 <begin_testcode+0x2c4>
lui	s9,0x12
addi	s9,s9,939 # 123ab <_end+0x101a7>
sw	s9,0(ra)
lui	s10,0xd
addi	s10,s10,-820 # cccc <_end+0xaac8>
jal	t0,35c <begin_testcode+0x2dc>
lui	s10,0x12
addi	s10,s10,939 # 123ab <_end+0x101a7>
sw	s10,4(ra)
j	368 <begin_testcode+0x2e8>
j	37c <begin_testcode+0x2fc>
lui	s11,0xd
addi	s11,s11,-820 # cccc <_end+0xaac8>
jal	tp,364 <begin_testcode+0x2e4>
lui	s11,0x12
addi	s11,s11,939 # 123ab <_end+0x101a7>
sw	s11,8(ra)
lui	t3,0xd
addi	t3,t3,-820 # cccc <_end+0xaac8>
jal	gp,394 <begin_testcode+0x314>
lui	t3,0x12
addi	t3,t3,939 # 123ab <_end+0x101a7>
sw	t3,12(ra)
lui	t4,0xd
addi	t4,t4,-820 # cccc <_end+0xaac8>
jal	sp,3ac <begin_testcode+0x32c>
lui	t4,0x12
addi	t4,t4,939 # 123ab <_end+0x101a7>
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-824 # 2078 <test_7_res>
lui	t5,0xd
addi	t5,t5,-820 # cccc <_end+0xaac8>
jal	ra,3cc <begin_testcode+0x34c>
lui	t5,0x12
addi	t5,t5,939 # 123ab <_end+0x101a7>
sw	t5,0(sp)
lui	t6,0xd
addi	t6,t6,-820 # cccc <_end+0xaac8>
j	3e4 <begin_testcode+0x364>
lui	t6,0x12
addi	t6,t6,939 # 123ab <_end+0x101a7>
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-1000 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-876 # 2090 <end_signature>
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


