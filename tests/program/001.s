.text

.global _start;

_start:
    addi a1, zero, 5; # a1 = zero + 5
    add a1, zero, a1;

    sw a1, 64(zero);
    