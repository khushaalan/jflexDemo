%%

%class Lexer
%standalone
%unicode
%line
%column

ID = [a-zA-Z]+
NUM = [0-9]+
SPECIAL = [^a-zA-Z0-9\n]+

%%

{ID}      { System.out.println("ID: "+yytext()); }
{NUM}     { System.out.println("Number: "+yytext()); }
{SPECIAL} { System.out.println("Special characters: "+yytext()); }
.|\n      { /* Ignore all other characters */ }
