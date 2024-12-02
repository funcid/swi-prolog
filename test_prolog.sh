#!/bin/bash
echo "Testing Prolog predicates..."
echo

# Создаем временный файл с тестами
cat > test_queries.pl << 'EOF'
% Test queries
test_all :-
    write('Testing reverse_list:'), nl,
    reverse_list([1,2,3,4], X1),
    write('Result: '), write(X1), nl, nl,
    
    write('Testing factorial:'), nl,
    factorial_right(5, X2),
    write('Right recursion result: '), write(X2), nl,
    factorial_left(5, X3),
    write('Left recursion result: '), write(X3), nl, nl,
    
    write('Testing remove duplicates:'), nl,
    remove_duplicates([1,2,2,3,3,3,4], X4),
    write('Result: '), write(X4), nl, nl,
    
    write('Testing merge lists:'), nl,
    merge_lists1([1,2], [3,4], X5),
    write('Merge1 result: '), write(X5), nl,
    merge_lists2([1,2], [3,4], X6),
    write('Merge2 result: '), write(X6), nl, nl,
    
    write('Testing remove odd numbers:'), nl,
    remove_odd([1,2,3,4,5,6], X7),
    write('Result: '), write(X7), nl, nl,
    
    write('Testing GCD:'), nl,
    gcd(24, 36, X8),
    write('GCD of 24 and 36 is: '), write(X8), nl, nl,
    
    write('Testing replace even positions:'), nl,
    replace_even_positions([a,b,c,d,e], X9),
    write('Result: '), write(X9), nl, nl,
    
    write('Testing train routes:'), nl,
    needs_two_transfers(moscow, oslo),
    write('Need two transfers from Moscow to Oslo: true'), nl, nl,
    
    write('Testing N Queens (n=4):'), nl,
    n_queens(4, X10),
    write('First solution: '), write(X10), nl,
    fail.
test_all.
EOF

# Запускаем SWI-Prolog с нашими файлами и тестами
swipl -s reverse_list.pl \
      -s remove_duplicates.pl \
      -s merge_lists.pl \
      -s permutation.pl \
      -s factorial.pl \
      -s remove_odd.pl \
      -s gcd.pl \
      -s replace_even.pl \
      -s train_routes.pl \
      -s n_queens.pl \
      -s test_queries.pl \
      -g "test_all" \
      -t halt

# Удаляем временный файл
rm test_queries.pl

echo
read -p "Press Enter to continue..." 