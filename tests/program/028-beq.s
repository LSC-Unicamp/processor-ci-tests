.text

.global _start

_start:
    addi a1, zero, 1;
    addi a2, zero, 2;

    beq a1, a1, desvio;

    addi a3, zero, 10;

    sw a3, 60(zero);

desvio:
    addi a4, zero, 15;
    add a4, a4, a2;

    sw a4, 60(zero);
