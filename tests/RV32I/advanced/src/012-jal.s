# jal implementation
.text

.global _start

_start:
    addi a3, zero, 3;
    
    jal subrotina;

    addi a4, zero, 5;

    sw a4, 60(zero);


subrotina:
    addi a5, zero, 10;

    jal subrotina2;

    sw a5, 60(zero);

subrotina2:
    addi a6, zero, 15;

    sw a6, 60(zero);
