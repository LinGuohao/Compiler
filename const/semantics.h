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
	std::string value;
	expression_descriptor(type t, std::string s) {
		expr_type = t;
		expr_code = s;
	}
	expression_descriptor(type t, std::string s,std::string v) {
		expr_type = t;
		expr_code = s;
		value = v;
	}
};

struct var_data {
	int decl_row;
	type decl_type;
    std::string label;
	std::string default_val;
	int is_const = 0;
	var_data(){}
	var_data(int i, type t, std::string l)
	{
		decl_row = i;
		decl_type = t;
        label = l;
	}
	var_data(int i, type t, std::string l,std::string dl,int if_const)
	{
		decl_row = i;
		decl_type = t;
        label = l;
		default_val = dl;
		is_const = if_const;
	}
};

#endif
