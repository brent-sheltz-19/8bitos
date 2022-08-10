flags =[]
filename:string = ""
outfilename = "a.out"


def claprocessor():
    count = 0
    next= ""
    print(sys.argv)
    for stri in sys.argv:
        if next.__eq__("1"):
            outfilename = stri
            next = ""
        if stri.__contains__(".c"):
            filename = stri
        elif stri.__eq__("-o"):
            next = "1"

if __name__ == '__main__':
