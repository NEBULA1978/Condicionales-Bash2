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

while true; do
    echo -n "Ejecutar programas? Selecciona una de las letras [s/n/m/l]: "
    echo -e "\nEjecutando difrentes juegos segun la letra seleccionada"
    echo -e "Letra s o S Tu numero no es igual a 5 o si..."
    echo -e "Letra n o N se sale del programa"
    echo -e "Letra m o M Tu numero está fuera  del rango [5, 10] o dentro"
    echo -e "Letra l o L Desde el cero a un nº menos introducido"

    read resultado

    if [[ $resultado == [sS] ]]; then
        echo "Tu numero no es igual a 5 o si..."
        echo -n "Escribe un número: "
        read valor
        # -ne: no igual
        if [[ $valor -ne 5 ]]; then
            echo "Tu numero no es igual a 5"
        else
            echo "Tu numero es igual a 5"
        fi

    elif [[ $resultado == [nN] ]]; then
        echo "El programa se va a cerrar"
        break

    elif [[ $resultado == [mM] ]]; then
        echo "El programa se va a ejecutar"
        echo "Tu numero está fuera  del rango [5, 10] o dentro"

        echo -n "Escribe un número: "
        read valor
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
        read limite

        for ((i = 0; i < "$limite"; i++)); do
            echo $i
        done

    else
        echo "Opcion invalida"
    fi
done

# Este es un script de shell que muestra un menú de opciones para el usuario y realiza diferentes acciones según la opción elegida. A continuación se explican las diferentes partes del script:

#     La sección de comentarios al principio del script proporciona una descripción de los operadores utilizados en las comparaciones que se hacen más adelante en el script.
#     Se utiliza un bucle while para que el programa se ejecute continuamente hasta que el usuario seleccione la opción para salir del programa.
#     Se muestra un menú con cuatro opciones (s, n, m, l) para que el usuario elija.
#     Según la opción seleccionada por el usuario, se ejecuta una acción diferente. Si el usuario selecciona 's', se le solicita que ingrese un número y se comprueba si ese número es igual a 5 o no. Si el usuario selecciona 'n', se muestra un mensaje de despedida y se sale del bucle while. Si el usuario selecciona 'm', se le pide que ingrese un número y se comprueba si ese número está dentro del rango [5, 10] o no. Si el usuario selecciona 'l', se le pide que ingrese un número y se muestra un bucle for que cuenta desde 0 hasta el número ingresado menos 1.
#     Si el usuario selecciona una opción que no está en el menú, se muestra un mensaje de error.
#     El programa sigue ejecutándose en un bucle hasta que el usuario selecciona la opción para salir del programa.
