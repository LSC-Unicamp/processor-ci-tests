.text

.global _start;

_start:
    auipc a2, 446464;

    auipc a3, 446464;

    add a2, a3, a2;

    sw a2, 60(zero);
