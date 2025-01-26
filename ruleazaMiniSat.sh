#!/bin/bash
input_folder="./inputsat"
output_folder="./results"
mkdir -p "$output_folder"
if ! ls -A "$input_folder"/.cnf >/dev/null 2>&1; then
echo "Folderul $input_folder nu contine fisiere.cnf"
exit 1
fi

for cnf_file in "$input_folder"/.cnf; do
filename=$(basename "$cnf_file" .sat.sanitized.cnf)
echo "Incepem procesarea fisierului: $cnf_file"
output_file="$output_folder/$filename.out"
stats_file="$output_folder/$filename.stats"
start_time=$(date +%s)
minisat "$cnf_file" "$output_file" > "$stats_file"
end_time=$(date +%s)
duration=$((end_time - start_time))
echo "Procesat ${cnf_file} -> Rezultat:  ${output_file}, Statistici: ${stats_file}"
echo "Timp procesare pentru ${cnf_file}: ${duration} secunde"
done