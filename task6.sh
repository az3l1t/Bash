#!/bin/bash

# Замените 'path/to/directory' путем к директории, в которой нужно искать исполняемые файлы.
DIRECTORY='c:/ПРОДУК'

# Проверяем, существует ли каталог.
if [ -d "$DIRECTORY" ]; then
    # Ищем все исполняемые файлы в директории.
    echo "Исполняемые файлы в $DIRECTORY:"
    find "$DIRECTORY" -maxdepth 1 -type f -executable -print
else
    echo "Директория $DIRECTORY не существует."
fi
