app: chrome
-
tag(): browser
tag(): user.tabs

profile switch: user.chrome_mod("shift-m")
new tab: user.chrome_mod("cmd-t")
new window: user.chrome_mod("cmd-n")
reopen tab: user.chrome_mod("shift-cmd-t")
quit chrome: user.chrome_mod("cmd-q")
print page: user.chrome_mod("cmd-p")
refresh page: user.chrome_mod("cmd-r")
go history: user.chrome_mod("cmd-y")
go downloads: user.chrome_mod("cmd-shift-j")
bookmark this: user.chrome_mod("cmd-d")
go bookmarks: user.chrome_mod("cmd-alt-b")
go book: user.chrome_mod("cmd-shift-E")
full screen: user.chrome_mod("cmd-ctrl-f")
close tab: user.chrome_mod("cmd-w")
close window: user.chrome_mod("cmd-shift-w")

tab search: user.chrome_mod("shift-a")

tab search <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)

search <user.text>$:
    user.chrome_mod("f")
    sleep(200ms)
    insert("{text}")
