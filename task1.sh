#!/bin/bash

# Получить дату и время
current_datetime=$(date "+%Y-%m-%d %H:%M:%S")

# Получить список зарегистрированных пользователей (если они есть)
registered_users=$(who)

# Если список пуст, выведем соответствующее сообщение
if [ -z "$registered_users" ]; then
  registered_users="No registered users"
fi

# Получить uptime системы
system_uptime=$(cut -d. -f1 /proc/uptime)

# Сохранить информацию в файл
output_file="system_info.txt"
{
    echo "Current Date and Time: $current_datetime"
    echo "Registered Users:"
    echo "$registered_users"
    echo "System Uptime: $system_uptime seconds"
} > $output_file

# Вывести содержание файла (опционально)
cat $output_file