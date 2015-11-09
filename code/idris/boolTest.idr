module boolTest

import bool
import pair

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not(not b5)

a1: bool
a1 = and true true

a2: bool
a2 = and true false

a3: bool
a3 =and false false

a4: bool
a4 =and false true

o1: bool
o1 = or false false

o2: bool
o2 = or false true

o3: bool
o3 = or true true

o4: bool
o4 =or true false

n1: bool
n1 = nand true true

n2: bool
n2 = nand true false

n3: bool
n3 = nand false false

n4: bool
n4 = nand false true

x1: bool
x1= xor true false

x2: bool
x2= xor false true

x3: bool
x3= xor false false

x4: bool
x4= xor true true

pa1: bool
pa1= pand false true

pa2: bool
pa2= pand false false

pa3: bool
pa3= pand true false

pa4: bool
pa4= pand true true

po1: bool
po1= por true false

po2: bool
po2= por true true

po3: bool
po3= por false true

po4: bool
po4= por false false

px1: bool
px1= pxor true true

px2: bool
px2= pxor true false

px3: bool
px3= pxor false true

px4: bool
px4= pxor false false

pn1: bool
pn1= pnand true true

pn2: bool
pn2= pnand true false

pn3: bool
pn3= pnand false true

pn4: bool
pn4= pnand false false






