{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    num                {    TokenNum $$    }
    '+'                {    TokenAdd       }
    '-'                {    TokenSub       }
    '*'                {    TokenMul       }
    "&&"               {    TokenAnd       }
    "||"               {    TokenOr        }
    '^'                {    TokenXor       }
    "true"             {    TokenTrue      }
    "false"            {    TokenFalse     }
    "if"               {    TokenIf        }
    "then"             {    TokenThen      }
    "else"             {    TokenElse      }
    '!'                {    TokenNot       }
    '>'                {    TokenMaior     }
    '<'                {    TokenMenor     }
    "=="               {    TokenIgual     }
    var                {    TokenVar $$    }
    "let"              {    TokenLet       }
    "in"               {    TokenIn        }
    "lam"              {    TokenLam       }
    '='                {    TokenAtrib     }
    '{'                {    TokenLBrace    }
    '}'                {    TokenRBrace    }
    '.'                {    TokenPonto    }
    "->"               {    TokenArrow     }
    ','                {    TokenVirgula     }
    '|'                {    TokenPipe     }
    bool             {    TokenBool      }

%%

Exp   : num                                 {   Num $1              }
      | var                                 {   Var $1              }
      | "false"                             {   BFalse              }
      | "true"                              {   BTrue               }
      | Exp '+' Exp                         {   Add $1 $3           }
      | Exp '-' Exp                         {   Sub $1 $3           }
      | Exp '*' Exp                         {   Mul $1 $3           }
      | Exp "&&" Exp                        {   And $1 $3           }
      | Exp "||" Exp                        {   Or $1 $3            }
      | Exp '^' Exp                         {   Xor $1 $3           }
      | "if" Exp "then" Exp "else" Exp      {   If $2 $4 $6         }
      | '!' Exp                             {   Not $2              }
      | Exp '>' Exp                         {   Maior $1 $3         }
      | Exp '<' Exp                         {   Menor $1 $3         }
      | Exp "==" Exp                        {   Igual $1 $3         }
      | "let" var '=' Exp "in" Exp          {   Let $2 $4 $6        }
      | "lam" var '<' Tipo '>' "->" Exp     {   Lam $2 $4 $7        }
      | Exp '|' Exp                         {   App $1 $3           }
      | '{' Records '}'                     {   Record $2           }
      | Exp '.' var                         {   ProjRecord $1 $3    }




Tipo  : bool                                {   TBool          }
      | num                                 {   TNum           }
      | '<' Tipo "->" Tipo '>'              {   TFun $2 $4     }


Records : var '=' Exp ',' Records          {   ( $1, $3 ) : $5 }
        | var '=' Exp                      {   [ ( $1, $3 ) ] }
        |                                  {   []             }


{

parseError :: [Token] -> a
parseError _ = error "Syntax error!"


}