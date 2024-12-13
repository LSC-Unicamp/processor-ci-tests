

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
auipc	sp,0x2
addi	sp,sp,-128 # 2000 <begin_signature>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t6,-1
li	a6,0
bge	t6,a6,a4 <begin_testcode+0x24>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t5,1
li	a5,-2047
bge	t5,a5,c4 <begin_testcode+0x44>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(sp)
j	d0 <begin_testcode+0x50>
j	ec <begin_testcode+0x6c>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t4,0
li	a4,-1
bge	t4,a4,cc <begin_testcode+0x4c>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t3,2047
lui	a3,0xfffff
addi	a3,a3,-564 # ffffedcc <_end+0xffffcbc8>
bge	t3,a3,110 <begin_testcode+0x90>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	s11,0
lui	a2,0x80000
bge	s11,a2,130 <begin_testcode+0xb0>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(sp)
auipc	sp,0x2
addi	sp,sp,-288 # 2014 <test_2_res>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s10,0x1
addi	s10,s10,-2048 # 800 <end_testcode+0x284>
lui	a1,0x1
addi	a1,a1,564 # 1234 <fromhost+0x134>
bge	s10,a1,160 <begin_testcode+0xe0>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s9,0x7654
addi	s9,s9,801 # 7654321 <_end+0x765211d>
li	a0,-1
bge	s9,a0,184 <begin_testcode+0x104>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(sp)
j	190 <begin_testcode+0x110>
j	1b0 <begin_testcode+0x130>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
li	s1,1
bge	s8,s1,18c <begin_testcode+0x10c>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	s7,1
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
bge	s7,s0,1d4 <begin_testcode+0x154>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	s6,-1
lui	t2,0x7654
addi	t2,t2,801 # 7654321 <_end+0x765211d>
bge	s6,t2,1f8 <begin_testcode+0x178>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(sp)
auipc	t2,0x2
addi	t2,t2,-468 # 2028 <test_3_res>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s5,0x1
addi	s5,s5,564 # 1234 <fromhost+0x134>
lui	t1,0x1
addi	t1,t1,-2048 # 800 <end_testcode+0x284>
bge	s5,t1,228 <begin_testcode+0x1a8>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s4,0x80000
li	t0,0
bge	s4,t0,248 <begin_testcode+0x1c8>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(t2)
j	254 <begin_testcode+0x1d4>
j	274 <begin_testcode+0x1f4>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s3,0xfffff
addi	s3,s3,-564 # ffffedcc <_end+0xffffcbc8>
li	tp,2047
bge	s3,tp,250 <begin_testcode+0x1d0>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	s2,-1
li	gp,-1
bge	s2,gp,294 <begin_testcode+0x214>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a7,-2047
li	sp,1
bge	a7,sp,2b4 <begin_testcode+0x234>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(t2)
auipc	gp,0x2
addi	gp,gp,-636 # 203c <test_4_res>
lui	sp,0xd
addi	sp,sp,-820 # cccc <_end+0xaac8>
li	a6,0
li	ra,0
bge	a6,ra,2dc <begin_testcode+0x25c>
lui	sp,0x12
addi	sp,sp,939 # 123ab <_end+0x101a7>
sw	sp,0(gp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a5,-1
nop
bgez	a5,2fc <begin_testcode+0x27c>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(gp)
j	308 <begin_testcode+0x288>
j	324 <begin_testcode+0x2a4>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a4,1
li	t6,-2047
bge	a4,t6,304 <begin_testcode+0x284>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(gp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a3,0
li	t5,-1
bge	a3,t5,344 <begin_testcode+0x2c4>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(gp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a2,2047
lui	t4,0xfffff
addi	t4,t4,-564 # ffffedcc <_end+0xffffcbc8>
bge	a2,t4,368 <begin_testcode+0x2e8>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(gp)
auipc	sp,0x2
addi	sp,sp,-796 # 2050 <test_5_res>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	a1,0
lui	t3,0x80000
bge	a1,t3,390 <begin_testcode+0x310>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	a0,0x1
addi	a0,a0,-2048 # 800 <end_testcode+0x284>
lui	s11,0x1
addi	s11,s11,564 # 1234 <fromhost+0x134>
bge	a0,s11,3b8 <begin_testcode+0x338>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(sp)
j	3c4 <begin_testcode+0x344>
j	3e4 <begin_testcode+0x364>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s1,0x7654
addi	s1,s1,801 # 7654321 <_end+0x765211d>
li	s10,-1
bge	s1,s10,3c0 <begin_testcode+0x340>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	s0,0x80000
addi	s0,s0,-1 # 7fffffff <_end+0x7fffddfb>
li	s9,1
bge	s0,s9,408 <begin_testcode+0x388>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(sp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t2,1
lui	s8,0x80000
addi	s8,s8,-1 # 7fffffff <_end+0x7fffddfb>
bge	t2,s8,42c <begin_testcode+0x3ac>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(sp)
auipc	t2,0x2
addi	t2,t2,-972 # 2064 <test_6_res>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	t1,-1
lui	s7,0x7654
addi	s7,s7,801 # 7654321 <_end+0x765211d>
bge	t1,s7,458 <begin_testcode+0x3d8>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,0(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	t0,0x1
addi	t0,t0,564 # 1234 <fromhost+0x134>
lui	s6,0x1
addi	s6,s6,-2048 # 800 <end_testcode+0x284>
bge	t0,s6,480 <begin_testcode+0x400>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(t2)
j	48c <begin_testcode+0x40c>
j	4a8 <begin_testcode+0x428>
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	tp,0x80000
li	s5,0
bge	tp,s5,488 <begin_testcode+0x408>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,8(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
lui	gp,0xfffff
addi	gp,gp,-564 # ffffedcc <_end+0xffffcbc8>
li	s4,2047
bge	gp,s4,4cc <begin_testcode+0x44c>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,12(t2)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
li	sp,-1
li	s3,-1
bge	sp,s3,4ec <begin_testcode+0x46c>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,16(t2)
auipc	gp,0x2
addi	gp,gp,-1144 # 2078 <test_7_res>
lui	sp,0xd
addi	sp,sp,-820 # cccc <_end+0xaac8>
li	ra,-2047
li	s2,1
bge	ra,s2,514 <begin_testcode+0x494>
lui	sp,0x12
addi	sp,sp,939 # 123ab <_end+0x101a7>
sw	sp,0(gp)
lui	ra,0xd
addi	ra,ra,-820 # cccc <_end+0xaac8>
nop
li	a7,0
blez	a7,534 <begin_testcode+0x4b4>
lui	ra,0x12
addi	ra,ra,939 # 123ab <_end+0x101a7>
sw	ra,4(gp)
auipc	t0,0x2
addi	t0,t0,-1336 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-1212 # 2090 <end_signature>
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


