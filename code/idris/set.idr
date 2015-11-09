module set

import bool
import list
import ite
import eq

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for bulding any set
new_set: set a
new_set = mkSet nil

|||return { given value} union given set
set_insert:(eq a)=> a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

same_elements: (eq a)=> list a -> list a ->bool
same_elements l1 l2= and (subset_elements l1 l2) (subset_elements l2 l1)

eql_set:(eq a)=> set a->set a->bool
eql_set (mkSet l1) (mkSet l2)= same_elements l1 l2

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2

--instance (eq a) => eq (set a) where
  --eql (mkSet l1) (mkSet l2)  = and (subset_elements l1 l2) (subset_elements l2 l1)

--instance (eq a) => eq (set a) where
  --eql (mkSet l1) (mkSet l2)  = and (eql l1 l2) (eql l2 l1)

--instance (Serialize a)=> Serialize (set a) where
  --toString (mkSet l) = "{" ++ (toStringListVal l)++"}"

