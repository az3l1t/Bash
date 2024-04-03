#!/bin/bash

# Замените 'path/to/directory' на путь к вашей директории.
DIRECTORY='c:\Java'

# Проверяем, существует ли директория.
if [ -d "$DIRECTORY" ]; then
    echo "Содержимое директории $DIRECTORY:"
    ls -l "$DIRECTORY"
else
    echo "Директория $DIRECTORY не существует."
fi