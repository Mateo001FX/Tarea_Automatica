#!/bin/bash

# Definir el nombre del archivo
ARCHIVO="tareas.txt"

# Comprobar si el archivo ya existe
if [ ! -f "$ARCHIVO" ]; then
    echo "Creando nuevo archivo de tareas..."
   
    # Crear el archivo y añadir contenido
    echo "Lista de Tareas:" > "$ARCHIVO"
    echo "===============" >> "$ARCHIVO"
    echo "1. Automatización de tareas en Linux" >> "$ARCHIVO"
    echo "2. Control y gestión de permisos" >> "$ARCHIVO"
    echo "3. Trabajo colaborativo con Git" >> "$ARCHIVO"
    echo "4. Gestión de procesos del sistema" >> "$ARCHIVO"
    echo "5. Crear documentación del proyecto" >> "$ARCHIVO"
   
    echo "Archivo creado exitosamente."
else
    echo "El archivo ya existe. No se realizarán cambios en el contenido."
fi

# Cambiar permisos para que sea solo lectura (readable para todos)
chmod 444 "$ARCHIVO"
echo "Permisos cambiados a solo lectura"

# Mostrar el contenido del archivo
echo -e "\nContenido del archivo:"
echo "====================="
cat "$ARCHIVO"

# Mostrar los permisos actuales del archivo
echo -e "\nPermisos actuales del archivo:"
ls -l "$ARCHIVO"

