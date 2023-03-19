#!/bin/bash

while true; do
  # Mostrar las carpetas en el directorio actual
  echo "Carpetas en el directorio actual:"
  ls -d ./* # o ls -d -- ./*
  # Preguntar al usuario qué acción desea realizar
  echo "Elija una opción:"
  echo "1. Entrar en carpeta"
  echo "2. Leer archivo"
  echo "3. Mostrar directorio actual"
  echo "4. Crear nueva carpeta"
  echo "5. Crear nuevo archivo"
  echo "6. Salir"
  read -r opcion

  if [ "$opcion" -eq 1 ]; then
    # Preguntar al usuario qué carpeta desea entrar
    ls
    echo "Introduce el nombre de la carpeta a la que deseas entrar:"
    read -r carpeta
    # Verificar si la carpeta existe
    if [ -d "$carpeta" ]; then
      # Entrar en la carpeta
      cd "$carpeta" || return
    else
      # Mostrar un mensaje de error si la carpeta no existe
      echo "La carpeta $carpeta no existe. ¿Deseas crear una nueva carpeta con este nombre? (s/n)"
      read -r respuesta
      if [ "$respuesta" = "s" ]; then
        if [ -d "$carpeta" ]; then
          echo "Introduce el nombre de la carpeta a la que deseas entrar:"
          read -r respuesta
          # Crear la carpeta
          mkdir "$carpeta"
          echo "La carpeta $carpeta ha sido creada."
        fi
      fi
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
    else
      # Mostrar un mensaje de error si el archivo no existe
      echo "El archivo $archivo no existe. ¿Deseas leer un nuevo archivo de esta carpeta? (s/n)"
      read -r respuesta
      if [ "$respuesta" = "s" ]; then
        # Verificar si el archivo existe
        if [ -f "$archivo" ]; then
          # Leer el archivo
          cat "$archivo"
          echo "El archivo $archivo hemos leído."
        fi
      fi
    fi

  elif [ "$opcion" -eq 3 ]; then
    # Mostrar las carpetas en el directorio actual
    echo "Carpetas en el directorio actual:"
    ls -d ./*

  elif [ "$opcion" -eq 4 ]; then
    # Preguntar al usuario qué carpeta desea crear
    echo "Introduce el nombre de la nueva carpeta:"
    read -r carpeta
    # Crear la carpeta
    mkdir "$carpeta"
    echo "La carpeta $carpeta ha sido creada."
    echo -e "\n"
    # Mostrar un mensaje de error si el archivo no existe
    # Verificar si la carpeta existe
    echo "¿Deseas leer un nuevo archivo de esta carpeta? (s/n)"
    read -r respuesta
    if [ "$respuesta" = "s" ]; then

      if [ -d "$archivo" ]; then
        # Leer el archivo
        cat "$archivo"
        echo "El archivo $archivo hemos leído."
      fi
    fi

  elif [ "$opcion" -eq 5 ]; then
    # Preguntar al usuario qué archivo desea crear
    echo "Introduce el nombre del nuevo archivo:"
    read -r archivo
    # Crear el archivo
    touch "$archivo"
    echo "El archivo $archivo ha sido creado."
    echo "¿Deseas leer un nuevo archivo de esta carpeta? (s/n)"
    read -r respuesta
    if [ "$respuesta" = "s" ]; then
      # Mostrar un mensaje de error si el archivo no existe
      # Verificar si la carpeta existe
      echo "Introduce el nombre del archivo que deseas leer:"
      read -r archivo
      if [ -f "$archivo" ]; then
        # Leer el archivo
        cat "$archivo"
        echo "El archivo $archivo hemos leído."
      fi
    fi

  elif [ "$opcion" -eq 6 ]; then
    # Salir del bucle
    break
  else
    # Mostrar un mensaje de error si la opción no es válida
    echo "Opción no válida."
  fi
done

# En este ejemplo, después del bloque `done` del bucle `while`, se agrega un mensaje de despedida para indicar que el programa ha terminado. Puedes agregar cualquier otra línea de código que necesites después del bucle `while`.
