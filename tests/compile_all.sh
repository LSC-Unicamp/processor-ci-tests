#!/bin/bash

# Caminho base onde estão as extensões
base_dir="."
march="rv32imafdbzicsr"  # Arquitetura padrão, pode ser ajustada conforme necessário

# Loop por todas as extensões
for extension_dir in "$base_dir"/*/; do
    extension=$(basename "$extension_dir")

    # Loop pelos níveis (basic, advanced, invalid)
    for level_dir in "$extension_dir"*/; do
        level=$(basename "$level_dir")

        # Diretório de origem dos arquivos .s
        src_dir="${level_dir}src"
        # Diretório de destino dos arquivos .hex
        memory_dir="${level_dir}memory"

        # Verifica se o diretório src existe
        if [ -d "$src_dir" ]; then
            echo "Compilando arquivos em ${src_dir}..."

            # Cria o diretório memory, se não existir
            mkdir -p "$memory_dir"

            # Loop pelos arquivos .s no diretório src
            for arquivo in "$src_dir"/*.s; do
                if [ -f "$arquivo" ]; then
                    # Obtém o nome do arquivo sem extensão
                    nome_sem_extensao=$(basename "$arquivo" | sed 's/\.[^.]*$//')

                    # Diretório temporário para build intermediário
                    build_dir="${level_dir}build"
                    mkdir -p "$build_dir"

                    echo "Compilando $arquivo..."

                    # Executa o processo de compilação e gera o arquivo .hex
                    riscv32-unknown-elf-as -march=$march "$arquivo" -o "$build_dir/$nome_sem_extensao.o"
                    riscv32-unknown-elf-ld "$build_dir/$nome_sem_extensao.o" -o "$build_dir/$nome_sem_extensao.elf"
                    riscv32-unknown-elf-objcopy -O binary "$build_dir/$nome_sem_extensao.elf" "$build_dir/$nome_sem_extensao.bin"
                    hexdump -v -e '1/4 "%08x" "\n"' "$build_dir/$nome_sem_extensao.bin" > "$memory_dir/$nome_sem_extensao.hex"

                    echo "$arquivo compilado e salvo como $memory_dir/$nome_sem_extensao.hex"
                fi
            done
        else
            echo "Nenhum diretório src encontrado em $level_dir."
        fi
    done
done

echo "Processo de compilação concluído."

