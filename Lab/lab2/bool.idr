module bool

data bool= true | false

id:bool->bool
--id true = true
--id false = false
id x = x

constTrue:bool->bool
--constTrue true = true
--constTrue false = true
constTrue bool = true



constFalse:bool->bool
constFalse bool = false

not: bool->bool
not true = false
not false = true




