import os
import sys
import shutil

cfg_file_dir = 'cfg'
cfg_file_list = ['autoexec.cfg', 'buys.cfg', 'devconsole.cfg']
target_cfg_file_dir = 'BetterBuyBinds'
proj_name = 'BetterBuyBinds'
ver_number = '0.1'


def main():
    print_intro()
    os_str = sys.platform
    if os_str == 'win32' or os_str == 'cygwin':
        setup_win()
    elif os_str == 'linux2':
        setup_linux()
    elif os_str == 'darwin':
        setup_mac()


def print_intro():
    print 'CSGO ' + proj_name + ' Installer v' + ver_number + ''
    print 'Author: Ryan Fisher\tRepo: https://github.com/alpharhino/betterbuybinds'
    print ''


def generate_file_list():
    pass


def setup_win():
    install_path = 'C:\\Program Files (x86)\\Steam\\steamapps\\common\\Counter-Strike Global Offensive\\csgo\\cfg\\'
    print 'Attempting to autolocate CSGO install directory...'
    if not os.path.exists(install_path):
        drive_letter = None
        while drive_letter is None:
            drive_letter = raw_input("Please enter the drive letter on which csgo is installed (eg c, d, e, etc.): ")
            if len(drive_letter) != 1 or not drive_letter.isalpha():
                drive_letter = None
            if drive_letter.lower() == 'c':
                pass
        print drive_letter

    try:
        os.mkdir(install_path + target_cfg_file_dir)
    except WindowsError:
        print 'Path to ' + proj_name + ' install already exists.'
        selected_option = raw_input("Would you like to update your files(Y/[N])? ")
        if selected_option.lower() != 'y':
            print 'Configs not installed'
            sys.exit()

    failed_files_list = {}
    for filename in cfg_file_list:
        try:
            shutil.copyfile(src=os.getcwd() + '\\' + cfg_file_dir + '\\' + filename,
                            dst=install_path + target_cfg_file_dir + '\\' + filename)
        except Exception as exception:
            failed_files_list[filename] = exception

    if len(failed_files_list):
        print 'Failed Files'
        for filename in failed_files_list.keys():
            print filename + ' failed due to: ' + str(failed_files_list[filename])
        print 'End Failed Files'

    else:
        print 'SUCCESS: ' + str(len(cfg_file_list)) + ' files copied to ' + target_cfg_file_dir


def setup_linux():
    pass


def setup_mac():
    pass


if __name__ == '__main__':  # Boilerplate start function
    main()
