// #pragma once
#include <algorithm>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>
using namespace std;

enum SymbolType { label, constant, variable, ptr, asciiz, function };
enum sizes { zero = 0, byte = 1, word = 2, dword = 4, qword = 8 };
struct Symbol {
    std::string name;  // Symbol name (e.g., variable name, label)
    SymbolType type;   // Type of symbol (e.g., VARIABLE, CONSTANT)
    sizes size;
    /*
        label 32 bit address
        CONSTANT - actual value
        ptr - 32 bit address
        variable- size of value

    */
    string value;  // Value associated with the symbol (e.g., memory address,
                   // constant value)

    // Constructor
    Symbol(std::string& n, SymbolType t, string v)
        : name(n), type(t), value(v) {}
    Symbol() {
        name = "";

        value = "";
    }
    string enumtoString() {
        switch (type) {
            case label:
                return "label";
            case constant:
                return "constant";
            case variable:
                return "variable";
            case ptr:
                return "pointer";
            case asciiz:
                return "asciiz";

            default:
                return "Unknown";
        }
    }

    string toString() { return (name + " " + enumtoString() + " " + value); }
};
class SymbolTable {
   public:
    string add(std::string& n, SymbolType t, string v) {
        string error;
        if (table.find(n) != table.end()) {
            error = "Symbol " + n + " already exists!";
            return error;
        } else {
            table[n] = Symbol(n, t, v);
            return "";
        }
    }
    void add() {}
    // Look up a symbol by name
    Symbol* getSymbol(const std::string& name) {
        auto it = table.find(name);
        if (it != table.end()) {
            return &(it->second);
        }
        return nullptr;  // Symbol not found
    }

   private:
    unordered_map<std::string, Symbol> table;
};
using namespace std;
using namespace std;
#define commands_size 60
class assembler {
    struct stringtuple {
        string a, b, c;
        stringtuple(string a1, string b1, string c1) {
            a = a1;
            b = b1;
            c = c1;
        }
        stringtuple() {
            a = "";
            b = "";
            c = "";
        }
    };

   public:
    enum bytecode {
        syscall,
        incr,
        incm,
        decr,
        decm,
        mov,
        ld,
        ldi,
        stx,
        sty,
        stz,
        std,
        svd,
        svx,
        svy,
        svz,
        cmp,
        cpi,
        ror,
        rol,
        txs,
        txy,
        txz,
        tys,
        tyx,
        tyz,
        tzs,
        tzx,
        tzy,
        tsx,
        tsy,
        tsz,
        breq,
        breqpcf,
        breqpcb,
        brne,
        brnepcf,
        brnepcb,
        brge,
        brgepcf,
        brgepcb,
        brle,
        brlepcf,
        brlepcb,
        brg,
        brgpcf,
        brgpcb,
        brl,
        brlpcf,
        brlpcb,
        clr,
        clf,
        swap,
        pop,
        pushr,
        pushir,
        pushi,
        ldx,
        ldy,
        ldz,
        jmp,
        call,
        cprm,
        cpm

