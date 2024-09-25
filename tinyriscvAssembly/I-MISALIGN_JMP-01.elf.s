

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
addi	ra,ra,520 # 288 <_trap_handler>
csrrw	t6,mtvec,ra
csrci	misa,4
auipc	ra,0x2
addi	ra,ra,-144 # 2000 <begin_signature>
lui	sp,0x11111
addi	sp,sp,273 # 11111111 <_end+0x1110ef0d>
j	aa <begin_testcode+0x2a>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-156 # 200c <test_A2_res>
lui	sp,0x22222
addi	sp,sp,546 # 22222222 <_end+0x2222001e>
auipc	tp,0x0
addi	tp,tp,17 # c9 <begin_testcode+0x49>
jr	tp # 0 <_start>
li	sp,0
sw	sp,0(ra)
addi	ra,ra,4
lui	sp,0x33333
addi	sp,sp,819 # 33333333 <_end+0x3333112f>
auipc	tp,0x0
addi	tp,tp,16 # e8 <begin_testcode+0x68>
jr	1(tp) # 0 <_start>
li	sp,0
sw	sp,0(ra)
addi	ra,ra,4
lui	sp,0x44444
addi	sp,sp,1092 # 44444444 <_end+0x44442240>
auipc	tp,0x0
addi	tp,tp,20 # 10c <begin_testcode+0x8c>
jr	-3(tp) # 0 <_start>
li	sp,0
sw	sp,0(ra)
addi	ra,ra,4
auipc	ra,0x2
addi	ra,ra,-248 # 2018 <test_A3_res_exc>
lui	sp,0x55555
addi	sp,sp,1365 # 55555555 <_end+0x55553351>
auipc	tp,0x0
addi	tp,tp,18 # 132 <begin_testcode+0xb2>
jr	tp # 0 <_start>
li	sp,0
lui	sp,0x66666
addi	sp,sp,1638 # 66666666 <_end+0x66664462>
auipc	tp,0x0
addi	tp,tp,19 # 14b <begin_testcode+0xcb>
jr	tp # 0 <_start>
li	sp,0
lui	sp,0x77777
addi	sp,sp,1911 # 77777777 <_end+0x77775573>
auipc	tp,0x0
addi	tp,tp,16 # 160 <begin_testcode+0xe0>
jr	2(tp) # 0 <_start>
li	sp,0
lui	sp,0x88889
addi	sp,sp,-1912 # 88888888 <_end+0x88886684>
auipc	tp,0x0
addi	tp,tp,16 # 178 <begin_testcode+0xf8>
jr	3(tp) # 0 <_start>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-304 # 2048 <test_B1_res_exc>
li	t0,5
li	t1,6
beq	t0,t1,196 <begin_testcode+0x116>
lui	sp,0x9999a
addi	sp,sp,-1639 # 99999999 <_end+0x99997795>
nop
nop
beq	t0,t0,1a6 <begin_testcode+0x126>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-336 # 2054 <test_B2_res_exc>
li	t0,5
li	t1,6
bne	t0,t0,1c2 <begin_testcode+0x142>
lui	sp,0xaaaab
addi	sp,sp,-1366 # aaaaaaaa <_end+0xaaaa88a6>
nop
nop
bne	t0,t1,1d2 <begin_testcode+0x152>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-368 # 2060 <test_B3_res_exc>
li	t0,5
li	t1,6
blt	t1,t0,1ee <begin_testcode+0x16e>
lui	sp,0xbbbbc
addi	sp,sp,-1093 # bbbbbbbb <_end+0xbbbb99b7>
nop
nop
blt	t0,t1,1fe <begin_testcode+0x17e>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-400 # 206c <test_B4_res_exc>
li	t0,5
li	t1,6
bltu	t1,t0,21a <begin_testcode+0x19a>
lui	sp,0xccccd
addi	sp,sp,-820 # cccccccc <_end+0xccccaac8>
nop
nop
bltu	t0,t1,22a <begin_testcode+0x1aa>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-432 # 2078 <test_B5_res_exc>
li	t0,5
li	t1,6
bge	t0,t1,246 <begin_testcode+0x1c6>
lui	sp,0xdddde
addi	sp,sp,-547 # dddddddd <_end+0xddddbbd9>
nop
nop
bge	t1,t0,256 <begin_testcode+0x1d6>
li	sp,0
auipc	ra,0x2
addi	ra,ra,-464 # 2084 <test_B6_res_exc>
li	t0,5
li	t1,6
bgeu	t0,t1,272 <begin_testcode+0x1f2>
lui	sp,0xeeeef
addi	sp,sp,-274 # eeeeeeee <_end+0xeeeeccea>
nop
nop
bgeu	t1,t0,282 <begin_testcode+0x202>
li	sp,0
csrw	mtvec,t6
j	2b4 <test_end>

<_trap_handler>:
csrr	t5,mtval
addi	t5,t5,-2
csrw	mepc,t5
csrr	t5,mtval
andi	t5,t5,3
sw	t5,0(ra)
csrr	t5,mcause
sw	t5,4(ra)
sw	sp,8(ra)
addi	ra,ra,12
mret

<test_end>:
auipc	t0,0x2
addi	t0,t0,-692 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-568 # 2090 <end_signature>
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


