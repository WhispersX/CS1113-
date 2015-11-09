module bool

data bool= true | false

constTrue:bool-> bool
constTrue true = true
constTrue false = true

constFalse:bool->bool
constFalse true = false
constFalse false = false

