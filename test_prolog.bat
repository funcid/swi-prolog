@echo off
SET PROLOG_PATH="C:\Program Files\swipl\bin\swipl.exe"

IF NOT EXIST %PROLOG_PATH% (
    echo SWI-Prolog не найден в стандартном месте установки
    echo Пожалуйста, укажите правильный путь к swipl.exe в переменной PROLOG_PATH
    pause
    exit /b 1
)

echo Testing Prolog predicates...
echo.

REM Создаем временный файл с тестами
echo %% Test queries > test_queries.pl
echo test_all :- > test_queries.pl
echo     write('Testing reverse_list:'), nl, >> test_queries.pl
echo     reverse_list([1,2,3,4], X1), >> test_queries.pl
echo     write('Result: '), write(X1), nl, nl, >> test_queries.pl
echo     write('Testing factorial:'), nl, >> test_queries.pl
echo     factorial_right(5, X2), >> test_queries.pl
echo     write('Right recursion result: '), write(X2), nl, >> test_queries.pl
echo     factorial_left(5, X3), >> test_queries.pl
echo     write('Left recursion result: '), write(X3), nl, nl, >> test_queries.pl
echo     write('Testing remove duplicates:'), nl, >> test_queries.pl
echo     remove_duplicates([1,2,2,3,3,3,4], X4), >> test_queries.pl
echo     write('Result: '), write(X4), nl, nl, >> test_queries.pl
echo     write('Testing merge lists:'), nl, >> test_queries.pl
echo     merge_lists1([1,2], [3,4], X5), >> test_queries.pl
echo     write('Merge1 result: '), write(X5), nl, >> test_queries.pl
echo     merge_lists2([1,2], [3,4], X6), >> test_queries.pl
echo     write('Merge2 result: '), write(X6), nl, nl, >> test_queries.pl
echo     write('Testing remove odd numbers:'), nl, >> test_queries.pl
echo     remove_odd([1,2,3,4,5,6], X7), >> test_queries.pl
echo     write('Result: '), write(X7), nl, nl, >> test_queries.pl
echo     write('Testing GCD:'), nl, >> test_queries.pl
echo     gcd(24, 36, X8), >> test_queries.pl
echo     write('GCD of 24 and 36 is: '), write(X8), nl, nl, >> test_queries.pl
echo     write('Testing replace even positions:'), nl, >> test_queries.pl
echo     replace_even_positions([a,b,c,d,e], X9), >> test_queries.pl
echo     write('Result: '), write(X9), nl, nl, >> test_queries.pl
echo     write('Testing train routes:'), nl, >> test_queries.pl
echo     needs_two_transfers(moscow, oslo), >> test_queries.pl
echo     write('Need two transfers from Moscow to Oslo: true'), nl, nl, >> test_queries.pl
echo     write('Testing N Queens (n=4):'), nl, >> test_queries.pl
echo     n_queens(4, X10), >> test_queries.pl
echo     write('First solution: '), write(X10), nl, >> test_queries.pl
echo     fail. >> test_queries.pl
echo test_all. >> test_queries.pl

REM Запускаем SWI-Prolog с нашими файлами и тестами
%PROLOG_PATH% -s reverse_list.pl -s remove_duplicates.pl -s merge_lists.pl -s permutation.pl -s factorial.pl -s remove_odd.pl -s gcd.pl -s replace_even.pl -s train_routes.pl -s n_queens.pl -s test_queries.pl -g "test_all" -t halt

REM Удаляем временный файл
del test_queries.pl

echo.
pause 