%{
    #include<stdio.h>
	#include<string.h>
    #include<math.h>
	#include<stdlib.h>
%}

%%  

identifiers "name"[a-zA-Z]([a-zA-Z0-9])*
single_line_comment "//".*
multiple_line_comment [ ]*[/]"first_comment"[a-zA-Z0-9!@#*(){}_+-,.:\|?><\n\t ]*"last_comment"[/]

{single_line_comment} {
	printf("This is single line comment\n");

}

":int"      { printf("int"); } 
":float"    {printf("float");}
":float8b"  {printf("double");} 
":string"   {printf("string");} 
":string1b" {printf("char");}
":void"      {printf("void");} 

      
"-iff" { printf("if");}
"-otherwise"  {printf("else");}
"-else iff"  {printf("else if");}
    
 
"-loop"  {printf("for");}    
"-untill"  {printf("while");}
"--break"  {printf("break");}
"--next"    {printf("continue");}
 
"equal="  {printf("==");}
"not="     {printf("!=");}
"plus+"       {printf("++");}
"minus-"     {printf("--");}
"lthen"         {printf("<");}
"gthen"     {printf(">");}
":="         {printf("=");}
     
"+"  {printf("+");}
"-"   {printf("-");}
"*"   { {printf("*");}}
"/"    {printf("/");}
     
"(" {printf("(");}
")" {printf(")");}
"-->" {printf("{");}
"<--" {printf("}");}
";" {printf(";;");}

"fn-sqrt" {printf("sqrt()");}
"fn-sin"  {printf("sin()");}
"fn-cos"     {{printf("cos()");}}
"fn-tan"   {printf("tan()");}
"fn-log"    {printf("log()");}
"fn-pow"    {printf("pow()");}


 
%%


int yywrap(){}

int main(){
    yylex();
    yyin = freopen("input.txt","r",stdin);
	yyout = freopen("output.txt","w",stdout);
}