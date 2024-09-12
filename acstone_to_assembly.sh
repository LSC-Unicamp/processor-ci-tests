#!/usr/bin/zsh

#!/bin/zsh

diretorio="ACStone"
march="rv32imafdzicsr"
diretorio_atual=$(pwd)


mkdir -p ACStoneAssembly

# Verifica se o diretório existe
if [ -d "$diretorio" ]; then
    # Loop pelos arquivos no diretório
    for arquivo in "$diretorio"/*; do
        # Verifica se é um arquivo regular
        if [ -f "$arquivo" ]; then
            echo "Compilando $arquivo"  # Faça o que desejar com o arquivo
            nome_sem_extensao=$(basename "$arquivo" | sed 's/\.[^.]*$//')

            riscv64-unknown-elf-gcc -march=$march -std=gnu99 -mabi=ilp32d $arquivo -S -o \
            $diretorio_atual/ACStoneAssembly/$nome_sem_extensao.s -nostartfiles \
            -nostdinc -nostdlib

            echo "$arquivo compilado"  # Faça o que desejar com o arquivo
        fi
    done
else
    echo "O diretório não existe."
fi
