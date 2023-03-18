#!/bin/bash
# -gt greater than
# -ge greater or equal
# -lt lower than
# -le lower or equal
# -eq equal
# -ne not equal

# -gt: mayor que
# -ge: mayor o igual
# -lt: menor que
# -le: menor o igual
# -eq: igual
# -ne: no igual


echo -n "Ejecutar programas? Selecciona una de las letras [s/n/m/l]: "
echo -e "\nEjecutando difrentes juegos segun la letra seleccionada"
echo -e "Letra s o S Tu numero no es igual a 5 o si..."
echo -e "Letra n o N se sale del programa"
echo -e "Letra m o M Tu numero está fuera  del rango [5, 10] o dentro"
echo -e "Letra l o L Desde el cero a un nº menos introducido"

read -r resultado

if [[ $resultado == [sS] ]]; then
    echo "Tu numero no es igual a 5 o si..."
    echo -n "Escribe un número: "
    read -r valor
    # -ne: no igual
    if [[ $valor -ne 5 ]]; then
        echo "Tu numero no es igual a 5"
    else
        echo "Tu numero es igual a 5"
    fi

elif [[ $resultado == [nN] ]]; then
    echo "El programa no se va a instalar"

elif [[ $resultado == [mM] ]]; then
    echo "El programa se va a ejecutar"
    echo "Tu numero está fuera  del rango [5, 10] o dentro"

    echo -n "Escribe un número: "
    read -r valor
    # -lt: menor que
    if [ "$valor" -lt 5 ] || [ "$valor" -gt 10 ]; then
        echo "Tu numero está fuera  del rango [5, 10]"
    else
        echo "Tu numero está en el rango [5, 10]"
    fi

# -a and
# -o or
elif [[ $resultado == [lL] ]]; then
    echo "Escribe un numero bucle For:"
    echo "Desde el cero a un nº menos introducido"
    echo -n "Escribe un número: "
    read -r limite

    for (( i = 0; i < $limite; i++ )); do
        echo $i
    done


else
    echo "Opcion invalida"
fi

# Este es un script de shell que muestra un menú con cuatro opciones (s, n, m, l) y realiza diferentes acciones dependiendo de la opción seleccionada por el usuario. A continuación se detalla cada una de las opciones:

#     s o S: se le pide al usuario que ingrese un número y luego se comprueba si ese número es igual a 5 o no.
#     n o N: se muestra un mensaje indicando que el programa se cerrará y luego se sale del bucle while.
#     m o M: se le pide al usuario que ingrese un número y luego se comprueba si ese número está dentro del rango [5, 10] o no.
#     l o L: se le pide al usuario que ingrese un número y luego se muestra un bucle for que cuenta desde 0 hasta el número ingresado menos 1.

# El programa se ejecutará continuamente hasta que el usuario seleccione la opción 'n' o 'N' en el menú.
