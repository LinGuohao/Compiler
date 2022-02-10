#ifndef SEMANTICS_H
#define SEMANTICS_H

#include<iostream>
#include<string>
#include<map>
#include<sstream>

using namespace std;
enum type { integer, boolean };

struct expression_descriptor {
	type expr_type;
	std::string expr_code;
	int val;
	expression_descriptor(type t, std::string s) {
		expr_type = t;
		expr_code = s;
	}
	expression_descriptor(type t, std::string s,int v) {
		expr_type = t;
		expr_code = s;
		val = v;
	}
};

struct var_data {
	int decl_row;
	type decl_type;
    std::string label;
	string arrname;
	var_data(){}
	var_data(int i, type t, std::string l)
	{
		decl_row = i;
		decl_type = t;
        label = l;
		
	}
};

struct arr_declear {
	string arr_name;
	int length;
	arr_declear(string an,int len)
	{
		arr_name = an;
		length = len;
	}
};

#endif
