

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
lui	zero,0x0
sw	zero,0(t0)
lui	ra,0x0
sw	ra,4(t0)
lui	sp,0x7ff
sw	sp,8(t0)
lui	gp,0x1
sw	gp,12(t0)
lui	tp,0x1234
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-156 # 2014 <test_2_res>
lui	t0,0x80000
sw	t0,0(ra)
lui	t1,0x1234
sw	t1,4(ra)
lui	t2,0xfffff
sw	t2,8(ra)
lui	s0,0x1
sw	s0,12(ra)
lui	s1,0x7ffff
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-184 # 2028 <test_3_res>
lui	a0,0x54321
sw	a0,0(ra)
lui	a1,0x800
sw	a1,4(ra)
lui	a2,0x0
sw	a2,8(ra)
lui	a3,0x7ff
sw	a3,12(ra)
lui	a4,0x0
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-212 # 203c <test_4_res>
lui	a5,0x1
sw	a5,0(sp)
lui	a6,0x0
sw	a6,4(sp)
lui	a7,0x0
sw	a7,8(sp)
lui	s2,0x7ff
sw	s2,12(sp)
lui	s3,0x1
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-240 # 2050 <test_5_res>
lui	s4,0x1234
sw	s4,0(ra)
lui	s5,0x80000
sw	s5,4(ra)
lui	s6,0x1234
sw	s6,8(ra)
lui	s7,0xfffff
sw	s7,12(ra)
lui	s8,0x1
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-268 # 2064 <test_6_res>
lui	s9,0x7ffff
sw	s9,0(ra)
lui	s10,0x54321
sw	s10,4(ra)
lui	s11,0x800
sw	s11,8(ra)
lui	t3,0x0
sw	t3,12(ra)
lui	t4,0x7ff
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-296 # 2078 <test_7_res>
lui	t5,0x0
sw	t5,0(sp)
lui	t6,0x1
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-440 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-316 # 2090 <end_signature>
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


