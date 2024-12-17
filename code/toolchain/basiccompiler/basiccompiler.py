import sys
flags =[]
filename:str = ''
additionalfiles:str = []
fileout = ""
class instruction:
    def __init__(self,line=''):
        self.line =line
def claprocessor():
    global filename
    setnext=0
    for stri in sys.argv:
        if stri.__contains__('.basic'):
            if filename:
                additionalfiles.append(stri)
            else:
                filename =stri
        elif stri.__eq__("-o"):
            setnext = 2
        elif stri.__eq__("-h") or stri.__eq__('help'):
            print("")
            print("-o filename for output")
            
        if setnext == 2:
            fileout = stri
    return 0
def main():
    

    return
if __name__=="__main__":
    claprocessor()
    main()


