PROGRAM EX1001
INTEGER,PARAMETER::n=4
REAL(KIND=8)::pi=3.141592653589793
REAL(KIND=8)::x(n)=(/30,45,60,90/)
REAL(KIND=8)::y(n)=(/sqrt(3.0)/2,sqrt(2.0)/2,1.0/2,0.0/)
REAL(KIND=8)::temp(n)
REAL(KIND=8)::t,ty,ty2
DO i=1,n
    x(i)=x(i)*pi/180
END DO
WRITE(*,*) 'enter the angle'
READ(*,*) t
t=t*pi/180
DO i=1,n
    temp(i)=y(i)
    DO j=1,n
        IF(j==i) CYCLE
        temp(i)=temp(i)*(t-x(j))/(x(i)-x(j))
    END DO
END DO
ty=sum(temp)
ty2=cos(t)
WRITE(*,*) 'result sovled by lagrange interpolation method:'
WRITE(*,*) ty
WRITE(*,*) 'result sovled by built-in function:'
WRITE(*,*) ty2
END