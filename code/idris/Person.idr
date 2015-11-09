module Person

import bool

||| A Person has an age in years, a height in inches, 
||| and a gender, true=female, false=male.

{-
data Person = mkPerson String Nat Nat bool

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

getName: Person -> String
getName (mkPerson name age height gender) = name

getAge: Person -> Nat
getAge (mkPerson name age height gender) = age

getHeight: Person -> Nat
getHeight (mkPerson name age height gender) = height

getGender: Person -> bool
getGender (mkPerson name age height gender) = gender

setName: Person -> String -> Person
setName (mkPerson n a h g) n' = mkPerson n' a h g

tom': Person
tom' = setName tom "John"

-}

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

setName: Person -> String -> Person
setName p n = record { name = n } p

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

tAge: Nat
tAge = age tom

tom': Person
tom' = record {name = "John" } tom

