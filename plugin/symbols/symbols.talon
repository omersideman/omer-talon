double dash: "--"
triple quote: "'''"
pebbles: "..."
# Add symbol at end of line and then insert line below
# From https://github.com/AndreasArvidsson/andreas-talon/blob/master/misc/keys/keys.talon#L28
patch {user.symbol_key}:
    edit.line_end()
    "{symbol_key}"
    edit.line_insert_down()
spam: ", "
stack: ": "
pipe gap: " | "
boom: ". "
arrow: "->"
dub arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty round: "()"
empty square: "[]"
empty curly: "{}"
empty diamond: "<>"
empty quad: '""'
empty twin: "''"
empty triple: '"""'
empty escaped quad: '\\"\\"'
empty escaped twin: "\\'\\'"
empty escaped round: "\\(\\)"
empty escaped curly: "\\{{\\}}"
type ignore: " # type: ignore"
tween <user.symbol_key>: user.insert_between("{symbol_key}", "{symbol_key}")
quad: user.insert_between('"', '"')
twin: user.insert_between("'", "'")
triple: user.insert_between('"""', '"""')
ski: user.insert_between("`", "`")
escaped quad: user.insert_between('\\"', '\\"')
escaped twin: user.insert_between("\\'", "\\'")
eff string: user.insert_between('f"'', '"')
f string: user.insert_between('f"', '"')
round: user.insert_between("(", ")")
escaped round: user.insert_between("\\(", "\\)")
# escaped curly: user.insert_between("\\{{", "\\}}"){''}
square: user.insert_between("[", "]")
curly: user.insert_between("{", "}")
diamond: user.insert_between("<", ">")
(diamond | angle) that:
    text = edit.selected_text()
    user.paste("<{text}>")
(curly | lace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(round | leper) that:
    text = edit.selected_text()
    user.paste("({text})")
(double | quad) that:
    text = edit.selected_text()
    user.paste("'{text}'")
(double quote | dubquote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(single | twin) that:
    text = edit.selected_text()
    user.paste("'{text}'")

big round:
    insert("()")
    key(left enter)
big square:
    insert("[]")
    key(left enter)
big curly:
    insert("{}")
    key(left enter)

slicer:
    edit.line_end()
    key(enter)
    insert("- ")

end gap:
    edit.line_end()
    key(space)

slider:
    edit.line_end()
    insert(",")
    key(enter)

breaker:
    edit.line_end()
    insert(" {")
    key(enter)

chronic:
    edit.line_end()
    insert(":")
    key(enter)
