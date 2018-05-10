PROGRAM midexam
IMPLICIT NONE
REAL(KIND=4)::s
CHARACTER(LEN=1)::c
INTEGER::a,b
DO WHILE(.TRUE.)
READ(*,'(I2,A1,I2)') a,c,b
IF(a==00) EXIT
IF(c=="+") THEN
s=a+b
ELSE IF(c=="-") THEN
s=a-b
ELSE IF(c=="*") THEN
s=a*b
ELSE IF(c=="/") THEN
s=real(a)/real(b)
END IF
WRITE(*,*)s
END DO
END
