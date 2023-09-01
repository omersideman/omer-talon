from talon import Module

mod = Module()


@mod.action_class
class Actions:
    def terminal_list_directories():
        """Lists directories"""

    def terminal_list_all_directories():
        """Lists all directories including hidden"""

    def terminal_change_directory(path: str):
        """Lists change directory"""

    def terminal_change_directory_root():
        """Root of current drive"""

    def terminal_clear_screen():
        """Clear screen"""

    def terminal_run_last():
        """Repeats the last command"""

    def terminal_rerun_search(command: str):
        """Searches through the previously executed commands"""

    def terminal_kill_all():
        """kills the running command"""

    def terminal_open_code_here():
        """Opens VSCode in the current directory"""

    def terminal_new_venv():
        """creates new virtual environment named venv"""

    def terminal_activate_venv():
        """Activates the virtual environment named venv"""

    def terminal_pip_install_requirements():
        """Installs requirements.txt"""pokey-talon

    def terminal_pip_install():
        """Installs a pip package"""
