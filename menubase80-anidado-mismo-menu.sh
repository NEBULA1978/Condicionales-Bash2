#!/bin/bash

while true; do
  # Mostrar las carpetas en el directorio actual
  echo "Carpetas en el directorio actual:"
  ls -d ./*  # o ls -d -- ./*
  # Preguntar al usuario qué acción desea realizar
  echo "Elija una opción:"
  echo "1. Entrar en carpeta"
  echo "2. Leer archivo"
  echo "3. Salir"
  read -r opcion

  if [ "$opcion" -eq 1 ]; then
    # Preguntar al usuario qué acción desea realizar dentro de la carpeta
    echo "Opciones dentro de la carpeta:"
    echo "1. Entrar en una subcarpeta"
    echo "2. Leer un archivo"
    echo "3. Volver atrás"
    read -r subopcion

    if [ "$subopcion" -eq 1 ]; then
      # Preguntar al usuario qué carpeta desea entrar
      ls
      echo "Introduce el nombre de la carpeta a la que deseas entrar:"
      read -r carpeta
      # Verificar si la carpeta existe
      if [ -d "$carpeta" ]; then
        # Entrar en la carpeta
        cd "$carpeta" || return
        # Llamar al script nuevamente
        "$0"
      else
        # Mostrar un mensaje de error si la carpeta no existe
        echo "La carpeta $carpeta no existe."
        # Llamar al script nuevamente
        "$0"
      fi

    elif [ "$subopcion" -eq 2 ]; then
      # Preguntar al usuario qué archivo desea leer
      ls
      echo "Introduce el nombre del archivo que deseas leer:"
      read -r archivo
      # Verificar si el archivo existe
      if [ -f "$archivo" ]; then
        # Leer el archivo
        cat "$archivo"
        # Llamar al script nuevamente
        "$0"
      else
        # Mostrar un mensaje de error si el archivo no existe
        echo "El archivo $archivo no existe."
        # Llamar al script nuevamente
        "$0"
      fi

    elif [ "$subopcion" -eq 3 ]; then
      # Volver atrás
      cd ..
      # Llamar al script nuevamente
      "$0"

    else
      # Mostrar un mensaje de error si la opción no es válida
      echo "Opción no válida."
      # Llamar al script nuevamente
      "$0"
    fi

  elif [ "$opcion" -eq 2 ]; then
    # Preguntar al usuario qué archivo desea leer
    ls
    echo "Introduce el nombre del archivo que deseas leer:"
    read -r archivo
    # Verificar si el archivo existe
    if [ -f "$archivo" ]; then
      # Leer el archivo
      cat "$archivo"
      # Llamar al script nuevamente
      "$0"
    else
      # Mostrar un mensaje de error si el archivo no existe
      echo "El archivo $archivo no existe."
      # Llamar al script nuevamente
      "$0"
    fi

  elif [ "$opcion" -eq 3 ]; then
    # Salir del bucle
    break

 else
# Mostrar un mensaje de error si la opción no es válida
echo "Opción no válida."
# Llamar al script nuevamente
"$0"
fi
done


# En este ejemplo, el script entra en un bucle infinito y muestra las carpetas en el directorio actual. El usuario puede elegir entre entrar en una carpeta, leer un archivo o salir del bucle. Si elige entrar en una carpeta, se pregunta el nombre de la carpeta y se verifica si existe. Si existe, se entra en la carpeta y se llama al script nuevamente. Si elige leer un archivo, se pregunta el nombre del archivo y se verifica si existe. Si existe, se muestra su contenido y se llama al script nuevamente. Si elige salir, se sale del bucle. Si la opción elegida no es válida, se muestra un mensaje de error y se llama al script de nuevo para volver a mostrar las opciones de acción en el directorio actual. Si el usuario elige la opción 1 dentro de la opción 1, se mostrarán las carpetas en el directorio actual y se preguntará si desea entrar en una carpeta o leer un archivo. Si elige entrar en una carpeta, se le preguntará el nombre de la carpeta y se verificará si existe. Si existe, se entra en la carpeta y se llama al script nuevamente. Si elige leer un archivo, se le preguntará el nombre del archivo y se verificará si existe. Si existe, se mostrará su contenido y se llamará al script nuevamente. Si elige salir, volverá al menú principal. Si la opción elegida no es válida, se mostrará un mensaje de error y se llamará al script nuevamente.