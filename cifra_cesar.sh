#!/bin/bash
#Autor: BlueMoon.

#Colores
endColour="\033[0m\e[0m"
blueColour="\e[0;34m\033[1m"
redColour="\e[0;31m\033[1m"

#Ctrl+c
function ctrl_c(){
        echo -e "\n\n${greenColour}Hasta pronto...${endColour}\n"  
        tput cnorm && exit 1
}

echo "*******************************"
echo -e "*${blueColour}CAESAR CYPHER o CIFRADO CÉSAR${endColour}*"
echo "*******************************"

trap ctrl_c INT 
#sleep 10


valida_cadena(){
	echo -e "\n${redColour}[+]${endColour}${blueColour}Ingresa un mensaje a cifrar:${endColour}"
	read texto_llano
	while ! [[ "$texto_llano" =~ [a-zA-Z] ]]; do #Expresión regular que verifica si la entrada es cualquier letra en mayúscula o minúscula.
		echo -e "\n${blueColour}[+]${endColour}${redColour}Sólo caracteres válidos, inténtalo de nuevo.${endColour}"
        read texto_llano
	done   
}

valida_numero(){
	echo -e "\n${redColour}[+]${endColour}${blueColour}Elige un despazamiento entre 1 a 25:${endColour}"
    read desplazamiento
    local rango=25
	while ! [[ "$desplazamiento" -lt "$rango" && "$desplazamiento" =~ [0-9] ]]; do #Validar si es número y si esta dentro del rango.
		echo -e "\n${blueColour}[+]${endColour}${redColour}Sólo números válidos, inténtalo de nuevo.${endColour}"
		read desplazamiento
	done 
}

cesar_cifra() { 
	local i=0;
	local resultado=""
 
	while [ $i -lt ${#texto_llano} ]; do
		caracter="${texto_llano:$i:1}" #Extraer cada carácter.
		i=$((i + 1))
		if [[ "$caracter" =~ [a-zA-Z] ]]; then
            if [[ "$caracter" =~ [A-Z] ]]; then
				#Convertir caracter a número decimal.
                nueva_vald=$(( ( $(printf '%d' "'$caracter") - 65 + desplazamiento) % 26 + 65 ))
				#65 es A en decimal. Si ingreso por ejemplo B al convertirlo será 66 y con un despazamiento de 3 tenemos: 
				#(66-65+3)Mod 26+65=69 que sería la letra E en decimal
            else
				#Lo mismo para las letras minúscula
                nueva_vald=$(( ( $(printf '%d' "'$caracter") - 97 + desplazamiento) % 26 + 97 ))
            fi
            resultado+="$(printf \\$(printf '%03o' "$nueva_vald"))"
        else

            resultado+="$caracter"
        fi
    done
	
    echo -e "\n${redColour}[+]${endColour}${blueColour}Tu mensaje cifrado es:\n${endColour}${resultado}"
}
#Cifrar el mensaje
valida_cadena
valida_numero
cesar_cifra
