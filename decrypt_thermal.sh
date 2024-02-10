
LIST=$(ls *.conf)

for FILE in $LIST; do
    FILE_NAME=$(echo "$FILE" | sed 's/\.conf$//')
    ./mi-thermal-crypt -i $FILE -o ${FILE_NAME}_dec.conf
done
