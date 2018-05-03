PROGRAM EX0403
INTEGER i,j
DO i=1,9
DO j=1,i
WRITE(*,"(i2,a1,i1,a1,i2,$)") i,"x",j,"=",i*j
END DO
WRITE(*,*)
END DO
END
