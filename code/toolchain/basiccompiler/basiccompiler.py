import sys
flags =[]
filenames:str = []
files = []
fileout = ""
lines:str=[]
def claprocessor():
    global filename
    setnext=0
    for stri in sys.argv:
        if stri.__contains__('.basic'):
            filenames.append(stri)
        elif stri.__eq__("-o"):
            setnext = 2
        elif stri.__eq__("-h") or stri.__eq__('help'):
            print("")
            print("-o filename for output")
            
        if setnext == 2:
            fileout = stri
    return 0
def load():
    global additionalfiles
    global lines
    for filename in filenames:
        files.append(open(filename))
   
    for f in files:
        linest= f.readlines()
    print(lines)
    for i in range(0,len(linest)):
        if i > len(linest):
            break
        
        if linest[i] is not '':
            lines.append(linest[i].strip('\t\n'))
            
    
    print(lines)
    return 0;

def main():
    load()








    

    return
if __name__=="__main__":
    claprocessor()
    main()
