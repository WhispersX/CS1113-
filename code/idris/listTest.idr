module listTest

import nat
import list
import ite
import eq

l0: list nat
l0 = nil

l1: list nat
l1 = O:: nil

l2 : list nat
l2 = (S O):: (S(S O)):: nil

l3 : list nat
l3 = (S O) :: (S(S O)) :: (S(S(S O))):: nil

len_l2: nat
len_l2 =length l2

len_l3: nat
len_l3 = length l3

a1: list nat
a1= append nil nil

a2: list nat
a2 = (++) nil ((::) (S(S O))  nil)

--a3: list nat
--a3 = (++) ((S(S(S O))):: (S(S O)):: (S(S(S(S O)))):: nil)

--map evenb (O:: (S(S O)):: (S(S(S O))))

isThree: bool
isThree = (member (S(S(S O))) l2)
 
