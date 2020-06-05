package pl5;
import java_cup.runtime.*;
%%
%unicode
%cup
%line
%column

ENDOFLINE=\n|\r|\n\r
BLANK={ENDOFLINE}+|[ \t\f]+

%%
\d+\.?\d+([eE][+-]?\d+)?|\d+\.?\d*([eE][+-]?\d+)? { return new Symbol(sym.FLOAT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1), new Float(yytext())); }
"+" { return new Symbol(sym.PLUS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"-" { return new Symbol(sym.MINUS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"*" { return new Symbol(sym.TIMES, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"/" { return new Symbol(sym.DIV, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"^" { return new Symbol(sym.POW, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
[sS][qQ][rR][tT] { return new Symbol(sym.SQRT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
";" { return new Symbol(sym.SEMICOLON, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"(" { return new Symbol(sym.LEFT_BRACKET, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
")" { return new Symbol(sym.RIGHT_BRACKET, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
. { System.out.println("[Lex] Error léxico en línea "+(yyline+1)+", columna "+ (yycolumn+1)); }
{BLANK} {}