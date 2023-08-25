find it:                    edit.find()

next one:                   edit.find_next()

last one:                   edit.find_previous()

tug:                        edit.left()

tug <number_small> times:   user.left_n(number_small)
t
drain:                    edit.word_left()

drain <number_small> times: user.words_left(number_small)

push:                       edit.right()

push <number_small> times:  user.right_n(number_small)

step:                       edit.word_right()

step <number_small> times:  user.words_right(number_small)

north:                      user.up_n(1)

north <number_small> times: user.up_n(number_small)

south:                      user.down_n(1)

south <number_small> times: user.down_n(number_small)

head:                       edit.line_start()

tail:                       edit.line_end()

<user.teleport> way down:   edit.file_end()

<user.teleport> way up:     edit.file_start()

<user.teleport> bottom:     edit.file_end()

<user.teleport> top:        edit.file_start()

<user.teleport> page down:  edit.page_down()

<user.teleport> page up:    edit.page_up()

# selecting
<user.select> line:         edit.select_line()

<user.select> all:          edit.select_all()

<user.select> left:         edit.extend_left()

<user.select> right:        edit.extend_right()

<user.select> up:           edit.extend_line_up()

<user.select> down:         edit.extend_line_down()

<user.select> word:         edit.select_word()

<user.select> lefter:       edit.extend_word_left()

<user.select> writer:       edit.extend_word_right()

<user.select> head:         edit.extend_line_start()

<user.select> tail:         edit.extend_line_end()

<user.select> way up:       edit.extend_file_start()

<user.select> way down:     edit.extend_file_end()

# editing
indent [more]:              edit.indent_more()

(indent less | out dent):   edit.indent_less()

# deleting

scratch <number_small> times: user.delete_left_n(number_small)

drill <number_small> times: user.delete_right_n(number_small)

<user.delete> up:
    edit.extend_line_up()
    edit.delete()

<user.delete> down:
    edit.extend_line_down()
    edit.delete()

<user.delete> word:         edit.delete_word()

scratcher:                  user.delete_word_left_n(1)

scratcher <number_small> times: user.delete_word_left_n(number_small)

driller:                    user.delete_word_right_n(1)

driller <number_small> times: user.delete_word_right_n(number_small)

<user.delete> head:
    edit.extend_line_start()
    edit.delete()

<user.delete> tail:
    edit.extend_line_end()
    edit.delete()

<user.delete> way up:
    edit.extend_file_start()
    edit.delete()

<user.delete> way down:
    edit.extend_file_end()
    edit.delete()

<user.delete> all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy lefter:
    edit.extend_word_left()
    edit.copy()

copy righter:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

copy way up:
    edit.extend_file_start()
    edit.copy()

copy way down:
    edit.extend_file_end()
    edit.copy()

copy tail:
    edit.extend_line_end()
    edit.copy()

copy head:
    edit.extend_line_start()
    edit.copy()

paste:
    edit.paste()

#cut commands
cut all:
    edit.select_all()
    edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut lefter:
    edit.extend_word_left()
    edit.cut()

cut righter:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

cut way up:
    edit.extend_file_start()
    edit.cut()

cut way down:
    edit.extend_file_end()
    edit.cut()

cut tail:
    edit.extend_line_end()
    edit.cut()

cut head:
    edit.extend_line_start()
    edit.cut()
