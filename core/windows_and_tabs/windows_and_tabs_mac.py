from talon import Context, actions

ctx = Context()
ctx.matches = r"""
os: mac
"""


@ctx.action_class("app")
class AppActions:
    def preferences():
        actions.key("cmd-,")

    def tab_close():
        actions.key("cmd-w")

    def tab_next():
        actions.key("ctrl-tab")

    def tab_open():
        actions.key("cmd-t")

    def tab_previous():
        actions.key("ctrl-shift-tab")

    def tab_reopen():
        actions.key("cmd-shift-t")

    def window_close():
        actions.key("cmd-w")

    def window_hide():
        actions.key("cmd-m")

    def window_hide_others():
        actions.key("cmd-alt-h")

    def window_next():
        actions.key("cmd-`")

    def window_open():
        actions.key("cmd-n")

    def window_previous():
        actions.key("cmd-shift-`")

    # def window_show():
    #     actions.key("alt-tab")

    def fullscreen_toggle():
        actions.key("f11")