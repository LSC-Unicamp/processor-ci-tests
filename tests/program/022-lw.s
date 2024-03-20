.text

.global _start;

_start:
    addi a1, zero, 10;
    addi a2, zero, 2047;
    add a3, a2, a1;

    sw a3, 28(zero);
    lw a4, 28(zero);
    sw a4, 60(zero);
