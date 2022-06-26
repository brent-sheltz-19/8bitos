flags =[]
filename: string = ""
outfilename = "a.out"
def claprocessor():
    count = 0
    for stri in sys.argv:
        print(sys.argv)
        if stri.__contains__(".c"):
            filename = stri
        elif stri.__eq__("-o"):
            count += 1
            outfilename = sys.argv[count]
            count -= 1

if __name__ == '__main__':
