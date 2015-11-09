module love

import pair

data people = mary| maurice

loves: people->people
loves mary= maurice
loves maurice = maurice

p1: pair people people
p1= mkPair mary maurice

p2: pair people people
p2= mkPair maurice mary


