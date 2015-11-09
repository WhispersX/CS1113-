difference:
1. idris is compiled: take code through compile system,
   python interpreted

2. idris uses static type checking: when it is in the compile step
   every calue has a static type, no need to check for dynamic checking

 python uses dynamic type checking: when code is runing, no compile
   stage, directly run, no check until the function is running

3. idris values are immutable, (can't change, ex,if i already bound
   the symbol to a value, i could not change)
   python has mutable state: can update the calue by later definition

4. idris is a language of expression:
   python: commonds; state transformer, could update the state, eg,
   change the value,

State: a mutable relationship between variable and values,
commands and expression is an imperative language can both read and update the state of a running program

Expression
1 arithmetic expression: eg.1+2
2 boolean expression: 1>2
3 procudure call expression: can change the state,side effect

-Assignment:
variable =(bound to) expression

-conditional:
if (boolean expression) - command for true, otherwise use command for false 

-iteration:
while (boolean expression) -true , command and then repeat, false, done
while x <10 x=x+1
not infinite, since run the command will change the state of command

-Procedure Call: not only get the result, but also have side effect, update the state memory

tuple in python is immutable, but immutable with dictionary
python tuple start with 0
