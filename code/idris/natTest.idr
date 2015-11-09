module natTest

import nat
import bool
import pair
import Serialize
import eq
-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two 
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.

--four
f: nat
f= S(S(S(S O)))

--five
p: nat
p =S f

six: nat
six = S p

seven: nat
seven = S six

a: bool
a= evenb O

b: bool
b= evenb (S O)

c: bool
c= evenb (S(S O))

d: bool
d= evenb r

e: bool
e= evenb (S r)

x: bool
x = isZero r

y: nat
y = S O

--||| a test, expecting O
h1: nat
h1 = add O O

h2: nat
h2 = add O (S (S O))

h3: nat
h3 = add (S O) O

h4: nat 
h4 = add (S (S O)) (S (S (S O)))

m1:nat
m1 = mult O (S(S O))

m2: nat
m2 = mult (S(S O)) O

m3: nat
m3 = mult (S(S O)) (S(S(S O)))

s1: nat
s1 = sub O (S(S O))

s2: nat
s2 = sub (S(S O)) O

s3: nat
s3 = sub (S(S(S O))) (S O)

s4: nat
s4 = sub (S O) (S(S O))

-- given a pair of natural numbers, (x, n), return the value of x raised to the nth power
e1: nat
e1 = exp (S(S O)) O

e2: nat
e2 = exp  O (S(S(S O)))

e3: nat
e3 = exp (S(S(S O))) (S(S(S(S O))))

e4: nat
e4 = exp O O

l1: bool
l1= le O O

l2: bool
l2= le (S(S O)) O

l3: bool
l3 =le O (S(S(S O)))

l4: bool
l4 =le(S(S(S(S(S O))))) (S(S(S O)))

l5: bool
l5 =le (S(S O)) (S(S(S O)))

g1: bool
g1= gt O O

g2: bool
g2 = gt (S O) O

g3: bool
g3 = gt O (S(S O))

g4: bool
g4 = gt (S(S(S O))) (S(S(S(S O))))

g5: bool
g5 = gt (S(S(S(S O)))) (S(S O))

gg1: bool
gg1 = ge O O

gg2: bool
gg2 = ge O (S(S O))

gg3: bool
gg3 = ge (S(S(S O))) O

gg4: bool
gg4 = ge (S(S O)) (S(S O))

gg5: bool
gg5 = ge (S(S O)) (S(S(S O)))

ll1: bool
ll1 = lt O O

ll2: bool
ll2 = lt O (S(S O))

ll3: bool
ll3 = lt (S(S(S O))) O

ll4: bool
ll4 = lt (S(S(S O))) (S(S O))

s: String
s = toString h4
