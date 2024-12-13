

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
auipc	ra,0x0
addi	ra,ra,324 # 1c4 <_trap_handler>
csrrw	t6,mtvec,ra
auipc	gp,0x2
addi	gp,gp,-140 # 2000 <test_A1_data>
auipc	sp,0x2
addi	sp,sp,-132 # 2010 <begin_signature>
auipc	ra,0x2
addi	ra,ra,-124 # 2020 <test_A1_res_exc>
li	t0,5
li	t1,6
lw	tp,0(gp)
sw	tp,0(sp)
lw	tp,1(gp)
sw	tp,4(sp)
lw	tp,2(gp)
sw	tp,8(sp)
lw	tp,3(gp)
sw	tp,12(sp)
auipc	gp,0x2
addi	gp,gp,-200 # 2004 <test_A2_data>
auipc	sp,0x2
addi	sp,sp,-156 # 2038 <test_A2_res>
auipc	ra,0x2
addi	ra,ra,-132 # 2058 <test_A2_res_exc>
li	t0,5
li	t1,6
lh	tp,0(gp)
sw	tp,0(sp)
lh	tp,1(gp)
sw	tp,4(sp)
lh	tp,2(gp)
sw	tp,8(sp)
lh	tp,3(gp)
sw	tp,12(sp)
lhu	tp,0(gp)
sw	tp,16(sp)
lhu	tp,1(gp)
sw	tp,20(sp)
lhu	tp,2(gp)
sw	tp,24(sp)
lhu	tp,3(gp)
sw	tp,28(sp)
auipc	sp,0x2
addi	sp,sp,-180 # 2078 <test_B1_res>
auipc	ra,0x2
addi	ra,ra,-172 # 2088 <test_B1_res_exc>
li	t1,0
lui	t0,0x9999a
addi	t0,t0,-1639 # 99999999 <_end+0x99997795>
sw	t0,0(sp)
sw	t0,4(sp)
sw	t0,8(sp)
sw	t0,12(sp)
sw	t1,0(sp)
addi	sp,sp,4
sw	t1,1(sp)
addi	sp,sp,4
sw	t1,2(sp)
addi	sp,sp,4
sw	t1,3(sp)
auipc	sp,0x2
addi	sp,sp,-212 # 20a0 <test_B2_res>
auipc	ra,0x2
addi	ra,ra,-204 # 20b0 <test_B2_res_exc>
li	t1,0
lui	t0,0x9999a
addi	t0,t0,-1639 # 99999999 <_end+0x99997795>
sw	t0,0(sp)
sw	t0,4(sp)
sw	t0,8(sp)
sw	t0,12(sp)
sh	t1,0(sp)
addi	sp,sp,4
sh	t1,1(sp)
addi	sp,sp,4
sh	t1,2(sp)
addi	sp,sp,4
sh	t1,3(sp)
csrw	mtvec,t6
j	1ec <test_end>

<_trap_handler>:
csrr	t5,mepc
addi	t5,t5,4
csrw	mepc,t5
csrr	t5,mtval
andi	t5,t5,3
sw	t5,0(ra)
csrr	t5,mcause
sw	t5,4(ra)
addi	ra,ra,8
mret

<test_end>:
auipc	t0,0x2
addi	t0,t0,-476 # 2010 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-320 # 20c0 <end_signature>
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


