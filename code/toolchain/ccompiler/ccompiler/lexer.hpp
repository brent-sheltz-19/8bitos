#pragma once

#include <string>
#include <vector>
#include <fstream>
#include <iostream>
#include <regex>
#include <unordered_set>

enum class TokenType {
	KEYWORD,       // Keywords from the file
	IDENTIFIER,    // Variable names or function names
	NUMBER,        // Numeric literals
	OPERATOR,      // Operators like +, -, *, etc.
	STRING,        // String literals
	EOF_TYPE,      // End of file/input
	UNKNOWN        // Unknown characters or errors
};

struct Token {
	TokenType type;
	std::string value;

	Token(TokenType t, const std::string& val) : type(t), value(val) {}
};

class Lexer {
public:
    Lexer();
	Lexer(std::string* outfile);
	std::vector<Token> tokenize( std::string& inFile);

private:
    std::string outfile;
	void loadKeywords(const std::string& filename);
	bool isKeyword(const std::string& word) const;
	bool isOperator(char c) const;
	bool isDigit(char c) const;
	bool isAlpha(char c) const;

	std::unordered_set<std::string> keywords=
	{
		{"char", true},
		{"int", true},
		{"long", true},
		{"long long", true},
		{"return", true},
		{"if", true},
		{"else", true}

	};

};

