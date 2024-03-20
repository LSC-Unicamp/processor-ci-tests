.text

.global _start;

_start:
    addi a1, zero, 0;
    jal loop;

loop:
    addi a1, a1, 1; # a1 = a1 + 1

    jal loop;
    