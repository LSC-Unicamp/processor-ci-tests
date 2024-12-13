# sub implementation
.text

.global _start;

_start:
    addi a1, zero, 15; # a1 = zero + 15

    addi a2, zero, 5;

    sub a3, a1, a2; # a3 = a1 - a2

    sw a3, 60(zero);
    