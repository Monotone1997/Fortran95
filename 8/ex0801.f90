SUBROUTINE init_random_seed()
  INTEGER::i,n,clock
  INTEGER,ALLOCATABLE::seed(:)
  CALL RANDOM_SEED(size=n)
  ALLOCATE(seed(n))
  CALL SYSTEM_CLOCK(count=clock)
  seed=17*clock+37*(/(i-1,i=1,n)/)
  CALL RANDOM_SEED(put=seed)
  DEALLOCATE(seed)
END SUBROUTINE init_random_seed

PROGRAM EX0801
REAL(KIND=4)::time
REAL(KIND=8)::a,aF,aUF=0
REAL::timeF,timeUF,start,finish
INTEGER::j
CALL init_random_seed()
OPEN(UNIT=7,FILE='Format.dat',STATUS='REPLACE',FORM='FORMATTED',ACCESS='DIRECT',RECL=16)
OPEN(UNIT=8,FILE='UnFormat.dat',STATUS='REPLACE',FORM='UNFORMATTED',ACCESS='DIRECT',RECL=16)
!generate number
DO i=1,100000
   CALL RANDOM_NUMBER(a)
   WRITE(UNIT=7,FMT='(F16.14)',REC=i) a
   WRITE(UNIT=8,REC=i) a
END DO

CALL CPU_TIME(start)
DO i=1,200000
   CALL RANDOM_NUMBER(a)
   j=CEILING(100000*a)
   READ(UNIT=7,FMT='(F16.14)',REC=j) a
   aF=aF+a
END DO
CALL CPU_TIME(finish)
timeF=finish-start

CALL CPU_TIME(start)
DO i=1,200000
   CALL RANDOM_NUMBER(a)
   j=CEILING(100000*a)
   READ(UNIT=8,REC=j) a
   aUF=aUF+a
END DO
CALL CPU_TIME(finish)
timeUF=finish-start

aF=aF/200000
aUF=aUF/200000

WRITE(*,'(A,F16.14)') 'Formatted number=',aF
WRITE(*,'(A,F16.14)') 'Unformatted number=',aUF
WRITE(*,'(A,F9.7)') 'Formatted time=',timeF
WRITE(*,'(A,F9.7)') 'Unformatted time=',timeUF
END