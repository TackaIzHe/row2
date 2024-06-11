#!/bin/bash


result=$(echo "scale=10; 10^10 + sqrt(64)" | bc)
for i in {1..5}; do
    if [ $i -eq 3 ]; then
        echo "Это третья итерация"
    else
        echo "Итерация $i"
    fi
done


echo "Введите ваше имя:"
read name

if [[ $name == "ben" ]]; then
    echo "Привет, ben!"
elif [[ $name == "Bob" ]]; then
    echo "Привет, Bob!"
else
    echo "Здравствуй, $name"
fi


fibonacci() {
    n=$1
    if [ $n -le 1 ]; then
        echo $n
    else
        echo $(( $(fibonacci $((n-1))) + $(fibonacci $((n-2))) ))
    fi
}


fibonacci 10


echo "Это сложный скрипт" > complex_script.txt


output=$(ls -l)


echo "Результат сложных вычислений: $result"
echo "Содержимое каталога:"
echo "$output"


exit 0
