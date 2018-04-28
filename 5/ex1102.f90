SUBROUTINE solve(s,a,b,n)
IMPLICIT NONE
REAL(KIND=8)::s,a,b,h,t
INTEGER::n,k
s=0d0
h=(b-a)/n
s=(a**2+dsin(a))+(b**2+dsin(b))
DO k=1,n-1
        t=a+k*h
        s=s+2d0*(t**2+dsin(t))
END DO
s=s*h/2d0
END SUBROUTINE solve

PROGRAM test_sub
REAL(KIND=8)::result,a=-2D0,b=2D0
INTEGER::n1=200,n2=2000
CALL solve(result,a,b,n1)
WRITE(*,*) result
CALL solve(result,a,b,n2)
WRITE(*,*) result
END PROGRAM
