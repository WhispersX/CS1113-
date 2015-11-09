module list

--Apolumorphic list absztract data type

import nat

--The data type

data list a = nil | cons a (list a )

length:list a->nat
length nil=O
length (cons n l') =S(length l')

|||return the result of appending two lists
append: list a -> list a -> list a
append nil l2= l2
append (cons h l1') l2 = cons h (append  l1' l2)
