tag: user.code_operators_assignment
-
tag(): user.code_operators_math
tag(): user.code_operators_bitwise

# assignment
make is: user.code_operator_assignment()

# combined computation and assignment
make (minus | subtract) equals: user.code_operator_subtraction_assignment()
make (plus | add) equals: user.code_operator_addition_assignment()
make (times | multiply) equals: user.code_operator_multiplication_assignment()
make divide equals: user.code_operator_division_assignment()
make mod equals: user.code_operator_modulo_assignment()
[make] increment: user.code_operator_increment()

#bitwise operators
[make] bit [wise] and equals: user.code_operator_bitwise_and_assignment()
[make] bit [wise] or equals: user.code_operator_bitwise_or_assignment()
(make | logical | bitwise) (ex | exclusive) or equals:
    user.code_operator_bitwise_exclusive_or_assignment()
[(make | logical | bitwise)] (left shift | shift left) equals:
    user.code_operator_bitwise_left_shift_assignment()
[(make | logical | bitwise)] (right shift | shift right) equals:
    user.code_operator_bitwise_right_shift_assignment()
