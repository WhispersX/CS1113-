module list

import nat
import bool
import ite
import eq
import Serialize

infixr 7::
data list a = nil|(::) a (list a)

length: list a -> nat
length nil = O
length (n:: l') = S (length l')

|||return the result of appending two lists
append: list a -> list a -> list a
append nil l2= l2
append (h:: l1') l2 = h:: (append l1' l2)

||| append as an infix operater ++
(++): list a-> list a -> list a
(++) nil l2 = l2
(++) (h :: t) l2 = h :: (t ++ l2)

||| map a function over elements of a list (function-list)
map: (a->b) -> list a -> list b
-- map (a->b) nil = nil
map f nil = nil
map f (h::t) = (f h) :: ( map f t)


|||give a list and a predicate on elements 
|||return the sublist of element for which
|||the predicate is true
{-(take a predicate lista return to a sublist a)-}
filter: (a->bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h:: (filter f t))
                           (filter f t)
-- true (top line) f is the function you will apply to list a 
-- filter evenb ((S(S(S O)))::(S(S O)):: (S O):: O :: nil)
--return (S(S O)) O nil -- list nat

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

--eql: a-> a-> bool
--eql v1 v2 = ?big_hole

--"a" needs to be a type of eq class
member:(eq a)=> a -> list a-> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)

instance (eq a) => eq(list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2:: t2) = and (eql h1 h2) (eql t1 t2)

--l1 in l2; l2 in l1
--h l1 in l2, t in l1 in l2

subset_elements:(eq a)=> list a->list a-> bool
subset_elements nil l = true
subset_elements (h::t) l = and (member h l) (subset_elements t l)

toStringList: (Serialize a)=> list a->String
toStringList nil = ""
toStringList (h::nil) = toString h
toStringList (h::t) = (toString h)++ "," ++ (toStringList t) 

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"
{-
instance (Serialize a)=> Serialize (list a) where
  toString nil = " "
  toString (l::nil) = toString l
  toString (h::t) = (toString h)++ ","++ (toString t)

printset: (Serialize a)=> list a->String
printset l = "[" ++ (toString l)++ "]"

-}
