
LIST=$(ls my_thermal/*.conf)
mkdir output_dec

for FILE in $LIST; do
    FILE_NAME=$(echo "$FILE" | sed 's/\.conf$//' | echo "_dec.conf")
    
    ./mi-thermal-crypt -i $FILE -o $FILE_NAME
    mv $FILE_NAME output_dec
done
