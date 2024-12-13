

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
li	a6,0
add	zero,t6,a6
sw	zero,0(t0)
li	t5,1
li	a5,-2047
add	ra,t5,a5
sw	ra,4(t0)
li	t4,0
li	a4,-1
add	sp,t4,a4
sw	sp,8(t0)
li	t3,2047
lui	a3,0xfffff
addi	a3,a3,-564 # ffffedcc <_end+0xffffcbc8>
add	gp,t3,a3
sw	gp,12(t0)
li	s11,0
lui	a2,0x80000
add	tp,s11,a2
sw	tp,16(t0)
auipc	ra,0x2
addi	ra,ra,-200 # 2014 <test_2_res>
lui	s10,0x1
addi	s10,s10,-2048 # 800 <end_testcode+0x4b4>
lui	a1,0x1
addi	a1,a1,564 # 1234 <fromhost+0x134>
add	t0,s10,a1
sw	t0,0(ra)
lui	s9,0x7654
addi	s9,s9,801 # 7654321 <_end+0x765211d>
li	a0,-1
add	t1,s9,a0
sw	t1,4(ra)
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
li	s1,1
add	t2,s8,s1
sw	t2,8(ra)
li	s7,1
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
add	s0,s7,s0
sw	s0,12(ra)
li	s6,-1
lui	t2,0x7654
addi	t2,t2,801 # 7654321 <_end+0x765211d>
add	s1,s6,t2
sw	s1,16(ra)
auipc	ra,0x2
addi	ra,ra,-292 # 2028 <test_3_res>
lui	s5,0x1
addi	s5,s5,564 # 1234 <fromhost+0x134>
lui	t1,0x1
addi	t1,t1,-2048 # 800 <end_testcode+0x4b4>
add	a0,s5,t1
sw	a0,0(ra)
lui	s4,0x80000
li	t0,0
add	a1,s4,t0
sw	a1,4(ra)
lui	s3,0xfffff
addi	s3,s3,-564 # ffffedcc <_end+0xffffcbc8>
li	tp,2047
add	a2,s3,tp
sw	a2,8(ra)
li	s2,-1
li	gp,-1
add	a3,s2,gp
sw	a3,12(ra)
li	a7,-2047
li	sp,1
add	a4,a7,sp
sw	a4,16(ra)
auipc	sp,0x2
addi	sp,sp,-372 # 203c <test_4_res>
li	a6,0
li	ra,0
add	a5,a6,ra
sw	a5,0(sp)
li	a5,-1
nop
add	a6,a5,zero
sw	a6,4(sp)
li	a4,1
li	t6,-2047
add	a7,a4,t6
sw	a7,8(sp)
li	a3,0
li	t5,-1
add	s2,a3,t5
sw	s2,12(sp)
li	a2,2047
lui	t4,0xfffff
addi	t4,t4,-564 # ffffedcc <_end+0xffffcbc8>
add	s3,a2,t4
sw	s3,16(sp)
auipc	ra,0x2
addi	ra,ra,-444 # 2050 <test_5_res>
li	a1,0
lui	t3,0x80000
add	s4,a1,t3
sw	s4,0(ra)
lui	a0,0x1
addi	a0,a0,-2048 # 800 <end_testcode+0x4b4>
lui	s11,0x1
addi	s11,s11,564 # 1234 <fromhost+0x134>
add	s5,a0,s11
sw	s5,4(ra)
lui	s1,0x7654
addi	s1,s1,801 # 7654321 <_end+0x765211d>
li	s10,-1
add	s6,s1,s10
sw	s6,8(ra)
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
li	s9,1
add	s7,s0,s9
sw	s7,12(ra)
li	t2,1
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
add	s8,t2,s8
sw	s8,16(ra)
auipc	ra,0x2
addi	ra,ra,-532 # 2064 <test_6_res>
li	t1,-1
lui	s7,0x7654
addi	s7,s7,801 # 7654321 <_end+0x765211d>
add	s9,t1,s7
sw	s9,0(ra)
lui	t0,0x1
addi	t0,t0,564 # 1234 <fromhost+0x134>
lui	s6,0x1
addi	s6,s6,-2048 # 800 <end_testcode+0x4b4>
add	s10,t0,s6
sw	s10,4(ra)
lui	tp,0x80000
li	s5,0
add	s11,tp,s5
sw	s11,8(ra)
lui	gp,0xfffff
addi	gp,gp,-564 # ffffedcc <_end+0xffffcbc8>
li	s4,2047
add	t3,gp,s4
sw	t3,12(ra)
li	sp,-1
li	s3,-1
add	t4,sp,s3
sw	t4,16(ra)
auipc	sp,0x2
addi	sp,sp,-616 # 2078 <test_7_res>
li	ra,-2047
li	s2,1
add	t5,ra,s2
sw	t5,0(sp)
nop
li	a7,0
add	t6,zero,a7
sw	t6,4(sp)
auipc	t0,0x2
addi	t0,t0,-776 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-652 # 2090 <end_signature>
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


