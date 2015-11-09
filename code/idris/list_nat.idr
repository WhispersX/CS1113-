module list_nat

import nat
import pair

data list_nat = nil | cons nat list_nat

length: list_nat -> nat
length nil=O
length (cons n l')=S (length l')

append: list_nat-> list_nat -> list_nat
append nil l'' = l''
append (cons h t) l'= cons h (append  t l')

