app: vscode
-
pilot jest: user.vscode("editor.action.inlineSuggest.trigger")
pilot next: user.vscode("editor.action.inlineSuggest.showNext")
pilot last: user.vscode("editor.action.inlineSuggest.showPrevious")
pilot yes: user.vscode("editor.action.inlineSuggest.commit")
pilot yes word: user.vscode("editor.action.inlineSuggest.acceptNextWord")
pilot nope: user.vscode("editor.action.inlineSuggest.undo")
pilot cancel: user.vscode("editor.action.inlineSuggest.hide")
pilot block last: user.vscode("workbench.action.chat.previousCodeBlock")
pilot block next: user.vscode("workbench.action.chat.nextCodeBlock")
pilot new file <user.ordinal_or_last>:
    user.copilot_focus_code_block(ordinal_or_last)
    user.vscode("workbench.action.chat.insertIntoNewFile")
pilot copy <user.ordinal_or_last>:
    user.copilot_focus_code_block(ordinal_or_last)
    edit.copy()
pilot bring <user.ordinal_or_last>: user.copilot_bring_code_block(ordinal_or_last)
pilot bring <user.ordinal_or_last> {user.makeshift_destination} <user.cursorless_target>:
    user.cursorless_command(makeshift_destination, cursorless_target)
    user.copilot_bring_code_block(ordinal_or_last)
pilot chat [<user.prose>]$:
    user.copilot_chat(prose or "")
pilot {user.copilot_slash_command} <user.cursorless_target> [to <user.prose>]$:
    user.copilot_inline_chat(copilot_slash_command or "", cursorless_target, prose or "")
pilot clear <user.cursorless_target>:
    user.cursorless_command("clearAndSetSelection", cursorless_target)
    user.vscode("editor.action.inlineSuggest.trigger")

bar chat:                   user.vscode('workbench.action.chat.openInSidebar')
inline chat:                user.vscode('inlineChat.start')
synthesize:                 user.vscode('github.copilot.generate')
next solution:              user.vscode('github.copilot.nextPanelSolution')
previous solution:          user.vscode('github.copilot.previousPanelSolution')
accept:                     user.vscode('github.copilot.acceptCursorPanelSolution')
yes: user.vscode('editor.action.inlineSuggest.commit')
