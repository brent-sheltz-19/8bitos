import sys

flags =[]
filename:str
additionalfiles = []
fileout = ""
def claprocessor():
    setnext=0
    for stri in sys.argv:
        if stri.__contains__('.basic'):
            if not filename:
                filename =stri
            else:
                additionalfiles.append(stri)
        elif stri.__eq__("-o"):
            setnext = 2
        elif stri.__eq__("-h") or stri.__eq__('help'):
            print("-o filename")

        if setnext == 2:
            fileout = stri

    return 0
def main():



if __name__=="__main__":
    claprocessor()



