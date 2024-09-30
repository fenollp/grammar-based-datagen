grammar Molecule;

molecule: atom+;

atom: 'O' | 'C' | 'N' | 'S' | '1' | '2' | '(' atom* ')' ')' | '=' atom;

// The grammar is quite permissive and will accept a wide range of inputs. If you want to restrict the grammar to only accept the given examples, you can modify the `atom` rule as follows:
// atom: 'O' | 'C' | 'N' | 'S' | '1' | '2'
//      | '(' 'C' atom* ')' ')'
//      | '=' 'O'
//      | 'N' atom 'C' '(' 'O' ')' 'N' atom 'C' '(' 'O' ')' 'N' 'C' atom 'O'
//      | 'N' 'c' '1' atom 'C' '(' 'O' ')' 'N' 'c' '1' atom 'S' 'S' 'c' '2' atom 'c' '2' 'N'
//      | 'N' 'c' '1' atom 'C' 'c' '2' atom 'C' '2' 'N'
// ;

WHITESPACE: [ \t\r\n]+ -> skip;
