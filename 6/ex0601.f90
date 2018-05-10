!计算出 π 值
SUBROUTINE init_random_seed()
INTEGER :: i, n, clock
INTEGER, ALLOCATABLE :: seed(:)
CALL RANDOM_SEED(size = n)
ALLOCATE(seed(n))
CALL SYSTEM_CLOCK(COUNT=clock)
seed = clock + 37 * (/ (i - 1, i = 1, n) /)
CALL RANDOM_SEED(put = seed)
DEALLOCATE(seed)
END SUBROUTINE init_random_seed

PROGRAM EX0601
REAL::a(2)
REAL::pi=0
INTEGER::sum,N=0
WRITE(*,*)'Please Enter N'
READ(*,*)N
CALL init_random_seed()
DO i=1,N
   CALL RANDOM_NUMBER(a)
   IF(a(1)**2+a(2)**2<1) THEN
     sum=sum+1
   END IF
END DO
pi=4*REAL(sum)/REAL(N)
WRITE(*,'(A2,A1,F9.7)') 'pi','=',pi
END
