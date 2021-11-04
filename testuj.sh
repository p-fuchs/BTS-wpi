#!/bin/bash
cd "$(dirname "$0")"
echo ----KOMPILACJA----
echo Kompiluję program projektu numer 1
gcc -std=c11 -pedantic -Wall -Wextra -Werror -fstack-protector-strong -g project1.c -o project1

if [ "$?" -ne "0" ]; then
   echo !!! BŁĄD KOMPILACJI !!!;
   exit;
fi
printf "\n"

echo ----TESTOWANIE----
for file in tests/in/*
do
    echo -"$(basename $file)"-
    command=$(valgrind -q ./project1 <$file | diff - tests/out/$(basename $file))
    if [[ -z $command ]]; then
        printf "Pomyślnie ukończono próbę "$(basename $file)"."
        time(./project1 <$file >tmp)
        echo
    else
        echo !-!-! Błąd !-!-!
        echo Błędny wynik podczas wykonywania próby "$(basename $file)"
        echo Spodziewany wynik: 
        cat tests/out/$(basename $file)
        echo Otrzymany wynik:
        valgrind -q ./project1 <$file
        break
    fi
done

echo ----CZYSZCZENIE----
echo Usuwam plik wykonywalny projektu numer 1
rm project1
rm tmp
printf "\n"
echo ----ZAKOŃCZENIE PROCESU TESTOWANIA----
echo Dziękujemy za skorzystanie z programu testującego!