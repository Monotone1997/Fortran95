!设计一个程序，满足以下功能：
!1.计算百位数内整数的四则运算
!2.除法输出结果是浮点数用浮点表示，整数用整数表示
!3.程序可连续运行，输入特定符号终止
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
