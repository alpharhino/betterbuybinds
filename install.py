import os
import sys


def main():
    os_str = sys.platform
    if os_str == 'win32' or os_str == 'cygwin':
        setup_win()
    elif os_str == 'linux2':
        setup_linux()
    elif os_str == 'darwin':
        setup_mac()


def setup_win():
    drive_letter = None
    install_path = 'C:\\Program Files (x86)\\Steam\\steamapps\\common\\'
    while drive_letter is None:
        drive_letter = raw_input("Please enter the drive letter on which csgo is installed: ")
        if len(drive_letter) != 1 or not drive_letter.isalpha():
            drive_letter = None
        if drive_letter.lower() == 'c'

    print drive_letter


def setup_linux():
    pass


def setup_mac():
    pass

if __name__ == '__main__':  # Boilerplate start function
    main()
