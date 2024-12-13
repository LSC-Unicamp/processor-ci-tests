

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
sw	zero,0(t0)
li	a6,-1
mv	t6,t0
addi	t6,t6,2000
sw	a6,-2000(t6)
lw	t2,0(t0)
sw	zero,4(t0)
li	a5,1
addi	t5,t0,4
mv	t5,t5
sw	a5,0(t5)
lw	t2,4(t0)
sw	zero,8(t0)
li	a4,0
addi	t4,t0,8
addi	t4,t4,1
sw	a4,-1(t4)
lw	t2,8(t0)
sw	zero,12(t0)
li	a3,2047
addi	t3,t0,12
addi	t3,t3,2000
sw	a3,-2000(t3)
lw	t2,12(t0)
sw	zero,16(t0)
li	a2,0
addi	s11,t0,16
addi	s11,s11,-2000
sw	a2,2000(s11)
lw	t2,16(t0)
auipc	ra,0x2
addi	ra,ra,-236 # 2014 <test_2_res>
sw	zero,0(ra)
lui	a1,0x1
addi	a1,a1,-2048 # 800 <end_testcode+0x3dc>
mv	s10,ra
addi	s10,s10,-2000
sw	a1,2000(s10)
lw	gp,0(ra)
sw	zero,4(ra)
lui	a0,0x7654
addi	a0,a0,801 # 7654321 <_end+0x765211d>
addi	s9,ra,4
addi	s9,s9,-2000
sw	a0,2000(s9)
lw	gp,4(ra)
sw	zero,8(ra)
lui	s1,0x80000
addi	s1,s1,-1 # 7fffffff <_end+0x7fffddfb>
addi	s8,ra,8
addi	s8,s8,-1
sw	s1,1(s8)
lw	gp,8(ra)
sw	zero,12(ra)
li	s0,1
addi	s7,ra,12
addi	s7,s7,-2000
sw	s0,2000(s7)
lw	gp,12(ra)
sw	zero,16(ra)
li	t2,-1
addi	s6,ra,16
addi	s6,s6,-2000
sw	t2,2000(s6)
lw	gp,16(ra)
auipc	ra,0x2
addi	ra,ra,-356 # 2028 <test_3_res>
sw	zero,0(ra)
lui	t1,0x1
addi	t1,t1,564 # 1234 <fromhost+0x134>
mv	s5,ra
addi	s5,s5,-2000
sw	t1,2000(s5)
lw	s0,0(ra)
sw	zero,4(ra)
lui	t0,0x80000
addi	s4,ra,4
mv	s4,s4
sw	t0,0(s4)
lw	s0,4(ra)
sw	zero,8(ra)
lui	tp,0xfffff
addi	tp,tp,-564 # ffffedcc <_end+0xffffcbc8>
addi	s3,ra,8
addi	s3,s3,-2000
sw	tp,2000(s3)
lw	s0,8(ra)
sw	zero,12(ra)
li	gp,-1
addi	s2,ra,12
addi	s2,s2,1
sw	gp,-1(s2)
lw	s0,12(ra)
sw	zero,16(ra)
li	sp,-2047
addi	a7,ra,16
mv	a7,a7
sw	sp,0(a7)
lw	s0,16(ra)
auipc	sp,0x2
addi	sp,sp,-472 # 203c <test_4_res>
sw	zero,0(sp)
li	ra,-2
mv	a6,sp
addi	a6,a6,-1
sw	ra,1(a6)
lw	tp,0(sp)
sw	zero,4(sp)
li	zero,-1
addi	a5,sp,4
addi	a5,a5,2000
sw	zero,-2000(a5)
lw	tp,4(sp)
sw	zero,8(sp)
li	t6,1
addi	a4,sp,8
mv	a4,a4
sw	t6,0(a4)
lw	tp,8(sp)
sw	zero,12(sp)
li	t5,0
addi	a3,sp,12
addi	a3,a3,1
sw	t5,-1(a3)
lw	tp,12(sp)
sw	zero,16(sp)
li	t4,2047
addi	a2,sp,16
addi	a2,a2,2000
sw	t4,-2000(a2)
lw	tp,16(sp)
auipc	ra,0x2
addi	ra,ra,-580 # 2050 <test_5_res>
sw	zero,0(ra)
li	t3,0
mv	a1,ra
addi	a1,a1,-2000
sw	t3,2000(a1)
lw	gp,0(ra)
sw	zero,4(ra)
lui	s11,0x1
addi	s11,s11,-2048 # 800 <end_testcode+0x3dc>
addi	a0,ra,4
addi	a0,a0,-2000
sw	s11,2000(a0)
lw	gp,4(ra)
sw	zero,8(ra)
lui	s10,0x7654
addi	s10,s10,801 # 7654321 <_end+0x765211d>
addi	s1,ra,8
addi	s1,s1,-2000
sw	s10,2000(s1)
lw	gp,8(ra)
sw	zero,12(ra)
lui	s9,0x80000
addi	s9,s9,-1 # 7fffffff <_end+0x7fffddfb>
addi	s0,ra,12
addi	s0,s0,-1
sw	s9,1(s0)
lw	gp,12(ra)
sw	zero,16(ra)
li	s8,1
addi	t2,ra,16
addi	t2,t2,-2000
sw	s8,2000(t2)
lw	gp,16(ra)
auipc	ra,0x2
addi	ra,ra,-700 # 2064 <test_6_res>
sw	zero,0(ra)
li	s7,-1
mv	t1,ra
addi	t1,t1,-2000
sw	s7,2000(t1)
lw	s0,0(ra)
sw	zero,4(ra)
lui	s6,0x1
addi	s6,s6,564 # 1234 <fromhost+0x134>
addi	t0,ra,4
addi	t0,t0,-2000 # 7ffff830 <_end+0x7fffd62c>
sw	s6,2000(t0)
lw	s0,4(ra)
sw	zero,8(ra)
lui	s5,0x80000
addi	tp,ra,8
mv	tp,tp
sw	s5,0(tp) # 0 <_start>
lw	s0,8(ra)
sw	zero,12(ra)
lui	s4,0xfffff
addi	s4,s4,-564 # ffffedcc <_end+0xffffcbc8>
addi	gp,ra,12
addi	gp,gp,-2000
sw	s4,2000(gp)
lw	s0,12(ra)
sw	zero,16(ra)
li	s3,-1
addi	sp,ra,16
addi	sp,sp,1
sw	s3,-1(sp)
lw	s0,16(ra)
auipc	sp,0x2
addi	sp,sp,-816 # 2078 <test_7_res>
sw	zero,0(sp)
li	s2,-2047
mv	ra,sp
mv	ra,ra
sw	s2,0(ra)
lw	tp,0(sp)
sw	zero,4(sp)
li	a7,-2
addi	ra,sp,4
addi	ra,ra,-1
sw	a7,1(ra)
lw	tp,4(sp)
auipc	t0,0x2
addi	t0,t0,-992 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-868 # 2090 <end_signature>
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


