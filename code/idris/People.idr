module People

import Person
import list
import bool

-- a few Persons

to: Person
to = mkPerson "Tom" 19 56 false

mar: Person
mar = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person 
daryl = mkPerson "Daryl" 19 71 false

people: list Person
people = to::mar::ge::daryl::nil
