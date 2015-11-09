module subject

data subject= calc1|calc2|calc3

after: subject->subject
after calc1=calc2
after calc2=calc3

before: subject->subject
before calc3 = calc2
before calc2=calc1



