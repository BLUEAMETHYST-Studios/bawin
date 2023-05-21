from os import listdir, getlogin, mkdir
from subprocess import run

if listdir(f"C:/Users/{getlogin()}/AppData/Local/bawin/user") == ["root"]:
    print("No user (except root) exists!")
elif listdir(f"C:/Users/{getlogin()}/AppData/Local/bawin/user") == []:
    mkdir(f"C:/Users/{getlogin()}/AppData/Local/bawin/user/root")
    print("No user (except root) exists!")
else:
    pass