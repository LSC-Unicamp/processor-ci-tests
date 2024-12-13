# srli implementation
.text

.global _start;

_start:
    addi a1, zero, 4; # a1 = zero + 5
    
    srli a3, a1, 1; # a3 = a1 >> 1

    sw a3, 60(zero);
    