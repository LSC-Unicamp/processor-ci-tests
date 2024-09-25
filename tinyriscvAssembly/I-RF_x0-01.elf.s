

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
auipc	t6,0x2
addi	t6,t6,-112 # 2010 <begin_signature>
lui	zero,0xabcde
li	zero,1
ori	zero,zero,2032
andi	zero,zero,1343
xori	zero,zero,-2045
slli	zero,zero,0x5
srai	zero,zero,0x2
srli	zero,zero,0x4
sw	zero,0(t6)
auipc	t6,0x2
addi	t6,t6,-152 # 2014 <test_A2_res>
li	ra,1
li	sp,2032
li	gp,1343
li	tp,-2045
li	t0,5
li	t1,2
li	t2,4
li	s0,24
auipc	zero,0xabcde
add	zero,zero,ra
or	zero,zero,sp
and	zero,zero,gp
xor	zero,zero,tp
sll	zero,zero,t0
sra	zero,zero,t1
srl	zero,zero,t2
neg	zero,s0
sw	zero,0(t6)
auipc	t6,0x2
addi	t6,t6,-228 # 2018 <test_A3_res>
li	ra,1
li	sp,2
slt	zero,ra,sp
sw	zero,0(t6)
sltu	zero,ra,sp
sw	zero,4(t6)
slti	zero,ra,2
sw	zero,8(t6)
sltiu	zero,ra,2
sw	zero,12(t6)
auipc	t6,0x2
addi	t6,t6,-260 # 2028 <test_A4_res>
j	138 <begin_testcode+0xb8>
sw	zero,0(t6)
auipc	ra,0x0
addi	ra,ra,12 # 148 <begin_testcode+0xc8>
ret
sw	zero,4(t6)
auipc	ra,0x2
addi	ra,ra,-332 # 2000 <test_A5_data>
auipc	t6,0x2
addi	t6,t6,-292 # 2030 <test_A5_res>
lw	zero,0(ra)
sw	zero,0(t6)
lh	zero,0(ra)
sw	zero,4(t6)
lb	zero,0(ra)
sw	zero,8(t6)
lbu	zero,0(ra)
sw	zero,12(t6)
auipc	t0,0x2
addi	t0,t0,-364 # 2010 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-336 # 2040 <end_signature>
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

