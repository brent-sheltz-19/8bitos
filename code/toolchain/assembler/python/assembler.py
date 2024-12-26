import io
import string
import sys
import os

binaryCode:int = []
labels = {}
formatsize = "64k"
class Dataclass:
    name = ""
    size = ""
    address = ""
    value = ""
    def gethigh(self):
        return 0
variables =[]
def isVariable(var):
    for l in range(0,len(variables)):
        if variables[l].name == var:

            return True
    return False;
def getvar(name):
    for l in range(0, len(variables)):
        if variables[l].name == name:
            return variables[l]
    return None;
class constantclass:
    name = ""
    size = ""
    value= ""
    def constantclass(self,n:str,s,v):
        self.name = n
        self.size = s
        self.value = v
        return
    def constantclass(self,n:str,v):
        self.name = n
        self.value = v
        if value<256:
            self.size = "byte"

        return
constants:constantclass =[]
dataaddressallocation = 0
def makelabel(name: string, address2: int):

    labels[name[0:len(name)-1]] =  address2
    return
def format():


    return
def isLabel(labelname:str):
    labelname
    for l in labels.keys():
        if l == (labelname):
            return True
    return False;

    return
def getlabelval(labelname):
    return labels.get(labelname)
def getfirstchar(char,str ):
    for i in range(0, len(str)):
        if str[i]==char:
            return i
    return -1
def removechar(text):
    lenoftext = len(text)
    k = 0
    while k < lenoftext:
        # print(str(k)+ " len of text" + str(lenoftext))
        if text[k].__eq__(''):
            text.remove(text[k])
        elif text[k].__contains__("\t"):
            if text[k] == "\t":
                text.remove(text[k])
            else:
                text[k]=text[k].replace("\t","")
        else:
            k += 1
        lenoftext = len(text)
def splitupline():

    return