        ,
        nop = 255
    };
    string commands[255] = {"syscall",
                            "inc",
                            "dec",
                            "mov",
                            "ld",
                            "ldi",
                            "stx",
                            "sty",
                            "stz",
                            "std",
                            "svd",
                            "svx",
                            "svy",
                            "svz",
                            "cmp",
                            "cpi",
                            "ror",
                            "rol",
                            "txs",
                            "txy",
                            "txz",
                            "tys",
                            "tyx",
                            "tyz",
                            "tzs",
                            "tzx",
                            "tzy",
                            "tsx",
                            "tsy",
                            "tsz",
                            "breq",
                            "breqpcf",
                            "breqpcb",
                            "brne",
                            "brnepcf",
                            "brnepcb",
                            "brge",
                            "brgepcf",
                            "brgepcb",
                            "brle",
                            "brlepcf",
                            "brlepcb",
                            "brg",
                            "brgpcf",
                            "brgpcb",
                            "brl",
                            "brlpcf",
                            "brlpcb",
                            "clr",
                            "clf",
                            "swap",
                            "pop",
                            "push",
                            "ldx",
                            "ldy",
                            "ldz",
                            "ret",
                            "jmp",
                            "call",
                            "cpm"
                            "nop"};
    string dotcommands[255] = {".define", ".org", ".var", ".const",
                               ".code",   ".data"

    };
    string datatypes[255]{"byte", "word", "dword", "qword", "ptr", "asciiz"};
    // map<string,int> conversion;
   public:
    string errormessege;
    SymbolTable table;
    vector<stringtuple> lines;
    vector<string> linesraw;
    vector<uint8_t> binary;
    assembler() {}
    static string stripstartingtab(string a) {
        const char* linecstr = a.c_str();
        while (a[0] == '\t') {
            linecstr++;
            a = string(linecstr);
        }
        return a;
    }
    static string strip(string a, int pos) {
        const char* linecstr = a.c_str();
        int i = pos;
        while (i >= 0) {
            linecstr++;
            i--;
        }
        a = string(linecstr);
        return a;
    }
    static string stripWhitespace(const std::string& input) {
        std::string result = input;

        // Remove spaces, tabs, and newlines
        result.erase(std::remove_if(result.begin(), result.end(),
                                    [](unsigned char c) {
                                        return std::isspace(
                                            c);  // Check if the character is a
                                                 // space, tab, or newline
                                    }),
                     result.end());

        return result;
    }
    string removeWhitespaceAndNonPrintable(const std::string& input) {
        string result;

        for (char c : input) {
            /* Check if the character is printable and not a space or newline or
            tab if (std::isprint(static_cast<unsigned char>(c)) &&
            !std::isspace(static_cast<unsigned char>(c))) { result += c;
            }*/
            if (c == ';') return result;
            if (std::isprint(static_cast<unsigned char>(c))) {
                result += c;
            }
        }

        return result;
    }
    static int getBytesizeofline(string* commands, string line) {
        int bytesize = 0;
        stringtuple linesplit;
        int spacepos = 0;
        spacepos = line.find(' ');
        string command, part1, part2;
        command = line.substr(0, spacepos);
        line = strip(line, spacepos);
        int comma = line.find(',');
        for (int i = 0; i < 255; i++) {
            string a = commands[i];
            if (a == command) {
                bytesize++;
                break;
            }
        }
        if (comma > 0) {
            if (line.at(0) == 'r') {
                bytesize += 1;
            } else {
                bytesize += 4;
            }
            strip(line, comma);
            if (line.at(0) == 'r') {
                bytesize += 1;
            } else {
                bytesize += 4;
            }
        } else {
            if (line.at(0) == 'r') {
                bytesize += 1;
            } else {
                bytesize += 4;
            }
        }
        return bytesize;
    }
    static int getBytesizeofvariable(string* commands, string line) {
        int bytesize = 0;
        string define, size, val;
        int firstspace = line.find(' ');
        define = line.substr(firstspace);
        return bytesize;
    }
    static bool isNum(string a) {
        try {
            stol(a);
            return true;
        } catch (exception e) {
            return false;
        }
    }
    uint16_t getCommand(string command) {
        errormessege = "";
        if (command == commands[0]) {
            return syscall;
        } else if (command == "mov") {
            return mov;
        } else if (command == "ld") {
            return ld;
        } else if (command == "ldi") {
            return ldi;
        } else if (command == "stx") {
            return stx;
        } else if (command == "sty") {
            return sty;
        } else if (command == "stz") {
            return stz;
        } else if (command == "std") {
            return std;
        } else if (command == "svd") {
            return svd;
        } else if (command == "svx") {
            return svx;
        } else if (command == "svy") {
            return svy;
        } else if (command == "svz") {
            return svz;
        }

        else {
            errormessege = "command not found";
            return 0xFF00;
        }
    }
    uint16_t getCommand(stringtuple command) {
        errormessege = "command not found";
        return 0xFF00;
    }
    void binarypushback(uint32_t val) {
        uint32_t t = val;
        uint8_t* vp = (uint8_t*)&t;
        uint8_t a1 = vp[0];
        uint8_t b = vp[1];
        uint8_t c = vp[2];
        uint8_t d = vp[3];
        binary.push_back(d);
        binary.push_back(c);
        binary.push_back(b);
        binary.push_back(a1);
    }
    void sort() {}
    void assemble(string infilepath) { assemble(infilepath, "a.out"); }
    void assemble(string infilepath, string outfilepath) {
        // gets file
        ifstream in;
        ofstream out;
        string line;
        uint16_t byteaddress;
        if (infilepath == "") {
            errormessege = "no file entered";
            return;
        } else {
            in.open(infilepath);
            out.open(outfilepath, ios::binary);
            if (!in.is_open()) {
                errormessege = "failed to open input";
                in.close();
                out.close();
                return;
            }
            if (!in.is_open()) {
                errormessege = "failed to open output";
                in.close();
                out.close();
                return;
            }
        }
        // determines if assembly file
        std::getline(in, line);
        if (line != "#asm\r" && line != "#asm") {
            cout << "not an assembly file" << endl;
            return;
        }
        // reads all lines
        while (std::getline(in, line)) {
            line = removeWhitespaceAndNonPrintable(line);
            if (line != "") {
                linesraw.push_back(line);
            }
        }
        //
        line = "";
        for (string line : linesraw) {
            string temp = "";
            char* token = strtok((char*)line.c_str(), " ");
            if (strcmp(token, ".org") == 0) {
            } else if (strcmp(token, ".define") == 0) {
                Symbol sym = Symbol();
                token = strtok(NULL, " ");

                if (strcmp(token, "constant") == 0) {
                    sym.type = constant;
                } else if (strcmp(token, "byte") == 0) {
                    sym.type = variable;
                    sym.size = sizes::byte;
                } else if (strcmp(token, "word") == 0) {
                    sym.type = variable;
                    sym.size = sizes::word;
                } else if (strcmp(token, "dword") == 0) {
                    sym.type = variable;
                    sym.size = sizes::dword;
                } else if (strcmp(token, "qword") == 0) {
                    sym.type = variable;

                    sym.size = sizes::qword;
                } else if (strcmp(token, "ptr") == 0) {
                    sym.type = variable;
                    sym.size = sizes::dword;
                }

                else if (strcmp(token, "asciiz") == 0) {
                    sym.type = asciiz;
                } else {
                    errormessege = "not a data type";
                    return;
                }
                temp += token;
                token = strtok(NULL, " ");
                if (token == NULL) {
                    errormessege = "no name for .define";
                    return;
                }
                sym.name = token;
                token = strtok(NULL, " ");
                if (token != NULL) {
                    sym.value = token;
                }
                cout << sym.toString() << endl;

            } else {
            }
            if (int a = a) {
            }
        }

        // gets binary command
        /*
        for (stringtuple a : lines)
        {
                if (a.a.at(0) == '.')
                {
                        const char* f = strstr(line.c_str(), "asciiz");
                        const char* u = strstr(line.c_str(), "ASCIIZ");
                        if (f != NULL || u != NULL)
                        {
                                asciiconstantlist.push_back(makeascii(line));
                        }
                        f = strstr(line.c_str(), "byte");
                        u = strstr(line.c_str(), "BYTE");
                        if (f != NULL || u != NULL)
                        {
                                //list.push_back(makeascii(line));
                        }

                }
                else
                {
                        uint16_t bincom = getCommand(a);

                        if44444444441 ((bincom >> 8) == 0)
                        {
                                uint8_t binarycommand = (uint8_t)bincom;

                                binary.push_back(binarycommand);

                        }
                        if (a.b != "")
                        {
                                if (isIn(&labels, a.b))
                                {
                                        for (label l : labels)
                                        {
                                                if (l.labelname == a.b)
                                                {
                                                        binarypushback(l.address);
                                                }
                                        }
                                }
                                else if (a.b.at(0) == 'r' || a.b.at(0) == '#')
                                {
                                        a.b = a.b.substr(1, a.b.length());
                                        uint32_t t = stol(a.b);
                                        binarypushback(t);
                                }
                                else if (isNum(a.b))
                                {
                                        uint32_t t = stol(a.b);
                                        binarypushback(t);
                                }
                        }
                        if (a.c != "")
                        {
                                if (isIn(&labels, a.c))
                                {
                                        for (label l : labels)
                                        {

                                                if (l.labelname == a.c)
                                                {
                                                        binarypushback(l.address);
                                                }
                                        }
                                }
                                else if (a.c.at(0) == 'r' || a.c.at(0) == '#')
                                {
                                        a.c = a.c.substr(1, a.c.length());

                                        uint32_t t = stol(a.c);
                                        binarypushback(t);
                                }
                                else if (isNum(a.c))
                                {
                                        uint32_t t = stol(a.c);
                                        binarypushback(t);
                                }
                        }
                }
        }
        */
        // writes binary
        for (uint8_t bin : binary) {
            out.write((char*)&bin, 1);
        }
        in.close();
        out.close();
    }
};

