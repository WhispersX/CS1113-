module listExample

import fashion
import list
import ite
import bool

a: list Fashion
a = f1 :: f2:: f3:: nil

b: list String
b = b1 :: b2 :: b3 :: nil

c: list Nat
c = y1 :: y2:: y3:: nil

d: list bool
d = p1 :: p2 :: p3 :: nil


yr: list Nat
yr = map foundingyr a

brand: list String
brand = map brand a

like: list bool
like = map ilike a

no: list Fashion
no = filter ilike a