class Instruction:
    instruction = ""
    data1 = ""
    data2 = ""
    linenum =0
    def convert(self):
        global binaryCode
        if self.instruction.__eq__("nop"):
            i=0
            binaryCode.append(255)
        elif self.instruction.__eq__("syscall"):

            i =0
            binaryCode.append(0)
        elif self.instruction.__eq__("inc"):
            param=""
            if self.data1.__contains__("#"):
                param = self.data1.split("#")[1]
                binaryCode.append(2)
                try:
                    binaryCode.append(int(param[0:2]))
                    binaryCode.append(int(param[2:4]))
                except:
                    print("error in code")
                    exit(-1)
            elif isVariable(self.data1):
                binaryCode.append(2)
                val = getvar(self.data1).address
                if val <= 0xff:
                    binaryCode.append(00)
                binaryCode.append(val)
                return

            else:
                data= self.data1.split("r")
                binaryCode.append(1)
                try:
                    binaryCode.append(int(data[1]))
                except:
                    print("not a valid register")
                    exit(-1)
        elif self.instruction.__eq__("dec"):
            param = ""
            if self.data1.__contains__("#"):
                param = self.data1.split("#")[1]
                binaryCode.append(4)
                try:
                    binaryCode.append(int(param[0:2]))
                    binaryCode.append(int(param[2:4]))
                except:
                    print("error in code")
                    exit(-1)
            else:
                data = self.data1.split("r")
                binaryCode.append(3)
                try:
                    binaryCode.append(int(data[1]))
                except:
                    print("not a valid register")
                    exit(-1)
        elif self.instruction.__eq__("mov"):

            binaryCode.append(5)
            data= self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
            data= self.data2.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("ld"):

            binaryCode.append(6)
            data= self.data1.split("r")
            param = self.data2
            use
            try:
                binaryCode.append(int(data[1]))
                try:
                    binaryCode.append(int(param[0:2]))
                    binaryCode.append(int(param[2:4]))
                except:
                    print("error in code")
                    exit(-1)
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("ldi"):

            binaryCode.append(7)
            data= self.data1.split("r")
            param = self.data2
            constantkey:constantclass = constantclass()
            useconstant:bool = False

            for constant in constants:
                if constant.name == param:
                    useconstant = True
                    constantkey=constant
                    break
            try:
                binaryCode.append(int(data[1]))
                try:
                    if useconstant==False:
                        if int(param)<=255:
                            binaryCode.append(int(param))
                        else:
                            print("ldi limit is 255")
                            exit(-1)
                    else:
                        if constantkey.size=="byte":
                            binaryCode.append(constantkey.value)
                        elif constantkey.size=="word":
                            binaryCode.append(constantkey.value)
                except:
                    print("error in code")
                    exit(-1)
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("ldx"):

            binaryCode.append(57)
            data= self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("ldy"):

            binaryCode.append(58)
            data= self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("ldz"):

            binaryCode.append(59)
            data= self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("stx"):

            binaryCode.append(8)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("sty"):

            binaryCode.append(9)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("stz"):

            binaryCode.append(10)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("std"):

            binaryCode.append(11)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
                try:
                    binaryCode.append(int(self.data2[0:2]))
                    binaryCode.append(int(self.data2[2:4]))
                except:
                    print("error in code")
                    exit(-1)
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("svd"):

            binaryCode.append(12)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))

                try:
                    binaryCode.append(int(self.data2[0:2]))
                    binaryCode.append(int(self.data2[2:4]))
                except:
                    if isVariable(self.data2):
                        val = getvar(self.data2).address
                        if val <= 0xff:
                            binaryCode.append(00)
                        binaryCode.append(val)
                        return
                    else:
                        print("error in code")
                        exit(-2)
            except:
                print("not a valid register")
                exit(-3)
        elif self.instruction.__eq__("svx"):

            binaryCode.append(13)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("svy"):

            binaryCode.append(14)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("svz"):

            binaryCode.append(15)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("txs"):
            i=0
            binaryCode.append(16)
        elif self.instruction.__eq__("txy"):
            i=0
            binaryCode.append(17)
        elif self.instruction.__eq__("txz"):
            i = 0
            binaryCode.append(18)
        elif self.instruction.__eq__("tys"):
            i=0
            binaryCode.append(19)
        elif self.instruction.__eq__("tyx"):
            i = 0
            binaryCode.append(20)
        elif self.instruction.__eq__("tyz"):
            i = 0
            binaryCode.append(21)
        elif self.instruction.__eq__("tzs"):
            i = 0
            binaryCode.append(22)
        elif self.instruction.__eq__("tzx"):
            i = 0
            binaryCode.append(23)
        elif self.instruction.__eq__("tzy"):
            i = 0
            binaryCode.append(24)
        elif self.instruction.__eq__("tsx"):
            i = 0
            binaryCode.append(25)
        elif self.instruction.__eq__("tsy"):
            i = 0
            binaryCode.append(26)
        elif self.instruction.__eq__("tsz"):
            i = 0
            binaryCode.append(27)
        elif self.instruction.__eq__("cmp"):
            binaryCode.append(28)
            param1 = self.data1.split("r")
            param2 = self.data2.split("r")
            try:
                binaryCode.append(int(param1))
                binaryCode.append(int(param2))
            except:
                print("")
                exit(-1)
        elif self.instruction.__eq__("cmpi"):
            binaryCode.append(29)
            param1 = self.data1.split("r")[1]
            param2 = self.data2
            try:
                binaryCode.append(int(param1))
                binaryCode.append(int(param2))
            except:
                print("compare error")
                exit(-1)
        elif self.instruction.__eq__("ror"):
            binaryCode.append(30)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("rol"):
            binaryCode.append(31)
            data = self.data1.split("r")
            try:
                binaryCode.append(int(data[1]))
            except:
                print("not a valid register")
                exit(-1)
        elif self.instruction.__eq__("breq"):
            if self.data1.__contains__("pc") or self.data1.__contains__("PC"):
                    if self.data1.__contains__("+"):
                        binaryCode.append(33)
                    elif self.data1.__contains__("-"):
                        binaryCode.append(34)
            elif isLabel(self.data1):
                binaryCode.append(32)
                val = getlabelval(self.data1)
                binaryCode.append(val)



        elif self.instruction.__eq__("pop"):
            binaryCode.append(53)
            param = self.data1.split("r")[1]
            if int(param)<=255:
                binaryCode.append(int(param))
            else:
                print("")
        elif self.instruction.__eq__("push"):
            binaryCode.append(54)
            param = self.data1.split("r")[1]
            if int(param)<=255:
                binaryCode.append(int(param))
            else:
                print("")



        elif self.instruction.__eq__("ret"):
            i=0
            binaryCode.append(60)
        elif self.instruction.__eq__("jmp"):
            binaryCode.append(61)
            if self.data1.__contains__("#"):
                param = self.data1.split("#")[1]
                binaryCode.append(int(param[0:2]))
                binaryCode.append(int(param[2:4]))
            elif isLabel(self.data1):
                val = getlabelval(self.data1)
                if val<=255:
                    binaryCode.append(00)
                    binaryCode.append(val)

                else:
                    binaryCode+list(int.to_bytes(val,2))
        elif self.instruction.__eq__("call"):
            binaryCode.append(62)
            if self.data1.__contains__("#"):
                param = self.data1.split("#")[1]
                binaryCode.append(int(param[0:2]))
                binaryCode.append(int(param[2:4]))
            elif isLabel(self.data1):
                val = getlabelval(self.data1)
                if val<=255:
                    binaryCode.append(00)
                    binaryCode.append(val)
                else:
                    binaryCode+list(int.to_bytes(val,2))

        return


