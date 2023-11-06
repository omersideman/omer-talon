tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()
katie [dir] [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_directory_root()
katie (up | back) | go daddy: user.terminal_change_directory("..")
go <user.system_path>: insert('cd "{system_path}"\n')
path <user.system_path>: insert('"{system_path}"')
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
kill all: user.terminal_kill_all()
code here: user.terminal_open_code_here()
new venv: user.terminal_new_venv()
activate venv: user.terminal_activate_venv()
pip install: user.terminal_pip_install()
pip install requirements: user.terminal_pip_install_requirements()
node install: user.terminal_node_install()
just: user.terminal_just()
just <user.text>: insert('just {text}\n')


copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
