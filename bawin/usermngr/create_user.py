from hashlib import sha256
from subprocess import run
from colorama import init, Fore

init()

def makeFirstUser():
    name = input("username: ")
    pw = input("password: ")
    cpw = input("confirm password: ")
    if name == "root":
        print(Fore.RED + "This user already exists!")
    elif pw == cpw:
        run(["mkdir", f"%LOCALAPPDATA%/bawin/user/{name}"])
        
    else:
        print(Fore.RED + "Password and password confirmation don't match!")