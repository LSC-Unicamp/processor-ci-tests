

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
auipc	a6,0x2
addi	a6,a6,-128 # 2000 <begin_signature>
li	zero,1
li	ra,1
li	sp,1
li	gp,1
li	tp,1
li	t0,1
li	t1,1
li	t2,1
li	s0,1
li	s1,1
li	a0,1
li	a1,1
li	a2,1
li	a3,1
li	a4,1
li	a5,1
slli	ra,ra,0x1f
bltz	ra,d4 <begin_testcode+0x54>
li	ra,0
slli	sp,sp,0x1f
bltz	sp,e0 <begin_testcode+0x60>
li	sp,0
slli	gp,gp,0x1f
bltz	gp,ec <begin_testcode+0x6c>
li	gp,0
slli	tp,tp,0x1f
bltz	tp,f8 <begin_testcode+0x78>
li	tp,0
slli	t0,t0,0x1f
bltz	t0,104 <begin_testcode+0x84>
li	t0,0
slli	t1,t1,0x1f
bltz	t1,110 <begin_testcode+0x90>
li	t1,0
slli	t2,t2,0x1f
bltz	t2,11c <begin_testcode+0x9c>
li	t2,0
slli	s0,s0,0x1f
bltz	s0,128 <begin_testcode+0xa8>
li	s0,0
slli	s1,s1,0x1f
bltz	s1,134 <begin_testcode+0xb4>
li	s1,0
slli	a0,a0,0x1f
bltz	a0,140 <begin_testcode+0xc0>
li	a0,0
slli	a1,a1,0x1f
bltz	a1,14c <begin_testcode+0xcc>
li	a1,0
slli	a2,a2,0x1f
bltz	a2,158 <begin_testcode+0xd8>
li	a2,0
slli	a3,a3,0x1f
bltz	a3,164 <begin_testcode+0xe4>
li	a3,0
slli	a4,a4,0x1f
bltz	a4,170 <begin_testcode+0xf0>
li	a4,0
slli	a5,a5,0x1f
bltz	a5,17c <begin_testcode+0xfc>
li	a5,0
sw	zero,0(a6)
sw	ra,4(a6)
sw	sp,8(a6)
sw	gp,12(a6)
sw	tp,16(a6)
sw	t0,20(a6)
sw	t1,24(a6)
sw	t2,28(a6)
sw	s0,32(a6)
sw	s1,36(a6)
sw	a0,40(a6)
sw	a1,44(a6)
sw	a2,48(a6)
sw	a3,52(a6)
sw	a4,56(a6)
sw	a5,60(a6)
auipc	ra,0x2
addi	ra,ra,-380 # 2040 <test_A2_res>
li	a6,1
li	a7,1
li	s2,1
li	s3,1
li	s4,1
li	s5,1
li	s6,1
li	s7,1
li	s8,1
li	s9,1
li	s10,1
li	s11,1
li	t3,1
li	t4,1
li	t5,1
li	t6,1
slli	a6,a6,0x1f
bltz	a6,210 <begin_testcode+0x190>
li	a6,0
slli	a7,a7,0x1f
bltz	a7,21c <begin_testcode+0x19c>
li	a7,0
slli	s2,s2,0x1f
bltz	s2,228 <begin_testcode+0x1a8>
li	s2,0
slli	s3,s3,0x1f
bltz	s3,234 <begin_testcode+0x1b4>
li	s3,0
slli	s4,s4,0x1f
bltz	s4,240 <begin_testcode+0x1c0>
li	s4,0
slli	s5,s5,0x1f
bltz	s5,24c <begin_testcode+0x1cc>
li	s5,0
slli	s6,s6,0x1f
bltz	s6,258 <begin_testcode+0x1d8>
li	s6,0
slli	s7,s7,0x1f
bltz	s7,264 <begin_testcode+0x1e4>
li	s7,0
slli	s8,s8,0x1f
bltz	s8,270 <begin_testcode+0x1f0>
li	s8,0
slli	s9,s9,0x1f
bltz	s9,27c <begin_testcode+0x1fc>
li	s9,0
slli	s10,s10,0x1f
bltz	s10,288 <begin_testcode+0x208>
li	s10,0
slli	s11,s11,0x1f
bltz	s11,294 <begin_testcode+0x214>
li	s11,0
slli	t3,t3,0x1f
bltz	t3,2a0 <begin_testcode+0x220>
li	t3,0
slli	t4,t4,0x1f
bltz	t4,2ac <begin_testcode+0x22c>
li	t4,0
slli	t5,t5,0x1f
bltz	t5,2b8 <begin_testcode+0x238>
li	t5,0
slli	t6,t6,0x1f
bltz	t6,2c4 <begin_testcode+0x244>
li	t6,0
sw	a6,0(ra)
sw	a7,4(ra)
sw	s2,8(ra)
sw	s3,12(ra)
sw	s4,16(ra)
sw	s5,20(ra)
sw	s6,24(ra)
sw	s7,28(ra)
sw	s8,32(ra)
sw	s9,36(ra)
sw	s10,40(ra)
sw	s11,44(ra)
sw	t3,48(ra)
sw	t4,52(ra)
sw	t5,56(ra)
sw	t6,60(ra)
auipc	t0,0x2
addi	t0,t0,-772 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-664 # 2080 <end_signature>
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


