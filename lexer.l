%option noyywrap

%{
    #include <stdio.h>
%}

%%
[0-9]+                                { printf("TOKEN: INT %s\n", yytext); }
[a-z][a-z0-9]{0,7}                    { printf("TOKEN: VAR %s\n", yytext); }

"="                                   { printf("TOKEN: ASSIGN =\n"); }
[(|)]                                 { printf("TOKEN: PARENTHESIS %s\n", yytext); }
"+"                                   { printf("TOKEN: ADD +\n"); }
"*"                                   { printf("TOKEN: MULTIPLY *\n"); }
[ \t\r\n]+                            { }

.                                     { printf("OTHER %s\n", yytext); }
%%

int main(void) {
    yylex();
    return 0;
}