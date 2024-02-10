
LIST=$(ls my_thermal/*.conf)
mkdir output_dec

for FILE in $LIST; do
    FILE_NAME=$(echo "$FILE" | sed 's/\.conf$//')
    ./mi-thermal-crypt -i my_thermal/${FILE} -o output_dec/${FILE_NAME}_dec.conf
done
