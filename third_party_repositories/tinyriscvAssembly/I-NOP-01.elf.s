

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
auipc	ra,0x2
addi	ra,ra,-128 # 2000 <begin_signature>
li	sp,2
li	gp,3
li	tp,4
li	t0,5
li	t1,6
li	t2,7
li	s0,8
li	s1,9
li	a0,10
li	a1,11
li	a2,12
li	a3,13
li	a4,14
li	a5,15
li	a6,16
li	a7,17
li	s2,18
li	s3,19
li	s4,20
li	s5,21
li	s6,22
li	s7,23
li	s8,24
li	s9,25
li	s10,26
li	s11,27
li	t3,28
li	t4,29
li	t5,30
li	t6,31
nop
nop
nop
nop
nop
nop
sw	zero,0(ra)
sw	sp,4(ra)
sw	gp,8(ra)
sw	tp,12(ra)
sw	t0,16(ra)
sw	t1,20(ra)
sw	t2,24(ra)
sw	s0,28(ra)
sw	s1,32(ra)
sw	a0,36(ra)
sw	a1,40(ra)
sw	a2,44(ra)
sw	a3,48(ra)
sw	a4,52(ra)
sw	a5,56(ra)
sw	a6,60(ra)
sw	a7,64(ra)
sw	s2,68(ra)
sw	s3,72(ra)
sw	s4,76(ra)
sw	s5,80(ra)
sw	s6,84(ra)
sw	s7,88(ra)
sw	s8,92(ra)
sw	s9,96(ra)
sw	s10,100(ra)
sw	s11,104(ra)
sw	t3,108(ra)
sw	t4,112(ra)
sw	t5,116(ra)
sw	t6,120(ra)
auipc	gp,0x2
addi	gp,gp,-280 # 207c <test_A2_res>
auipc	s0,0x0
nop
nop
nop
nop
nop
auipc	s1,0x0
sub	s1,s1,s0
sw	s1,0(gp)
auipc	t0,0x2
addi	t0,t0,-448 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-340 # 2080 <end_signature>
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


