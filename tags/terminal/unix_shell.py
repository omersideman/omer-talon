from talon import Context, Module, actions

ctx = Context()
mod = Module()
ctx.matches = r"""
tag: user.generic_unix_shell
"""

# Uncomment the following line to enable common unix utilities from unix_utilities.py
# ctx.tags = ["user.unix_utilities"]


@ctx.action_class("user")
class Actions:
    # Implements the functions from terminal.py for unix shells

    def terminal_list_directories():
        """Lists directories"""
        actions.insert("ls")
        actions.key("enter")

    def terminal_list_all_directories():
        """Lists all directories including hidden"""
        actions.insert("ls -a")
        actions.key("enter")

    def terminal_change_directory(path: str):
        """Lists change directory"""
        actions.insert(f"cd {path}")
        if path:
            actions.key("enter")

    def terminal_change_directory_root():
        """Root of current drive"""
        actions.insert("cd /")
        actions.key("enter")

    def terminal_clear_screen():
        """Clear screen"""
        actions.insert("clear")
        actions.key("enter")

    def terminal_run_last():
        """Repeats the last command"""
        actions.key("up enter")

    def terminal_rerun_search(command: str):
        """Searches through the previously executed commands"""
        actions.key("ctrl-r")
        actions.insert(command)

    def terminal_kill_all():
        """kills the running command"""
        actions.key("ctrl-c")
        actions.insert("y")
        actions.key("enter")

    def terminal_open_code_here():
        """Opens VSCode in the current directory"""
        actions.insert("code .")
        actions.key("enter")

    def terminal_new_venv():
        """creates new virtual environment named venv"""
        actions.insert("python3 -m venv venv")
        actions.key("enter")

    def terminal_activate_venv():
        """Activates the virtual environment named venv"""
        actions.insert("source venv/bin/activate")
        actions.key("enter")

    def terminal_pip_install():
        """Installs a pip package"""
        actions.insert("pip install ")

    def terminal_pip_install_requirements():
        """Installs requirements.txt"""
        actions.insert("pip install -r requirements.txt")
        actions.key("enter")

    def terminal_node_install():
        """Installs a node package"""
        actions.insert("npm install ")

    def terminal_just():
        """just file command"""
        actions.insert("just ")
