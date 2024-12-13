

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
auipc	zero,0x0
auipc	t2,0x0
addi	t2,t2,-4 # 88 <begin_testcode+0x8>
neg	zero,t2
sw	zero,0(t0)
auipc	ra,0x0
auipc	t2,0x0
addi	t2,t2,-4 # 9c <begin_testcode+0x1c>
sub	ra,ra,t2
sw	ra,4(t0)
auipc	sp,0x7ff
auipc	t2,0x0
addi	t2,t2,-4 # b0 <begin_testcode+0x30>
sub	sp,sp,t2
sw	sp,8(t0)
auipc	gp,0x1
auipc	t2,0x0
addi	t2,t2,-4 # c4 <begin_testcode+0x44>
sub	gp,gp,t2
sw	gp,12(t0)
auipc	tp,0x1234
auipc	t2,0x0
addi	t2,t2,-4 # d8 <begin_testcode+0x58>
sub	tp,tp,t2
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-216 # 2014 <test_2_res>
auipc	t0,0x80000
auipc	gp,0x0
addi	gp,gp,-4 # f4 <begin_testcode+0x74>
sub	t0,t0,gp
sw	t0,0(ra)
auipc	t1,0x1234
auipc	gp,0x0
addi	gp,gp,-4 # 108 <begin_testcode+0x88>
sub	t1,t1,gp
sw	t1,4(ra)
auipc	t2,0xfffff
auipc	gp,0x0
addi	gp,gp,-4 # 11c <begin_testcode+0x9c>
sub	t2,t2,gp
sw	t2,8(ra)
auipc	s0,0x1
auipc	gp,0x0
addi	gp,gp,-4 # 130 <begin_testcode+0xb0>
sub	s0,s0,gp
sw	s0,12(ra)
auipc	s1,0x7ffff
auipc	gp,0x0
addi	gp,gp,-4 # 144 <begin_testcode+0xc4>
sub	s1,s1,gp
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-304 # 2028 <test_3_res>
auipc	a0,0x54321
auipc	s0,0x0
addi	s0,s0,-4 # 160 <begin_testcode+0xe0>
sub	a0,a0,s0
sw	a0,0(ra)
auipc	a1,0x800
auipc	s0,0x0
addi	s0,s0,-4 # 174 <begin_testcode+0xf4>
sub	a1,a1,s0
sw	a1,4(ra)
auipc	a2,0x0
auipc	s0,0x0
addi	s0,s0,-4 # 188 <begin_testcode+0x108>
sub	a2,a2,s0
sw	a2,8(ra)
auipc	a3,0x7ff
auipc	s0,0x0
addi	s0,s0,-4 # 19c <begin_testcode+0x11c>
sub	a3,a3,s0
sw	a3,12(ra)
auipc	a4,0x0
auipc	s0,0x0
addi	s0,s0,-4 # 1b0 <begin_testcode+0x130>
sub	a4,a4,s0
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-392 # 203c <test_4_res>
auipc	a5,0x1
auipc	tp,0x0
addi	tp,tp,-4 # 1cc <begin_testcode+0x14c>
sub	a5,a5,tp
sw	a5,0(sp)
auipc	a6,0x0
auipc	tp,0x0
addi	tp,tp,-4 # 1e0 <begin_testcode+0x160>
sub	a6,a6,tp
sw	a6,4(sp)
auipc	a7,0x0
auipc	tp,0x0
addi	tp,tp,-4 # 1f4 <begin_testcode+0x174>
sub	a7,a7,tp
sw	a7,8(sp)
auipc	s2,0x7ff
auipc	tp,0x0
addi	tp,tp,-4 # 208 <begin_testcode+0x188>
sub	s2,s2,tp
sw	s2,12(sp)
auipc	s3,0x1
auipc	tp,0x0
addi	tp,tp,-4 # 21c <begin_testcode+0x19c>
sub	s3,s3,tp
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-480 # 2050 <test_5_res>
auipc	s4,0x1234
auipc	gp,0x0
addi	gp,gp,-4 # 238 <begin_testcode+0x1b8>
sub	s4,s4,gp
sw	s4,0(ra)
auipc	s5,0x80000
auipc	gp,0x0
addi	gp,gp,-4 # 24c <begin_testcode+0x1cc>
sub	s5,s5,gp
sw	s5,4(ra)
auipc	s6,0x1234
auipc	gp,0x0
addi	gp,gp,-4 # 260 <begin_testcode+0x1e0>
sub	s6,s6,gp
sw	s6,8(ra)
auipc	s7,0xfffff
auipc	gp,0x0
addi	gp,gp,-4 # 274 <begin_testcode+0x1f4>
sub	s7,s7,gp
sw	s7,12(ra)
auipc	s8,0x1
auipc	gp,0x0
addi	gp,gp,-4 # 288 <begin_testcode+0x208>
sub	s8,s8,gp
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-568 # 2064 <test_6_res>
auipc	s9,0x7ffff
auipc	s0,0x0
addi	s0,s0,-4 # 2a4 <begin_testcode+0x224>
sub	s9,s9,s0
sw	s9,0(ra)
auipc	s10,0x54321
auipc	s0,0x0
addi	s0,s0,-4 # 2b8 <begin_testcode+0x238>
sub	s10,s10,s0
sw	s10,4(ra)
auipc	s11,0x800
auipc	s0,0x0
addi	s0,s0,-4 # 2cc <begin_testcode+0x24c>
sub	s11,s11,s0
sw	s11,8(ra)
auipc	t3,0x0
auipc	s0,0x0
addi	s0,s0,-4 # 2e0 <begin_testcode+0x260>
sub	t3,t3,s0
sw	t3,12(ra)
auipc	t4,0x7ff
auipc	s0,0x0
addi	s0,s0,-4 # 2f4 <begin_testcode+0x274>
sub	t4,t4,s0
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-656 # 2078 <test_7_res>
auipc	t5,0x0
auipc	tp,0x0
addi	tp,tp,-4 # 310 <begin_testcode+0x290>
sub	t5,t5,tp
sw	t5,0(sp)
auipc	t6,0x1
auipc	tp,0x0
addi	tp,tp,-4 # 324 <begin_testcode+0x2a4>
sub	t6,t6,tp
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-824 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-700 # 2090 <end_signature>
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


