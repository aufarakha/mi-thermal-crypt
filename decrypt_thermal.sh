
LIST=$(ls my_thermal/*.conf)
mkdir output_dec

for FILE in $LIST; do
    FILE_DEC=$(basename "$FILE" _dec.conf)
    
    ./mi-thermal-crypt -i $FILE -o $FILE_DEC
    mv $FILE output_dec
done
