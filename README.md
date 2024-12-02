# Prolog Tasks Collection

Коллекция задач на Prolog, включающая:
1. Инвертирование списка
2. Удаление дубликатов
3. Объединение списков
4. Перестановки списка
5. Вычисление факториала
6. Удаление нечётных чисел
7. Нахождение НОД
8. Замена элементов на чётных позициях
9. Железнодорожные маршруты
10. Расстановка N ферзей

## Установка

1. Установите SWI-Prolog:
   - Windows: Скачайте и установите с [официального сайта](https://www.swi-prolog.org/download/stable)
   - Linux: `sudo apt-get install swi-prolog`
   - Mac: `brew install swi-prolog`

2. Склонируйте репозиторий или скачайте все файлы .pl

## Запуск

### Windows

1. Автоматическое тестирование всех предикатов:
   - Запустите `test_prolog.bat`
   - Результаты тестов будут выведены в консоль

2. Интерактивная консоль Prolog:
   - Запустите `prolog_console.bat`
   - Используйте предикаты напрямую в консоли

### Linux/Mac

1. Автоматическое тестирование:
   ```bash
   swipl -s reverse_list.pl -s remove_duplicates.pl -s merge_lists.pl -s permutation.pl -s factorial.pl -s remove_odd.pl -s gcd.pl -s replace_even.pl -s train_routes.pl -s n_queens.pl -s test_queries.pl -g "test_all" -t halt
   ```

2. Интерактивная консоль:
   ```bash
   swipl -s reverse_list.pl -s remove_duplicates.pl -s merge_lists.pl -s permutation.pl -s factorial.pl -s remove_odd.pl -s gcd.pl -s replace_even.pl -s train_routes.pl -s n_queens.pl
   ```