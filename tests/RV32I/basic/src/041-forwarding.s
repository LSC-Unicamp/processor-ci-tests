.global _start

_start:
    addi a1, zero, 10      # Carrega o primeiro número (10) em a1
    addi a2, zero, 20      # Carrega o segundo número (20) em a2

    add a3, a1, a2       # Soma a1 e a2, armazena o resultado em a3
    
    srli a3, a3, 1

    add a4, a1, a2

    add a5, a4, a3

    sw a5, 60(zero)