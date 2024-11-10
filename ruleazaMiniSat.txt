#!/bin/bash

# Folderul care contine fisierele .cnf
input_folder="./inputsat"        # Calea relativa catre folderul de intrare

# Folderul unde se vor salva rezultatele
output_folder="./results"
mkdir -p "$output_folder"         # Creeaza folderul de rezultate daca nu exista

# Verifica daca exista fisiere .cnf în folderul de input
if ! ls -A "$input_folder"/*.cnf >/dev/null 2>&1; then
    echo "Folderul $input_folder nu contine fisiere .cnf"
    exit 1
fi

# Parcurge fiecare fisier .cnf din folderul de input
for cnf_file in "$input_folder"/*.cnf; do
    # Extrage numele fisierului fara extensie completa
    filename=$(basename "$cnf_file" .sat.sanitized.cnf)

    # Seteaza numele fisierelor de output
    output_file="$output_folder/$filename.out"
    stats_file="$output_folder/$filename.stats"

    # Ruleaza MiniSAT si salveaza rezultatul și statisticile
    minisat "$cnf_file" "$output_file" > "$stats_file"
    echo "Procesat ${cnf_file} -> Rezultat: ${output_file}, Statistici: ${stats_file}"