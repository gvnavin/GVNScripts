echo "baseDir : " $1
files1=($(ls -d $1/*/src/*/))
files2=($(ls -d $1/*/))

combined=( "${files1[@]}" "${files2[@]}" )

for i in "${!combined[@]}"; do 
  printf "\t%s\t%s\n" "$i" "${combined[$i]}"
done

echo "Please enter dir index : "
read input_dir_index
echo "You entered: index : $input_dir_index, file : ${combined[$input_dir_index]}"

cd ${combined[$input_dir_index]}