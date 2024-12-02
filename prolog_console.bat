@echo off
SET PROLOG_PATH="C:\Program Files\swipl\bin\swipl.exe"

IF NOT EXIST %PROLOG_PATH% (
    echo SWI-Prolog не найден в стандартном месте установки
    echo Пожалуйста, укажите правильный путь к swipl.exe в переменной PROLOG_PATH
    pause
    exit /b 1
)

%PROLOG_PATH% -s reverse_list.pl -s remove_duplicates.pl -s merge_lists.pl -s permutation.pl -s factorial.pl -s remove_odd.pl -s gcd.pl -s replace_even.pl -s train_routes.pl -s n_queens.pl 