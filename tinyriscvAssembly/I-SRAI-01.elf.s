

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
li	t6,-1
srai	zero,t6,0x0
sw	zero,0(t0)
li	t5,1
srai	ra,t5,0x0
sw	ra,4(t0)
li	t4,0
srai	sp,t4,0x1
sw	sp,8(t0)
li	t3,2047
srai	gp,t3,0x4
sw	gp,12(t0)
li	s11,0
srai	tp,s11,0x8
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-176 # 2014 <test_2_res>
lui	s10,0x1
addi	s10,s10,-2048 # 800 <end_testcode+0x55c>
srai	t0,s10,0x1f
sw	t0,0(ra)
lui	s9,0x7654
addi	s9,s9,801 # 7654321 <_end+0x765211d>
srai	t1,s9,0x10
sw	t1,4(ra)
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
srai	t2,s8,0x1
sw	t2,8(ra)
li	s7,1
srai	s0,s7,0x0
sw	s0,12(ra)
li	s6,-1
srai	s1,s6,0x0
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-236 # 2028 <test_3_res>
lui	s5,0x1
addi	s5,s5,564 # 1234 <fromhost+0x134>
srai	a0,s5,0x1
sw	a0,0(ra)
lui	s4,0x80000
srai	a1,s4,0x4
sw	a1,4(ra)
lui	s3,0xfffff
addi	s3,s3,-564 # ffffedcc <_end+0xffffcbc8>
srai	a2,s3,0x8
sw	a2,8(ra)
li	s2,-1
srai	a3,s2,0x1f
sw	a3,12(ra)
li	a7,-2047
srai	a4,a7,0x10
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-292 # 203c <test_4_res>
li	a6,0
srai	a5,a6,0x1
sw	a5,0(sp)
li	a5,-1
srai	a6,a5,0x0
sw	a6,4(sp)
li	a4,1
srai	a7,a4,0x0
sw	a7,8(sp)
li	a3,0
srai	s2,a3,0x1
sw	s2,12(sp)
li	a2,2047
srai	s3,a2,0x4
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-340 # 2050 <test_5_res>
li	a1,0
srai	s4,a1,0x8
sw	s4,0(ra)
lui	a0,0x1
addi	a0,a0,-2048 # 800 <end_testcode+0x55c>
srai	s5,a0,0x1f
sw	s5,4(ra)
lui	s1,0x7654
addi	s1,s1,801 # 7654321 <_end+0x765211d>
srai	s6,s1,0x10
sw	s6,8(ra)
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
srai	s7,s0,0x1
sw	s7,12(ra)
li	t2,1
srai	s8,t2,0x0
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-400 # 2064 <test_6_res>
li	t1,-1
srai	s9,t1,0x0
sw	s9,0(ra)
lui	t0,0x1
addi	t0,t0,564 # 1234 <fromhost+0x134>
srai	s10,t0,0x1
sw	s10,4(ra)
lui	tp,0x80000
srai	s11,tp,0x4
sw	s11,8(ra)
lui	gp,0xfffff
addi	gp,gp,-564 # ffffedcc <_end+0xffffcbc8>
srai	t3,gp,0x8
sw	t3,12(ra)
li	sp,-1
srai	t4,sp,0x1f
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-456 # 2078 <test_7_res>
li	ra,-2047
srai	t5,ra,0x10
sw	t5,0(sp)
nop
srai	t6,zero,0x1
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-608 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-484 # 2090 <end_signature>
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


