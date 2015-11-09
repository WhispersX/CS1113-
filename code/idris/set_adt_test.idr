module set_adt_test

import set_adt_hw
import list
import nat
import eq
import bool
import ite
import option
import pair
import Serialize
a1: list nat
a1 = (S O)::(S(S O))::(S(S(S O))):: nil

--set insert
--return mkSet ((S O)::(S(S O))::(S(S(S O)))::(S(S(S(S O))))::nil)
in1: set nat
in1 = set_insert (S(S(S(S O)))) (mkSet a1)
--return mkSet ((S(S O))::nil)
in2: set nat
in2 = set_insert (S(S O)) (mkSet nil)
--return (mkSet (a1::O))
in3: set nat
in3 = set_insert O (mkSet a1)

--list remove
--return list ((S(S O))::(S(S(S O)))::nil)
r1:list nat
r1 = list_remove (S O) a1
--return nil
r2:list nat
r2 = list_remove (S(S O)) nil

--set remove
--return set of ((S(S O))::(S(S(S O)))::nil)
sr1: set nat
sr1 = set_remove (S O) (mkSet a1)

--return mkSet nil
sr2:set nat
sr2 = set_remove (S O) (mkSet nil)


--set cardinality, return the number of elements
--return (S(S(S O)))
sc1: nat
sc1 = set_cardinality (mkSet a1)


set777: set nat
set777 = mkSet nil
--return O
sc2: nat
sc2 = set_cardinality set777

--set member, v in s, true; otherwise f
--return true
sm1: bool
sm1 = set_member (S O) (mkSet a1)

--return false
sm2: bool
sm2 = set_member (S(S(S(S O)))) (mkSet a1)

--set-union combine two sets
a2: list nat
a2 = (S(S(S(S O))))::(S(S(S O)))::nil

a3: list nat
a3 = (S O)::(S(S O))::nil

--return a1
lc1: list nat
lc1 = combine nil a1

--return a1+a2 without repeading the same element
lc2: list nat
lc2 = combine a1 a2

--return a3+a2 
lc3: list nat
lc3 = combine a3 a2

--return set a1
su1: set nat
su1 = set_union (mkSet nil) (mkSet a1)

--return set a1+a2-their share elements
su2: set nat
su2 = set_union (mkSet a1) (mkSet a2)

--return set a3+a2
su3: set nat
su3 = set_union (mkSet a3) (mkSet a2)

--set intersect

--return mkSet ((S(S(S O)))::nil)
si1: set nat
si1 = set_intersection (mkSet a1) (mkSet a2)

--return mkSet nil
si2:set nat
si2 = set_intersection (mkSet a2) (mkSet a3)

--return mkSet nil
si3:set nat
si3 = set_intersection (mkSet nil) (mkSet a1)

--set forall
sf1: bool
sf1 = set_forall evenb (mkSet a1)

sf2:bool
sf2 = set_forall evenb (mkSet nil)

sf3: bool
sf3 = set_forall evenb (mkSet a3)

--set difference, return to the set as s1-s2
--return a1-a2 = ((S O)::(S(S O))::nil)
sd1: set nat
sd1 = set_difference (mkSet a1) (mkSet a2)

--return a1-nil=a1
sd2: set nat
sd2 = set_difference (mkSet a1) (mkSet nil)

--return nil-a1 = nil
sd3: set nat
sd3 = set_difference (mkSet nil) (mkSet a2)

--set exist
--return true if any a in the set is even, otherwise false
--a1 = (S O)::(S(S O))::(S(S(S O))):: nil
a4:list nat
a4 =(S(S O))::(S(S(S(S O))))::nil

--return false
se1: bool
se1 = set_exists evenb set777

--return true
se2: bool
se2 = set_exists evenb (mkSet a1)

--return true
se3: bool
se3 = set_exists evenb (mkSet a4)

a5: list nat
a5 = (S O)::(S(S(S O)))::nil
--return false
se4: bool
se4 = set_exists evenb (mkSet a5) 


--set witness, give a function p:evenb, return an element that is
  --true for the given function
--some (S(S O))
sw1: option nat
sw1 = set_witness evenb (mkSet a1)
--some (S(S(S(S O))))
sw2: option nat
sw2 = set_witness evenb (mkSet a2)
--none
sw3: option nat
sw3 = set_witness evenb (mkSet a5)

--set_product
spp1: set (pair nat nat)
spp1 = set_product (mkSet a1) (mkSet a2)

--mkSet (mkPair (S O) true :: mkPair (S O) false :: mkPair (S (S O))true :: mkPair (S (S O)) false :: mkPair (S (S (S O))) true :: mkPair (S (S (S O))) false :: nil)

spp2: set (pair nat bool)
spp2 = set_product (mkSet a1) (mkSet (true::false::nil))

--return false
seql1: bool
seql1 = set_eql (mkSet a1) (mkSet a2)

b1: list nat
b1= (S(S O))::(S O)::nil

b2: list nat
b2= (S(S O))::(S O)::nil
--return true
seql2: bool
seql2 = set_eql (mkSet b1) (mkSet b2)

--"{{|Z},{||Z},{|||Z}{}}"
st1: String
st1 = set_toString (mkSet a1)

