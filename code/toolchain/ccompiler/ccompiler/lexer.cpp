#include "lexer.hpp"
Lexer::Lexer() 
{	//loadKeywords(keywordFile);
this->outfile =std::string("a.p");
    
}
Lexer::Lexer(std::string* outFile) {
	this->outfile =outfile;
	//loadKeywords(keywordFile);
}

void Lexer::loadKeywords(const std::string& filename) {
	std::ifstream file(filename);
	if (!file) {
		std::cerr << "Error: Could not open the keyword file." << std::endl;
		return;
	}

	std::string line;
	while (std::getline(file, line)) {
		if (!line.empty()) {
			// keywords.insert(line);
		}
	}
}

bool Lexer::isKeyword(const std::string& word) const {
	return keywords.find(word) != keywords.end();
}

bool Lexer::isOperator(char c) const {
	return std::string("+-*/=<>!&|").find(c) != std::string::npos;
}

bool Lexer::isDigit(char c) const {
	return std::isdigit(c);
}

bool Lexer::isAlpha(char c) const {
	return std::isalpha(c) || c == '_';
}

std::vector<Token>* Lexer::tokenize( std::string& filename) {
	std::vector<Token> tokens;
	std::ifstream file(filename); // Replace "data.txt" with the actual file name
	if (!file.is_open()) {
		std::cerr << "Error opening file!" << std::endl;
		std::
		return nullptr;
	}


	std::string input;
	while (std::getline(file, input)) {
		size_t i = 0;
		size_t length = input.length();

		while (i < length) {
			char current = input[i];

			// Skip whitespace
			if (std::isspace(current)) {
				++i;
				continue;
			}

			// Handle string literals (enclosed in quotes)
			if (current == '"') {
				size_t start = i++;
				while (i < length && input[i] != '"') {
					++i;
				}
				if (i < length) {
					tokens.push_back(Token(TokenType::STRING, input.substr(start + 1, i - start - 1)));
					++i;
					continue;
				}
				else {
					tokens.push_back(Token(TokenType::UNKNOWN, "Unterminated string"));
					break;
				}
			}

			// Handle numbers
			if (isDigit(current)) {
				size_t start = i;
				while (i < length && isDigit(input[i])) {
					++i;
				}
				tokens.push_back(Token(TokenType::NUMBER, input.substr(start, i - start)));
				continue;
			}

			// Handle identifiers (variable names, function names)
			if (isAlpha(current)) {
				size_t start = i;
				while (i < length && (isAlpha(input[i]) || isDigit(input[i]))) {
					++i;
				}
				std::string word = input.substr(start, i - start);
				if (isKeyword(word)) {
					tokens.push_back(Token(TokenType::KEYWORD, word));
				} else {
					tokens.push_back(Token(TokenType::IDENTIFIER, word));
				}
				continue;
			}

			// Handle operators
			if (isOperator(current)) {
				tokens.push_back(Token(TokenType::OPERATOR, std::string(1, current)));
				++i;
				continue;
			}

			// If none of the above, it's an unknown token
			tokens.push_back(Token(TokenType::UNKNOWN, std::string(1, current)));
			++i;
		}
	}
	file.close();
	tokens.push_back(Token(TokenType::EOF_TYPE, ""));
	return tokens;
}