using namespace std;
using namespace std::filesystem;
static vector<string> infiles;
static string inpath;
static string outpath = "a.bin";
static assembler a;
static path cwd = current_path();
static inline void clrscr() { cout << "\033[2J\033[1;1H"; }
static inline void println(string a) { cout << a << endl; }
static void handlemenu(int act) {
    // vector<string> files;
    auto print_Files = []() {
        for (string a : infiles) {
            println(a);
        }
    };

    int count = 0;
    for (const auto& entry : directory_iterator(cwd)) {
        string filename = entry.path().string();
        string txt = string() + filename[filename.length() - 3] +
                     filename[filename.length() - 2] +
                     filename[filename.length() - 1];
    }
    if (act == 1) {
        bool run = true;
        while (run) {
            string in;
            println("enter file name with extension or \"done\"");
            cin >> in;
            cout << in << endl;
            if (in.compare("done") != 0) {
                infiles.push_back(in);
            }
            if (in.compare("done") == 0) {
                return;
            }
        }
    } else if (act == 2) {
        print_Files();

    } else if (act == 3) {
        bool run = true;
        while (run) {
            string in;
            println("enter file name with extension or \"done\"");
            cin >> in;
            cout << in << endl;
            if (in.compare("done") != 0) {
                outpath = in;
            }
            if (in.compare("done") == 0) {
                return;
            }
        }

    } else if (act == 4) {
        string a;
        // printdir();
        print_Files();
        cout << "press enter" << endl;
        cin >> a;
    }
}

static void showMenu() {
    string in;
    int ret;
loop:
    // println("in:   ");
    clrscr();
    cout << "output file:   " << outpath << endl;
    println("1:enter files to assemble");
    println("2:remove file from list");
    println("3:enter output file name");
    println("4:show files");
    println("5:assemble");
    println("6:exit");

    cin >> in;
    try {
        ret = atoi(in.c_str());
        if (ret <= 6 && ret > 0) {
            if (ret == 6) {
                exit(0);
            } else if (ret == 5) {
                return;
            } else {
                handlemenu(ret);
                goto loop;
            }

        } else {
            println("not a number selection");
            goto loop;
        }

    } catch (exception e) {
        println("not a number selection");
        goto loop;
    }
    return;
}

int main() {
    // showMenu();
    //    a.assemble(inpath, outpath);
    cout << (sizeof(a.commands)) << endl;
    int b = 0;
    while (a.commands[b] != "") {
        b++;
    }
    cout << b << endl;

    a.assemble("8bitasm.txt", outpath);
    cout << sizeof(a) << endl;
    // cout << sizeof(a.errormessege)<<endl;

    return 0;
}