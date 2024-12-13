# blt implementation
.text

.global _start

_start:
    addi a1, zero, 1;
    addi a2, zero, 2;

    blt a1, a2, desvio; # a1 < a2

    addi a3, zero, 10;

    sw a3, 60(zero);

desvio2:
    addi a5, zero, 20;
    sw a5, 60(zero);

    nop
    nop
    nop

desvio:
    addi a4, zero, 15;
    add a4, a4, a2;

    blt a2, a1, desvio2; # a1 < a1

    sw a4, 60(zero);
