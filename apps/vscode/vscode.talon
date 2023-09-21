#custom vscode commands go here
app: vscode
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.snippets
tag(): user.splits
tag(): user.tabs

# navigation
<user.teleport> last:
    user.vscode("workbench.action.openPreviousRecentlyUsedEditorInGroup")
<user.teleport> next:
    user.vscode("workbench.action.openNextRecentlyUsedEditorInGroup")
<user.show_list> sesh [<user.text>] [halt]:
    user.vscode("workbench.action.openRecent")
    sleep(250ms)
    user.insert_formatted(text or "", "DASH_SEPARATED,ALL_LOWERCASE")
    sleep(250ms)
<user.teleport> sesh [<user.text>] [halt]:
    user.vscode("workbench.action.openRecent")
    sleep(250ms)
    user.insert_formatted(text or "", "DASH_SEPARATED,ALL_LOWERCASE")
    key(enter)
    sleep(250ms)
new sesh [<user.text>]:
    user.vscode("workbench.action.newWindow")
    sleep(3s)
    user.vscode("workbench.action.openRecent")
    sleep(250ms)
    insert(text or "")
    sleep(250ms)
<user.teleport> edit:       user.vscode("workbench.action.navigateToLastEditLocation")
(<user.teleport> declaration | follow): user.vscode("editor.action.revealDefinition")
<user.teleport> back:       user.vscode("workbench.action.navigateBack")
<user.teleport> forward:    user.vscode("workbench.action.navigateForward")
<user.teleport> implementation: user.vscode("editor.action.goToImplementation")
<user.teleport> type:       user.vscode("editor.action.goToTypeDefinition")
<user.teleport> usage:      user.vscode("references-view.find")
<user.teleport> recent [<user.text>]:
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(text or "")
    sleep(250ms)
<user.teleport> edit:       user.vscode("workbench.action.navigateToLastEditLocation")

window reload:              user.vscode("workbench.action.reloadWindow")
window close:               user.vscode("workbench.action.closeWindow")
#multiple_cursor.py support end

