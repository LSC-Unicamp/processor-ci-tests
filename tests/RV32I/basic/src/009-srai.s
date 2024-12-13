# srai implementation
.text

.global _start;

_start:
    addi a1, zero, 8; # a1 = zero + 5

    srai a2, a1, 1; # a2 = a1 >>> 1

    sw a2, 60(zero);
