%{
    #include<stdio.h>
	#include<string.h>
    #include<math.h>
	#include<stdlib.h>
%}


identifiers [a-zA-Z]([a-zA-Z0-9])*[_]
single_line_comment "//".*
multiple_line_comment [ ]*[/]"{"[a-zA-Z0-9!@#*(){}_+-,.:\|?><\n\t ]*"}"[/]


%%  

{single_line_comment} {
	printf("This is single line comment\n");
}
{multiple_line_comment} {
	printf("This is multiple line comment\n");
}

":int"      {printf("int"); } 
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
"lthen"         {printf("%c",60);}
"gthen"     {printf("%c",62);}
":="         {printf("=");}
"plus=" {printf("+=");}
"minus=" {printf("-=");}
"multi=" {printf("*=");}
"div="  {printf("/=");}
     
"+"  {printf("+");}
"-"   {printf("-");}
"*"    {printf("*");}
"/"    {printf("/");}

"(" {printf("(");}
")" {printf(")");}
"-->" {printf("{");}
"<--" {printf("}");}
";;" {printf(";");}

"fn-sqrt"   {printf("sqrt()");}
"fn-sin"    {printf("sin()");}
"fn-cos"    {{printf("cos()");}}
"fn-tan"   {printf("tan()");}
"fn-log"    {printf("log()");}
"fn-pow"    {printf("pow()");}

"bd1971" {printf("#include");}
"_main_" {printf("main()");}
"--ret" {printf("return");}
"System.out.println" {printf("printf");}
"System.in.input"   {printf("scanf");}
"util.stdio" {printf("stdio.h");}
"util.string" {printf("string.h");}
"util.math" {printf("math.h");}
"util.stdlib" {printf("stdlib.h");}


" " {printf(" ");}
[0-9]+ { 
	int n = atoi(yytext);
	printf("%d", n);
}

{identifiers} {
	char* a=strdup(yytext);
    char s[50];
    int j = 0;
    for(int i = 4 ; a[i] != '_' ; i++){
        s[j++] = a[i];
    }
    s[j] = '\0';
	printf("%s", s);
}
[a-zA-Z] {printf("%s", yytext);}



%% 


int yywrap(){}

int main(){
    yyin = freopen("input.txt","r",stdin);
	yyout = freopen("output.txt","w",stdout);
    yylex();
    
}