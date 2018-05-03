PROGRAM EX0402
INTEGER(kind=4)::a=0,b=1,c=1
WRITE(*,*) c
DO WHILE(a<=1000)
c=a+b
WRITE(*,*) c
a=b
b=c
END DO
END
