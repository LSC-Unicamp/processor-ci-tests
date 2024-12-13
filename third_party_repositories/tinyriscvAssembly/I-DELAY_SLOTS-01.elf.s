

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
lui	sp,0x11111
addi	sp,sp,273 # 11111111 <_end+0x1110ef0d>
j	98 <begin_testcode+0x18>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-152 # 2004 <test_A2_res>
lui	sp,0x22222
addi	sp,sp,546 # 22222222 <_end+0x2222001e>
auipc	tp,0x0
addi	tp,tp,16 # bc <begin_testcode+0x3c>
jr	tp # 0 <_start>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-184 # 2008 <test_B1_res>
li	t0,5
li	t1,6
lui	sp,0x33333
addi	sp,sp,819 # 33333333 <_end+0x3333112f>
beq	t0,t0,e0 <begin_testcode+0x60>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-216 # 200c <test_B2_res>
li	t0,5
li	t1,6
lui	sp,0x44444
addi	sp,sp,1092 # 44444444 <_end+0x44442240>
bne	t0,t1,104 <begin_testcode+0x84>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-248 # 2010 <test_B3_res>
li	t0,5
li	t1,6
lui	sp,0x55555
addi	sp,sp,1365 # 55555555 <_end+0x55553351>
blt	t0,t1,128 <begin_testcode+0xa8>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-280 # 2014 <test_B4_res>
li	t0,5
li	t1,6
lui	sp,0x66666
addi	sp,sp,1638 # 66666666 <_end+0x66664462>
bltu	t0,t1,14c <begin_testcode+0xcc>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-312 # 2018 <test_B5_res>
li	t0,5
li	t1,6
lui	sp,0x77777
addi	sp,sp,1911 # 77777777 <_end+0x77775573>
bge	t1,t0,170 <begin_testcode+0xf0>
li	sp,0
sw	sp,0(ra)
auipc	ra,0x2
addi	ra,ra,-344 # 201c <test_B6_res>
li	t0,5
li	t1,6
lui	sp,0x88889
addi	sp,sp,-1912 # 88888888 <_end+0x88886684>
bgeu	t1,t0,194 <begin_testcode+0x114>
li	sp,0
sw	sp,0(ra)
auipc	t0,0x2
addi	t0,t0,-408 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-396 # 2020 <end_signature>
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


