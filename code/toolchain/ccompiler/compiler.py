flags =[]
sourcefiles:str = []
headerfiles:str = []
mainfile:str = ""
outfilename = "a.out"
assemblyfilename = "a.asm"
includedfilenames = []


class Variables:
    size:bytes
    name:str


class cstruct:
    structname:string


def claprocessor():
    print(sys.argv)
    i=0
    for stri in sys.argv:
        if stri.__eq__("-o"):
            outfilename=sys.argv(i+1)
        if stri.__eq__("-ASM") or stri.__eq__("-asm") :
            assemblyfilename = sys.argv(i+1)
        if stri.__contains__(".c"):
            sourcefiles.append(stri)
        if stri.__contains__(".h"):
            headerfiles.append(stri)

        i += 1
        return


def cpreprosscssor():
    maintokens = lexer(mainfile)
    return


def cprocessor():

    return


if __name__ == '__main__':
    claprocessor()
