-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool

import Serialize

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

|||implicit, binary function
and: bool->bool->bool
and true true = true
and _ _ =false

uf: bool-> bool
uf=(and true)

or: bool->bool->bool
or false false = false
or _ _ = true

nand: bool->bool->bool
nand a b = bool.not (and a b)

xor: bool-> bool -> bool
xor true false =true
xor false true =true
xor _ _ =false

{-
Exam Problem #2: There are 16 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 16 such functions, and no more.
-}

pand: bool-> bool-> bool
pand false = constFalse
pand true = bool.id

por: bool->bool->bool
por true =constTrue
por false =bool.id

pxor: bool-> bool->bool
pxor true =bool.not
pxor false = bool.id

pnand: bool->bool->bool
pnand true = bool.not
pnand false = constTrue

eql_bool: bool->bool->bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "false"
  
  
