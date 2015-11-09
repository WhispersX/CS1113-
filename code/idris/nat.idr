module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n =not (evenb n)

||| sum
add: nat->nat->nat
add O m = m
add (S n) m =S (add n m)

||| product
mult: nat->nat->nat
mult O m =O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

|||given a pair of natural numbers, (a,b) return a-b.
|||if a< =b, the answer will be O

sub: nat->nat->nat
sub O m =O
sub (S n) (S m) = sub n m

||| given a pair of natural numbers, (x, n), return the value of x raised to the nth power

exp: nat->nat->nat
exp x O =(S O)
exp x (S n) = mult x (exp x n)

|||given a pair of natural numbers, (a,b), return true
||| if a <=b otherwise return flase

le: nat->nat->bool
le O m =true
le (S n) O = false
le (S n) (S m) =le n m

|||given a pair of natural numbers, (a, b), return true if a is eql_natual to b, otherwise return false

eql_nat: nat->nat->bool
eql_nat O O =true
eql_nat (S n) O =false
eql_nat O (S m) =false
eql_nat (S n) (S m) =eql_nat n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2


|||given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false

gt: nat->nat->bool
gt n m = bool.not (le n m)

|||given a pair of natural numbers, (a, b), return true of a is greater than or eql_natual to b

ge: nat->nat-> bool
ge O (S m) =false
ge n O = true
ge (S n) (S m) =ge n m

|||given a pair of natural numbers, (a, b), return true if a is less than b

lt: nat->nat-> bool
lt n m = bool.not (ge n m )

pf: nat->nat
pf = add(S(S O))
-- pf (S(S(S O))) returns (S(S(S(S(S O))))) in REPL

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
