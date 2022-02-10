#ifndef SEMANTICS_H
#define SEMANTICS_H

#include<iostream>
#include<string>
#include<map>
#include<sstream>

enum type { integer, boolean };

struct expression_descriptor {
	type expr_type;
	std::string expr_code;
	bool is_null;
	expression_descriptor(type t, std::string s, bool null) {
		expr_type = t;
		expr_code = s;
		is_null = null;
	}
};

struct var_data {
	int decl_row;
	type decl_type;
    std::string label;
	bool is_null;
	var_data(){}
	var_data(int i, type t, std::string l)
	{
		decl_row = i;
		decl_type = t;
        label = l;
		is_null = true;
	}
};

#endif
