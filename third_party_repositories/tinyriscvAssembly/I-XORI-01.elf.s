

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
xori	zero,t6,0
sw	zero,0(t0)
li	t5,1
xori	ra,t5,-2047
sw	ra,4(t0)
li	t4,0
not	sp,t4
sw	sp,8(t0)
li	t3,2047
xori	gp,t3,-2048
sw	gp,12(t0)
li	s11,0
xori	tp,s11,-2048
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-176 # 2014 <test_2_res>
lui	s10,0x1
addi	s10,s10,-2048 # 800 <end_testcode+0x55c>
xori	t0,s10,-2048
sw	t0,0(ra)
lui	s9,0x7654
addi	s9,s9,801 # 7654321 <_end+0x765211d>
xori	t1,s9,-2048
sw	t1,4(ra)
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
xori	t2,s8,1
sw	t2,8(ra)
li	s7,1
xori	s0,s7,-2048
sw	s0,12(ra)
li	s6,-1
xori	s1,s6,-2048
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-236 # 2028 <test_3_res>
lui	s5,0x1
addi	s5,s5,564 # 1234 <fromhost+0x134>
xori	a0,s5,-2048
sw	a0,0(ra)
lui	s4,0x80000
xori	a1,s4,0
sw	a1,4(ra)
lui	s3,0xfffff
addi	s3,s3,-564 # ffffedcc <_end+0xffffcbc8>
xori	a2,s3,2047
sw	a2,8(ra)
li	s2,-1
not	a3,s2
sw	a3,12(ra)
li	a7,-2047
xori	a4,a7,1
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-292 # 203c <test_4_res>
li	a6,0
xori	a5,a6,0
sw	a5,0(sp)
li	a5,-1
xori	a6,a5,0
sw	a6,4(sp)
li	a4,1
xori	a7,a4,-2047
sw	a7,8(sp)
li	a3,0
not	s2,a3
sw	s2,12(sp)
li	a2,2047
xori	s3,a2,-2048
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-340 # 2050 <test_5_res>
li	a1,0
xori	s4,a1,-2048
sw	s4,0(ra)
lui	a0,0x1
addi	a0,a0,-2048 # 800 <end_testcode+0x55c>
xori	s5,a0,-2048
sw	s5,4(ra)
lui	s1,0x7654
addi	s1,s1,801 # 7654321 <_end+0x765211d>
xori	s6,s1,-2048
sw	s6,8(ra)
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
xori	s7,s0,1
sw	s7,12(ra)
li	t2,1
xori	s8,t2,-2048
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-400 # 2064 <test_6_res>
li	t1,-1
xori	s9,t1,-2048
sw	s9,0(ra)
lui	t0,0x1
addi	t0,t0,564 # 1234 <fromhost+0x134>
xori	s10,t0,-2048
sw	s10,4(ra)
lui	tp,0x80000
xori	s11,tp,0
sw	s11,8(ra)
lui	gp,0xfffff
addi	gp,gp,-564 # ffffedcc <_end+0xffffcbc8>
xori	t3,gp,2047
sw	t3,12(ra)
li	sp,-1
not	t4,sp
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-456 # 2078 <test_7_res>
li	ra,-2047
xori	t5,ra,1
sw	t5,0(sp)
nop
xori	t6,zero,0
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


