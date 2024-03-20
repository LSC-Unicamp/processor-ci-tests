.text

.global _start

_start:
    addi a3, zero, 3;
    add a3, a3, a3;

    la a7, subrotina;
    
    jalr ra, a7, 0;

    addi a4, zero, 7;

    sw a4, 60(zero);

subrotina:
    addi a5, zero, 10;
    jalr zero, ra, 0;

    sw a5, 60(zero);
