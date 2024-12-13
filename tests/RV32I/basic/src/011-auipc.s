# auipc implementation
.text

.global _start;

_start:
    auipc a2, 446464; # a2 = 446464 + PC, PC = 0x00000000

    auipc a3, 446464; # a3 = 446464 + PC, PC = 0x00000004

    add a2, a3, a2; # a2 = a3 + a2

    sw a3, 56(zero);
    sw a2, 60(zero);
