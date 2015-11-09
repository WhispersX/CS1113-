{-
b1: String
b1 = brand f1

y1: Nat
y1 = EST f1

p1: bool
p1 = ilike f1

f2: Fashion
f2 = mkFashion "YSL" 1961 false

b2: String
b2 = brand f2

y2: Nat
y2 = EST f2

p2: bool
p2 = ilike f2

f3: Fashion
f3 = mkFashion "Burberry" 1856 false 

b3: String
b3 = brand f3

y3: Nat
y3 = EST f3

p3: bool
p3 = ilike f3
-}
{-
data headquarter =paris| london
data brand = Chanel|YSL|Burberry|Cartier
data name = coco | yves | thomas | louis
data fashion = mkFashion brand Nat name headquarter

chan: fashion
chan = mkFashion Chanel 1909 coco paris

ysl: fashion
ysl = mkFashion YSL 1961 yves paris

bur: fashion
bur = mkFashion Burberry 1856 thomas london

car: fashion
car = mkFashion Cartier 1847 louis paris

brandname: fashion -> brand
brandname (mkFashion b y n h) = b

founded: fashion->Nat
founded (mkFashion b y n h) = y

foundername: fashion-> name
foundername (mkFashion b y n h) = n

bheadquarter: fashion-> headquarter
bheadquarter (mkFashion b y n h)=h

-}
