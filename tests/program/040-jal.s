.text

.global _start

_start:
    addi a3, zero, 3;
    
    jal subrotina

    addi a4, zero, 5;

    sw a4, 60(zero);


subrotina:
    addi a5, zero, 10;

    sw a5, 60(zero);
