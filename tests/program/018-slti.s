.text

.global _start;

_start:
    addi a1, zero, 8; # a1 = zero + 5

    slti a2, a1, 10;

    sw a2, 60(zero);