please [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")

# Sidebar
bar explore:                user.vscode("workbench.view.explorer")
bar extensions:             user.vscode("workbench.view.extensions")
bar outline:                user.vscode("outline.focus")
bar run:                    user.vscode("workbench.view.debug")
bar source:                 user.vscode("workbench.view.scm")
bar test:                   user.vscode("workbench.view.testing.focus")

side dog:                   user.vscode("workbench.action.toggleSidebarVisibility")
bar collapse:               user.vscode("workbench.files.action.collapseExplorerFolders")

bar <user.find> [<user.text>]:
    user.vscode("workbench.action.findInFiles")
    sleep(50ms)
    insert(text or "")
bar <user.find> last:       user.vscode("search.action.focusPreviousSearchResult")
bar <user.find> next:       user.vscode("search.action.focusNextSearchResult")

# Symbol search
symbol <user.find> [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    sleep(50ms)
    insert(text or "")

symbol all [<user.text>]:
    user.vscode("workbench.action.showAllSymbols")
    sleep(50ms)
    insert(text or "")

dock <user.find> [<user.text>]:
    user.vscode("actions.find")
    sleep(50ms)
    insert(text or "")

dock <user.find> next:      user.vscode("editor.action.nextMatchFindAction")
dock <user.find> last:      user.vscode("editor.action.previousMatchFindAction")

# Panels
panel control:              user.vscode("workbench.panel.repl.view.focus")
panel output:               user.vscode("workbench.panel.output.focus")
panel problems:             user.vscode("workbench.panel.markers.view.focus")
panel switch:               user.vscode("workbench.action.togglePanel")
panel terminal:             user.vscode("workbench.action.terminal.focus")
focus editor:               user.vscode("workbench.action.focusActiveEditorGroup")

low dog:                    user.vscode("workbench.action.togglePanel")
show terminal:
    user.vscode("workbench.action.terminal.focus")
    sleep(250ms)
low show:                   user.vscode("workbench.action.focusPanel")

# Settings
show settings:              user.vscode("workbench.action.openGlobalSettings")
show settings json:         user.vscode("workbench.action.openSettingsJson")
show settings folder:       user.vscode("workbench.action.openFolderSettings")
show settings folder json:  user.vscode("workbench.action.openFolderSettingsFile")
show settings workspace:    user.vscode("workbench.action.openWorkspaceSettings")
show settings workspace json: user.vscode("workbench.action.openWorkspaceSettingsFile")
show shortcuts:             user.vscode("workbench.action.openGlobalKeybindings")
show shortcuts json:        user.vscode("workbench.action.openGlobalKeybindingsFile")
show snippets:              user.vscode("workbench.action.openSnippets")

# Display
centered switch:            user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch:          user.vscode("workbench.action.toggleFullScreen")
theme switch:               user.vscode("workbench.action.selectTheme")
wrap switch:                user.vscode("editor.action.toggleWordWrap")
zen switch:                 user.vscode("workbench.action.toggleZenMode")

# File Commands
<user.show_list> dock [<user.text>] [{user.file_extension}] [halt]:
    user.vscode("workbench.action.quickOpen")
    sleep(400ms)
    insert(text or "")
    insert(file_extension or "")
    sleep(300ms)
# <user.teleport> dock clip:
#     user.vscode("workbench.action.quickOpen")
#     sleep(400ms)
#     edit.paste()
#     sleep(300ms)
#     key(enter
#     sleep(150ms)
<user.teleport> dock <user.text> [{user.file_extension}] [halt]:
    user.vscode("workbench.action.quickOpen")
    sleep(400ms)
    insert(text or "")
    insert(file_extension or "")
    sleep(300ms)
    key(enter)
    sleep(150ms)
split dock <user.text> [{user.file_extension}] [halt]:
    user.vscode("workbench.action.quickOpen")
    sleep(400ms)
    insert(text or "")
    insert(file_extension or "")
    sleep(300ms)
    key(cmd-right)
    sleep(150ms)
    key(escape)
    user.split_next()
<user.teleport> dock:
    user.vscode("workbench.action.openPreviousRecentlyUsedEditorInGroup")
<user.teleport> alter:      user.vscode("alternate.alternateFile")
make alter:                 user.vscode("alternate.createAlternateFile")
split alter:                user.vscode("alternate.alternateFileInSplit")
dock copy name:             user.vscode("fileutils.copyFileName")
dock copy path:             user.vscode("copyFilePath")
dock copy relative:         user.vscode("copyRelativeFilePath")
dock make [<user.format_text>] [<user.word>] [{user.file_extension}]:
    formatted = format_text or ""
    word_raw = word or ""
    extension = file_extension or ""
    user.vscode_with_plugin("andreas.newFile", "{formatted}{word_raw}{extension}")
    sleep(150ms)
dock make root:             user.vscode("fileutils.newFileAtRoot")
dock rename:
    user.vscode("fileutils.renameFile")
    sleep(150ms)
dock move:
    user.vscode("fileutils.moveFile")
    sleep(150ms)
dock clone:
    user.vscode("fileutils.duplicateFile")
    sleep(150ms)
dock sibling [<user.filename>]:
    user.vscode_with_plugin("andreas.newFile", filename or "") toggle

# doc make environment: user.vscode_with_plugin("andreas.newFile", ".env")
dock delete:                user.vscode("fileutils.removeFile")
dock open folder:           user.vscode("revealFileInOS")
dock reveal:                user.vscode("workbench.files.action.showActiveFileInExplorer")
disk ugly:                  user.vscode("workbench.action.files.saveWithoutFormatting")
disk:
    edit.save()
    sleep(150ms)
    user.vscode("hideSuggestWidget")
disclose:
    key(esc:5)
    edit.save()
    sleep(150ms)
    key(cmd-w)
disk gentle:                edit.save()
disk all:                user.vscode("workbench.action.files.saveFiles")

# Language Features
suggest show:               user.vscode("editor.action.triggerSuggest")
hint show:                  user.vscode("editor.action.triggerParameterHints")
definition show:            user.vscode("editor.action.revealDefinition")
definition peek:            user.vscode("editor.action.peekDefinition")
definition side:            user.vscode("editor.action.revealDefinitionAside")
references show:            user.vscode("editor.action.goToReferences")
hierarchy peek:             user.vscode("editor.showCallHierarchy")
references find:            user.vscode("references-view.find")
format that:                user.vscode("editor.action.formatDocument")
format selection:           user.vscode("editor.action.formatSelection")
imports fix:                user.vscode("editor.action.organizeImports")
problem next:               user.vscode("editor.action.marker.nextInFiles")
problem last:               user.vscode("editor.action.marker.prevInFiles")
problem fix:                user.vscode("problems.action.showQuickFixes")
rename that:                user.vscode("editor.action.rename")
refactor that:              user.vscode("editor.action.refactor")
whitespace trim:            user.vscode("editor.action.trimTrailingWhitespace")
language switch:            user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename:            user.vscode("editor.action.rename")
refactor this:              user.vscode("editor.action.refactor")

# Bookmarks. Requires Bookmarks plugin
bar marks:                  user.vscode("workbench.view.extension.bookmarks")
toggle mark:                user.vscode("bookmarks.toggle")
<user.teleport> next mark:  user.vscode("bookmarks.jumpToNext")
<user.teleport> last mark:  user.vscode("bookmarks.jumpToPrevious")

#tabs
pin tab:                    user.vscode("workbench.action.pinEditor")
unpin tab:                  user.vscode("workbench.action.unpinEditor")
<user.teleport> next tab:   user.vscode("workbench.action.nextEditor")
<user.teleport> last tab:   user.vscode("workbench.action.previousEditor")
close tab:                  user.vscode("workbench.action.closeActiveEditor")
close other tabs:           user.vscode("workbench.action.closeOtherEditors")
close all tabs:             user.vscode("workbench.action.closeAllEditors")
close tabs way right:       user.vscode("workbench.action.closeEditorsToTheRight")
close tabs way left:        user.vscode("workbench.action.closeEditorsToTheLeft")
<user.teleport> tab <number_small>:         user.vscode_tab(number_small)
<user.teleport> tab {self.letter} [{self.letter}]:
    user.vscode_with_plugin("andreas.focusTab", "{letter_1}{letter_2 or ''}")
close group:               user.vscode("workbench.action.closeEditorsInGroup")

# Folding
fold that:                  user.vscode("editor.fold")
unfold that:                user.vscode("editor.unfold")
fold those:                 user.vscode("editor.foldAllMarkerRegions")
unfold those:               user.vscode("editor.unfoldRecursively")
fold all:                   user.vscode("editor.foldAll")
unfold all:                 user.vscode("editor.unfoldAll")
fold comments:              user.vscode("editor.foldAllBlockComments")
fold one:                   user.vscode("editor.foldLevel1")
fold two:                   user.vscode("editor.foldLevel2")
fold three:                 user.vscode("editor.foldLevel3")
fold four:                  user.vscode("editor.foldLevel4")
fold five:                  user.vscode("editor.foldLevel5")
fold six:                   user.vscode("editor.foldLevel6")
fold seven:                 user.vscode("editor.foldLevel7")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch:                 user.vscode("git.branchFrom")
git branch this:            user.vscode("git.branch")
<user.show_list> branch [<user.text>] [halt]:
    user.vscode("git.checkout")
    sleep(50ms)
    user.insert_formatted(text or "", "DASH_SEPARATED,ALL_LOWERCASE")
branch make [<user.text>] [halt]:
    user.vscode("git.checkout")
    sleep(50ms)
    "omer/"
    user.insert_formatted(text or "", "DASH_SEPARATED,ALL_LOWERCASE")
<user.teleport> branch {user.git_branch}:
    user.vscode("git.checkout")
    sleep(450ms)
    "{git_branch}"
    key(enter)
    sleep(500ms)
git rebase [<user.text>] [halt]:
    user.vscode("git.rebase")
    sleep(50ms)
    user.insert_formatted(text or "", "DASH_SEPARATED,ALL_LOWERCASE")
git rebase {user.git_branch}:
    user.vscode("git.rebase")
    sleep(50ms)
    "{git_branch}"
    key(enter)
    sleep(250ms)
git commit [<user.prose>]$: user.git_commit(prose or "")
git commit [<user.prose>] halt: user.git_commit(prose or "")
git commit <user.prose> disclose:
    user.git_commit(prose or "")
    edit.save()
    sleep(150ms)
    app.tab_close()
    sleep(250ms)
git commit undo: user.vscode("git.undoCommit")
git commit amend: user.vscode("git.commitStagedAmend")
git done: user.vscode("git.commitMessageAccept")

disk git commit [<user.prose>]$:
    key(esc:5)
    edit.save()
    sleep(1500ms)
    user.git_commit(prose or "")
disk git commit [<user.prose>] halt:
    key(esc:5)
    edit.save()
    sleep(1500ms)
    user.git_commit(prose or "")
disk git commit <user.prose> disclose:
    key(esc:5)
    edit.save()
    sleep(1500ms)
    user.git_commit(prose or "")
    edit.save()
    sleep(150ms)
    app.tab_close()
    sleep(250ms)
git stash [<user.prose>] [halt]:
    user.vscode("git.stash")
    sleep(100ms)
    user.insert_formatted(prose or "", "CAPITALIZE_FIRST_WORD")
git branches:               user.vscode("gitlens.views.branches.focus")
git commit undo:            user.vscode("git.undoCommit")
git diff:                   user.vscode("git.openChange")
git fetch:                  user.vscode("git.fetch")
git fetch all:              user.vscode("git.fetchAll")
git ignore:                 user.vscode("git.ignore")
git merge:                  user.vscode("git.merge")
git output:                 user.vscode("git.showOutput")
git pull:                   user.vscode("git.pullRebase")
git push:
    sleep(100ms)
    user.vscode("git.push")
git push focus:             user.vscode("git.pushForce")
git rebase abort:           user.vscode("git.rebaseAbort")
git reveal:                 user.vscode("git.revealInExplorer")
git revert:                 user.vscode("git.revertChange")
git stash:                  user.vscode("git.stash")
git stash pop:              user.vscode("git.stashPop")
git status:                 user.vscode("workbench.scm.focus")
git stage all:           user.vscode("git.stageAll")
git stage all merge:        user.vscode("git.stageAllMerge")
git unstage:                user.vscode("git.unstage")
git unstage all:            user.vscode("git.unstageAll")
git sync:                   user.vscode("git.sync")

#these don't work, not sure why
# git a mend:
#     user.vscode_with_plugin("workbench.action.tasks.runTask", "Git amend")
git reword:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git reword")
git push force:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git push force")
git update main:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git update main")
git commit empty:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git commit empty")
git continue:
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git imerge continue")
git full continue:
    user.vscode("git.stageAllMerge")
    user.git_commit(prose or "")
    user.vscode_with_plugin("workbench.action.tasks.runTask", "Git imerge continue")

# Use keyboard shortcuts because VSCode relies on when clause contexts to choose the appropriate
# action: https://code.visualstudio.com/api/references/when-clause-contexts
change next:                key(alt-f5)
change last:                key(shift-alt-f5)

accept incoming: user.vscode("merge-conflict.accept.incoming")
accept both: user.vscode("merge-conflict.accept.both")
accept current: user.vscode("merge-conflict.accept.current")
accept all current: user.vscode("merge-conflict.accept.all-current")
accept all incoming: user.vscode("merge-conflict.accept.all-incoming")
conflict next: user.vscode("merge-conflict.next")

# Testing
test run:                   user.vscode("testing.runAtCursor")
test run file:              user.vscode("testing.runCurrentFile")
test run all:               user.vscode("testing.runAll")
test run failed:            user.vscode("testing.reRunFailTests")
test run last:              user.vscode("testing.reRunLastRun")
test debug:                 user.vscode("testing.debugAtCursor")
test debug file:            user.vscode("testing.debugCurrentFile")
test debug all:             user.vscode("testing.debugAll")
test debug failed:          user.vscode("testing.debugFailTests")
test debug last:            user.vscode("testing.debugLastRun")
test cancel:                user.vscode("testing.cancelRun")

# Debugging
break point:                user.vscode("editor.debug.action.toggleBreakpoint")
step over:                  user.vscode("workbench.action.debug.stepOver")
debug step into:            user.vscode("workbench.action.debug.stepInto")
debug step out [of]:        user.vscode("workbench.action.debug.stepOut")
debug start:                user.vscode("workbench.action.debug.start")
debug pause:                user.vscode("workbench.action.debug.pause")
debug stopper:              user.vscode("workbench.action.debug.stop")
debug continue:             user.vscode("workbench.action.debug.continue")
debug restart:              user.vscode("workbench.action.debug.restart")
debug console:              user.vscode("workbench.debug.action.toggleRepl")
debug clean:                user.vscode("workbench.debug.panel.action.clearReplAction")

# Terminal
terminal external:          user.vscode("workbench.action.terminal.openNativeConsole")
terminal new:               user.vscode("workbench.action.terminal.new")
terminal next:              user.vscode("workbench.action.terminal.focusNext")
terminal last:              user.vscode("workbench.action.terminal.focusPrevious")
terminal split:             user.vscode("workbench.action.terminal.split")
terminal zoom:              user.vscode("workbench.action.toggleMaximizedPanel")
terminal trash:             user.vscode("workbench.action.terminal.kill")
terminal toggle:            user.vscode_and_wait("workbench.action.terminal.toggleTerminal")
terminal scroll up:         user.vscode("workbench.action.terminal.scrollUp")
terminal scroll down:       user.vscode("workbench.action.terminal.scrollDown")
terminal <number_small>:    user.vscode_terminal(number_small)

#TODO: should this be added to linecommands?
copy line down:             user.vscode("editor.action.copyLinesDownAction")
copy line up:               user.vscode("editor.action.copyLinesUpAction")

#Expand/Shrink AST Selection
<user.select> less:                user.vscode("editor.action.smartSelect.shrink")
<user.select> (more | this):       user.vscode("editor.action.smartSelect.expand")

minimap:                    user.vscode("editor.action.toggleMinimap")
maximize:                   user.vscode("workbench.action.minimizeOtherEditors")
restore:                    user.vscode("workbench.action.evenEditorWidths")

#breadcrumb
select breadcrumb:          user.vscode("breadcrumbs.focusAndSelect")
# Use `alt-left` and `alt-right` to navigate the bread crumb

# general
replace here:
    user.replace("")
    key(cmd-alt-l)
# paste:                      key(cmd-v)

hover show:                 user.vscode("editor.action.showHover")
join lines:                 user.vscode("editor.action.joinLines")
full screen:                user.vscode("workbench.action.toggleFullScreen")
curse undo:                 user.vscode("cursorUndo")
<user.select> word:                user.vscode("editor.action.addSelectionToNextFindMatch")
skip word:                  user.vscode("editor.action.moveSelectionToNextFindMatch")

# jupyter
cell next:                  user.vscode("notebook.focusNextEditor")
cell last:                  user.vscode("notebook.focusPreviousEditor")
cell run above:             user.vscode("notebook.cell.executeCellsAbove")
cell run:                   user.vscode("notebook.cell.execute")
cell run all:               user.vscode("jupyter.restartkernelandrunallcells")
cell restart:              user.vscode("jupyter.restartkernel")
cell new: user.vscode("notebook.cell.insertCodeCellBelow")
cell mark: user.vscode("notebook.cell.changeToMarkdown")
cell code: user.vscode("notebook.cell.changeToCode")
cell edit: user.vscode("notebook.cell.edit")
cell last edit: user.vscode("notebook.focusPreviousEditor")
cell exit: user.vscode("notebook.cell.quitEdit")
cell <user.delete>: user.vscode("notebook.cell.delete")


install local:              user.vscode("workbench.extensions.action.installVSIX")
preview markdown:           user.vscode("markdown.showPreview")


#other
# toggle comment:            user.vscode("editor.action.commentLine")
table:            user.vscode("editor.action.commentLine")
copy command id:         user.copy_command_id()

# Snippets
snip last:               user.vscode("jumpToPrevSnippetPlaceholder")
[snip] next:             user.vscode("jumpToNextSnippetPlaceholder")

# Imports
imports organize:           user.vscode("editor.action.organizeImports")
imports add:                user.vscode_add_missing_imports()
imports fix:
    user.vscode_add_missing_imports()
    sleep(100ms)
    user.vscode("editor.action.organizeImports")
