
"as" @keyword
"case" @keyword
"class" @keyword
"data" @keyword
"default" @keyword
"deriving" @keyword
"do" @keyword
"else" @keyword
"external" @keyword
"fcase" @keyword
"forall" @keyword
"free" @keyword
"hiding" @keyword
"if" @keyword
"import" @keyword
"in" @keyword
"infix" @keyword
"infixl" @keyword
"infixr" @keyword
"instance" @keyword
"let" @keyword
"module" @keyword
"newtype" @keyword
"of" @keyword
"qualified" @keyword
"then" @keyword
"type" @keyword
"where" @keyword

".." @keyword
"::" @keyword
"=" @keyword
"\\" @keyword
"|" @keyword
"<-" @keyword
"->" @keyword
"@" @keyword
"~" @keyword
"=>" @keyword

; Interfaces
; ----------

(module_identifier) @interface

; Types
; -----

((type_identifier) @type.builtin
  (#match? @type.builtin "^(Bool|Char|DET|Either|Float|Int|IO|IOError|Maybe|Ordering|ReadS|ShowS|String|Success)$"))
(type_constructor "()") @type.builtin
(type_constructor "[]") @type.builtin
(type_constructor "(->)") @type.builtin
(type_constructor (tuple_constructor)) @type.builtin

(type_identifier) @type
(type_variable_identifier) @type.variable
(anonymous_type_variable) @type.variable

; Classes
; -------

((class_identifier) @class.builtin
  (#match? @class.builtin "^(Bounded|Enum|Eq|Fractional|Functor|Integral|Monad|Num|Ord|Real|Read|Show)$"))

(class_identifier) @class

; Constructors
; ------------

((data_constructor_identifier) @constructor.builtin
  (#match? @constructor.builtin "^(EQ|FailError|False|GT|IOError|Just|Left|LT|NondetError|Nothing|Right|True|UserError)$"))
(general_data_constructor "()") @constructor.builtin
(general_data_constructor "[]") @constructor.builtin
(general_data_constructor (tuple_constructor)) @constructor.builtin

(data_constructor_identifier) @constructor

; Functions
; ---------

((function_identifier) @function.builtin
  (#match? @function.builtin "^(abs|all|and|any|anyOf|appendFile|apply|asTypeOf|boundedEnumFrom|boundedEnumFromThen|break|catch|chr|compare|concat|concatMap|cond|const|curry|div|divMod|done|doSolve|drop|dropWhile|either|elem|ensureNotFree|ensureSpine|enumFrom|enumFromThen|enumFromThenTo|enumFromThenTo_|enumFromThen_|enumFromTo|enumFromTo_|enumFrom_|error|fail|failed|filter|flip|fmap|foldIO|foldl|foldl1|foldM|foldr|foldr1|forIO|forIO_|forM|forM_|fromEnum|fromFloat|fromInt|fst|getChar|getLine|groundNormalForm|head|id|if_then_else|ioError|iterate|length|letrec|lex|liftIO|liftM|liftM2|lines|lookup|map|mapIO|mapIO_|mapM|mapM_|max|maxBound|maybe|min|minBound|mod|negate|negateFloat|negate_|normalForm|not|notElem|null|or|ord|otherwise|pred|print|putChar|putStr|putStrLn|quot|quotRem|read|readFile|readList|readParen|reads|readsPrec|recip|rem|repeat|replicate|return|reverse|seq|sequence|sequenceIO|sequenceIO_|sequence_|show|showChar|showError|showList|showParen|shows|showsPrec|showString|signum|snd|solve|span|splitAt|succ|success|tail|take|takeWhile|toEnum|uncurry|unknown|unless|unlessM|unlines|until|unwords|unzip|unzip3|userError|when|whenM|words|writeFile|zip|zip3|zipWith|zipWith3)$"))

(function_identifier) @function

; Properties
; ----------

(label_identifier) @property

; Variables
; ---------

(variable_identifier) @variable
(wildcard) @variable

; Operators
; ---------

((infix_operator) @operator.builtin
  (#match? @operator.builtin "^(:|!!|\$|\$!|\$!!|\$#|\$##|&|&&|&>|\\*|\\+|\\+\\+|-|/|\.|/=|<|<=|=:<=|=:<<=|=:=|==|>|>=|>>|>>=|\\?|\\|\\|)$"))
"-" @operator.builtin

(infix_operator) @operator

; Numbers
; -------

(int) @number
(float) @number

; Strings
; -------

(char) @string
(string) @string

; Comments
; --------

(pragma) @comment
(cpp_directive) @comment
(comment) @comment

; Punctuation
; -----------

(all_constructors) @punctuation

"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"`" @punctuation.bracket

(terminal) @punctuation.delimiter
"," @punctuation.delimiter
"." @punctuation.delimiter