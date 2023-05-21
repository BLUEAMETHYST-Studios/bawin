from os import getlogin

def execbashrc(line: str):
    if line.startswith("if") or line.startswith("elseif") or line.startswith("else"):
        print("Conditions aren't supported!")
def bashrc(name):
    with open(f"C:/Users/{getlogin()}/AppData/Local/bawin/user/{name}/home/.bashrc") as b:
        if not b.read().isspace():
            for l in b.read().split("\n"):
                execbashrc(l)
        else:
            ...