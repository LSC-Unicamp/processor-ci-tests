.text

.global _start;

_start:
    addi a1, zero, 5; # a1 = zero + 5

    add a2, zero, a1;
    add a1, zero, a1;
    add a1, zero, a1;

    sub a3, a1, a2;

    sw a3, 64(zero);
    