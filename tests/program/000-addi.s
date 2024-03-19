.text

.global _start;

_start:
    addi a1, zero, 5; # a1 = zero + 5

    sw a1, 60(zero);
    