class Function:
    functionname: string = ""
    lines:Instruction = []
    params=[]
    functionbytes = []

    def givefunctionbytes(self):
        return self.functionbytes

    def assemble(self):
        for ins in lines:
            self.functionbytes.append(ins.convert())

    def setLines(self, instructions):
        lines = instructions
def main():
    global dataaddressallocation
    instructions =[]
    filename:string=""
    outfilename = "a.out"
    outfilenamechange:bool = False
    count = 0
    for stri in sys.argv:
        print(sys.argv)
        if stri.__contains__(".txt"):
            filename = stri
        elif stri.__eq__("-o"):
            count+=1
            outfilename = sys.argv[count]
            count-=1
    if filename == "":
        print("no input file \n")
        return
    code = io.open(filename,"r")
    text = code.read()
    text=text.split("\n")


    removechar(text)
    k=0
    while k < len(text):
        k+=1
    k=0
    while k<len(text):
        if text[k][0]==";":
            text.remove(text[k])
        if text[k].__contains__(";"):
            w = text[k].split(";")
            text[k] =w[0]
        k+=1
    asmfile=False
    if text[0] == "#asm":
        asmfile = True
        text.remove(text[0])
    else:
        print("assembly tag not found")
        return

#    for w in text:
#       if w.__contains__("#")




    for w in text:
        line = Instruction()

        wtext = w.split(" ")
        if w.__contains__(":"):
            if  w[0].__eq__("."):
                if wtext[0].__eq__(".byte"):
                    a = Dataclass()
                    a.size = "byte"
                    a.name=wtext[1][0:len(wtext[1])-1]
                    a.address=dataaddressallocation
                    dataaddressallocation+=1
                    a.value = int(wtext[2])
                    variables.append(a)
                elif wtext[0].__eq__(".word"):
                    a = Dataclass()
                    a.size = "word"
                    a.name = wtext[1][0:len(wtext[1]) - 1]
                    a.address = dataaddressallocation+1
                    dataaddressallocation += 2
                    a.value = int(wtext[2])
                    variables.append(a)
                elif wtext[0].__eq__(".ptr"):
                    a = Dataclass()
                    a.size = "word"
                    a.name = wtext[1][0:len(wtext[1]) - 1]
                    try:
                        a.address = int(wtext[2])
                    except:
                        print("invalid pointer")
                        exit(-4)
                    variables.append(a)
            else:
                makelabel(wtext[0],len(binaryCode))
        elif w.__contains__("="):
            constant = constantclass()
            constant.name = wtext[0]
            try:
                constant.value = int(wtext[2])
            except:
                stringa= wtext[2].split("\"")
                spacelist = list('')
                spacelist.append('')
                spacelist.append('')
                if spacelist==stringa:
                    constant.value=ord(' ')

                else:
                    if stringa[1]== '\\n':
                        constant.value=ord("\n")
                    else:
                        for c in stringa:
                            if c!='':
                                constant.value=ord(c)
            if constant.value<=255:
                constant.size = "byte"
            elif 255<constant.value<=65535:
                constant.size = "word"
            constants.append(constant)
        elif w.__eq__("syscall"):
            line.instruction=wtext[0]
            line.convert()
        elif w.__eq__("nop"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("txs"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("txy"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("txz"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tys"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tyx"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tyz"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tzs"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tzy"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tzx"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tsx"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tsy"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("tsz"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("ret"):
            line.instruction = wtext[0]
            line.convert()
        elif w.__eq__("call"):
            line.instruction = wtext[0]
            line.convert()
        else:
            line.instruction=wtext[0]
            #print(wtext)
            dtext=wtext[1].split(",")

            if dtext.__len__()==1:
                line.data1 = dtext[0]
            elif dtext.__len__()==2:
                line.data1=dtext[0]
                line.data2=dtext[1]
            line.convert()
    outfile = open(outfilename,"wb")
    rom = []
    if isLabel("setup"):
        binaryCode.insert(0,61)
        val = getlabelval("setup")
        if(val<255):
            binaryCode.insert(1,00)
            binaryCode.insert(2,val)
        else:
            binaryCode.insert(1, val)
    elif isLabel("main"):
        binaryCode.insert(0,61)
        val = getlabelval("main")
        if(val<255):
            binaryCode.insert(0,00)
        binaryCode.insert(0,val)
    if formatsize.__eq__("")==False:
        if formatsize.__eq__("8M")||formatsize.__eq__("8m"):
            rom= binaryCode+list([255]*(8388608-len(binaryCode)))
        if formatsize.__eq__("4M")||formatsize.__eq__("4m"):
            rom= binaryCode+list([255]*(4194304-len(binaryCode)))
        elif formatsize.__eq__("2M")||formatsize.__eq__("2m"):
            rom= binaryCode+list([255]*(2097152-len(binaryCode)))
        elif formatsize.__eq__("1M")||formatsize.__eq__("1m"):
            rom= binaryCode+list([255]*(1048576-len(binaryCode)))
        elif formatsize.__eq__("64k"):
            rom= binaryCode+list([255]*(65536-len(binaryCode)))
        elif formatsize.__eq__("32k"):
            rom = binaryCode + list([255] * (32768 - len(binaryCode)))
        elif formatsize.__eq__("16k"):
            rom = binaryCode + list([255] * (16384 - len(binaryCode)))
        elif formatsize.__eq__("8k"):
            rom = binaryCode + list([255] * (8192 - len(binaryCode)))
        elif formatsize.__eq__("4k"):
            rom= binaryCode+list([255]*(4096-len(binaryCode)))
        elif formatsize.__eq__("2k"):
            rom= binaryCode+list([255]*(2048-len(binaryCode)))
        elif formatsize.__eq__("1k"):
            rom= binaryCode+list([255]*(1024-len(binaryCode)))
        
    for byte in rom:
        if byte > 255:
            outfile.write( byte.to_bytes(2,"little"))
        else:
            outfile.write(byte.to_bytes(1, "little"))
    print(outfile.seek(0,os.SEEK_END))
if __name__ == '__main__':
    main()
    print(binaryCode)
    print("code len: " + str(len(binaryCode)))
