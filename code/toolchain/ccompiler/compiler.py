flags =[]
filename:string = ""
outfilename = "a.out"
assemblyfilename = "a.asm"

def claprocessor():
    print(sys.argv)
    i=0
    for stri in sys.argv:
        if stri.__eq__("-o"):
            outfilename=sys.argv(i+1)
        if stri.__eq__("-ASM") or stri.__eq__("-asm") :
            outfilename = sys.argv(i + 1)

        if stri.__contains__(".c"):
            filename = stri

        i++
    return
def cpreprosscessor():

    return
if __name__ == '__main__':
    claprocessor()
