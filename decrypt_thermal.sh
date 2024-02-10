
LIST=$(ls my_thermal/*.conf)
mkdir output_dec

for FILE in $LIST; do
    
    ./mi-thermal-crypt -i $FILE -o $FILE
    mv $FILE output_dec
done
