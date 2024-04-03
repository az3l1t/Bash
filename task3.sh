#!/bin/bash

# Замените 'path/to/your/file.txt' на путь к вашему файлу.
FILE_PATH='c:/ПРОДУК/system_info.txt'

# Проверяем, существует ли файл.
if [ -f "$FILE_PATH" ]; then
    # Читаем и выводим файл построчно.
    while IFS= read -r line; do
        echo "$line"
    done < "$FILE_PATH"
elsec;
    echo "Файл $FILE_PATH не существует."
fi
