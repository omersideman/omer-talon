tag: user.code_operators_math
-

# math operators
make (minus | subtract): user.code_operator_subtraction()
make (plus | add): user.code_operator_addition()
make (times | multiply): user.code_operator_multiplication()
make divide: user.code_operator_division()
make mod: user.code_operator_modulo()
(make (power | exponent) | to the power [of]): user.code_operator_exponent()

# comparison operators
(make | is) equal: user.code_operator_equal()
(make | is) not equal: user.code_operator_not_equal()
(make | is) (greater | more): user.code_operator_greater_than()
(make | is) (less | below) [than]: user.code_operator_less_than()
(make | is) greater [than] or equal: user.code_operator_greater_than_or_equal_to()
(make | is) less [than] or equal: user.code_operator_less_than_or_equal_to()

# logical operators
(make | logical) and: user.code_operator_and()
(make | logical) or: user.code_operator_or()

# set operators
(make | is) in: user.code_operator_in()
(make | is) not in: user.code_operator_not_in()

# TODO: This operator should either be abstracted into a function or removed.
(make | pad) colon: " : "
