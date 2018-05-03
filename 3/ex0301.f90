PROGRAM EX0301
IMPLICIT NONE
INTEGER(KIND=4)::a,b,c,d
WRITE(*,*) 'Enter the date of interest. Format as "2014 2 28" for "year &
&month day"...'
READ(*,*)a,b,c
IF(b==1) THEN
        d=c
ELSE IF(b==2) THEN
        d=c+31
ELSE IF(b==3) THEN
        d=c+59
ELSE IF(b==4) THEN
        d=c+90
ELSE IF(b==5) THEN
        d=c+120
ELSE IF(b==6) THEN
        d=c+151
ELSE IF(b==7) THEN
        d=c+181
ELSE IF(b==8) THEN
        d=c+212
ELSE IF(b==9) THEN
        d=c+243
ELSE IF(b==10) THEN
        d=c+273
ELSE IF(b==11) THEN
        d=c+304
ELSE IF(b==12) THEN
        d=c+334
END IF
IF(MOD(a,100)==0) THEN
        IF(b>2) THEN
        d=d+1
        END IF
ELSE IF(MOD(a,100)/=0) THEN
        IF(MOD(a,4)==0) THEN
        d=d+1
        END IF
END IF
WRITE(*,*) d
END
