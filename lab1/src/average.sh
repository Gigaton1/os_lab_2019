#!/bin/bash
count=$#
sum=0

for num in "$@"; do
    sum=$((sum + num))
done

if [ $count -eq 0 ]; then
    echo "Нет аргументов"
else
    avg=$(echo "scale=2; $sum / $count" | bc)
    echo "Количество: $count"
    echo "Среднее: $avg"
fi
