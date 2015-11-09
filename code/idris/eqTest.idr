module eqTest

import eq
import bool
import nat
import unit

b: bool
b = (eql true false) 

b2: bool
b2 = (eql true true)

n: bool
n = (eql O O)

u: bool
u = (eql mkUnit mkUnit)
