tag: user.line_commands
-
#this defines some common line commands. More may be defined that are ide-specific.
lend: edit.line_end()
bend: edit.line_start()
go <number>: edit.jump_line(number)
go <number> end:
    edit.jump_line(number)
    edit.line_end()
comment [row] <number>:
    user.select_range(number, number)
    code.toggle_comment()
comment <number> through <number>:
    user.select_range(number_1, number_2)
    code.toggle_comment()
<user.delete> [row] <number>:
    user.select_range(number, number)
    edit.delete()
<user.delete> <number> through <number>:
    user.select_range(number_1, number_2)
    edit.delete()
copy [row] <number>:
    user.select_range(number, number)
    edit.copy()
copy <number> through <number>:
    user.select_range(number_1, number_2)
    edit.copy()
cut [row] <number>:
    user.select_range(number, number)
    edit.cut()
cut [row] <number> through <number>:
    user.select_range(number_1, number_2)
    edit.cut()
paste <number> through <number>:
    user.select_range(number_1, number_2)
    edit.paste()
<user.select> [row] <number>: user.select_range(number, number)
<user.select> <number> through <number>: user.select_range(number_1, number_2)
    tab that: edit.indent_more()
tab [row] <number>:
    edit.jump_line(number)
    edit.indent_more()
tab <number> through <number>:
    user.select_range(number_1, number_2)
    edit.indent_more()
retab that: edit.indent_less()
retab [row] <number>:
    user.select_range(number, number)
    edit.indent_less()
retab <number> through <number>:
    user.select_range(number_1, number_2)
    edit.indent_less()
drag [row] down: edit.line_swap_down()
drag [row] up: edit.line_swap_up()
drag up [row] <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> through <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag down [row] <number>:
    user.select_range(number, number)
    edit.line_swap_down()
drag down <number> through <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone [row] <number>: user.line_clone(number)

# <user.select> camel left: user.extend_camel_left()
# <user.select> camel right: user.extend_camel_right()
# go camel left: user.camel_left()
# go camel right: user.camel_right()
