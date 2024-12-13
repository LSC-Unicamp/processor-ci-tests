

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
auipc	a6,0x2
addi	a6,a6,-128 # 2000 <begin_signature>
lui	zero,0x42727
li	zero,-401
lui	ra,0x56333
addi	ra,ra,585 # 56333249 <_end+0x56331045>
lui	sp,0x2d562
addi	sp,sp,82 # 2d562052 <_end+0x2d55fe4e>
lui	gp,0x52697
addi	gp,gp,867 # 52697363 <_end+0x5269515f>
lui	tp,0x736b8
addi	tp,tp,-1760 # 736b7920 <_end+0x736b571c>
lui	t0,0x73746
addi	t0,t0,1394 # 73746572 <_end+0x7374436e>
lui	t1,0x6e205
addi	t1,t1,-401 # 6e204e6f <_end+0x6e202c6b>
lui	t2,0x4d697
addi	t2,t2,-927 # 4d696c61 <_end+0x4d694a5d>
lui	s0,0x6f646
addi	s0,s0,371 # 6f646173 <_end+0x6f643f6f>
lui	s1,0x6b794
addi	s1,s1,99 # 6b794063 <_end+0x6b791e5f>
lui	a0,0x74657
addi	a0,a0,627 # 74657273 <_end+0x7465506f>
lui	a1,0x286e7
addi	a1,a1,-141 # 286e6f73 <_end+0x286e4d6f>
lui	a2,0x656b2
addi	a2,a2,72 # 656b2048 <_end+0x656afe44>
lui	a3,0x20526
addi	a3,a3,356 # 20526164 <_end+0x20523f60>
lui	a4,0x6f6d3
addi	a4,a4,-1748 # 6f6d292c <_end+0x6f6d0728>
lui	a5,0x69703
addi	a5,a5,-413 # 69702e63 <_end+0x69700c5f>
sw	zero,0(a6)
sw	ra,4(a6)
sw	sp,8(a6)
sw	gp,12(a6)
sw	tp,16(a6)
sw	t0,20(a6)
sw	t1,24(a6)
sw	t2,28(a6)
sw	s0,32(a6)
sw	s1,36(a6)
sw	a0,40(a6)
sw	a1,44(a6)
sw	a2,48(a6)
sw	a3,52(a6)
sw	a4,56(a6)
sw	a5,60(a6)
auipc	tp,0x2
addi	tp,tp,-264 # 2040 <test_A2_res>
lui	a6,0x636f6
addi	a6,a6,1121 # 636f6461 <_end+0x636f425d>
lui	a7,0x6a657
addi	a7,a7,-1216 # 6a656b40 <_end+0x6a65493c>
lui	s2,0x20287
addi	s2,s2,-1951 # 20286861 <_end+0x2028465d>
lui	s3,0x616a6
addi	s3,s3,1387 # 616a656b <_end+0x616a4367>
lui	s4,0x61766
addi	s4,s4,1312 # 61766520 <_end+0x6176431c>
lui	s5,0x2e205
addi	s5,s5,-923 # 2e204c65 <_end+0x2e202a61>
lui	s6,0x636f7
addi	s6,s6,-727 # 636f6d29 <_end+0x636f4b25>
lui	s7,0x73697
addi	s7,s7,46 # 7369702e <_end+0x73694e2a>
lui	s8,0x66208
addi	s8,s8,-1681 # 6620796f <_end+0x6620576b>
lui	s9,0x67652
addi	s9,s9,105 # 67652069 <_end+0x6764fe65>
lui	s10,0x65737
addi	s10,s10,865 # 65737361 <_end+0x6573515d>
lui	s11,0x75732
addi	s11,s11,109 # 7573206d <_end+0x7572fe69>
lui	t3,0x3a291
addi	t3,t3,-758 # 3a290d0a <_end+0x3a28eb06>
lui	t4,0x68697
addi	t4,t4,800 # 68697320 <_end+0x6869511c>
lui	t5,0x61642
addi	t5,t5,116 # 61642074 <_end+0x6163fe70>
lui	t6,0x75207
addi	t6,t6,613 # 75207265 <_end+0x75205061>
sw	a6,0(tp) # 0 <_start>
sw	a7,4(tp) # 4 <trap_vector>
sw	s2,8(tp) # 8 <trap_vector+0x4>
sw	s3,12(tp) # c <trap_vector+0x8>
sw	s4,16(tp) # 10 <trap_vector+0xc>
sw	s5,20(tp) # 14 <trap_vector+0x10>
sw	s6,24(tp) # 18 <trap_vector+0x14>
sw	s7,28(tp) # 1c <trap_vector+0x18>
sw	s8,32(tp) # 20 <trap_vector+0x1c>
sw	s9,36(tp) # 24 <trap_vector+0x20>
sw	s10,40(tp) # 28 <trap_vector+0x24>
sw	s11,44(tp) # 2c <trap_vector+0x28>
sw	t3,48(tp) # 30 <trap_vector+0x2c>
sw	t4,52(tp) # 34 <trap_vector+0x30>
sw	t5,56(tp) # 38 <trap_vector+0x34>
sw	t6,60(tp) # 3c <handle_exception>
auipc	tp,0x2
addi	tp,tp,-400 # 2080 <test_A3_res>
sw	zero,0(tp) # 0 <_start>
sw	ra,4(tp) # 4 <trap_vector>
sw	sp,8(tp) # 8 <trap_vector+0x4>
sw	gp,12(tp) # c <trap_vector+0x8>
auipc	t0,0x2
addi	t0,t0,-552 # 2000 <begin_signature>
lui	t1,0x10000
addi	t1,t1,8 # 10000008 <_end+0xfffde04>
sw	t0,0(t1)
auipc	t0,0x2
addi	t0,t0,-428 # 2090 <end_signature>
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


