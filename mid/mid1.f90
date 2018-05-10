program main
implicit none
integer i,j,n,sum
integer,allocatable ::  a(:,:)

sum = 0
write(*,*)"请输入要打印的行数："
read(*,*)n
allocate(a(n,n))
 write(*,*) "杨辉三角的展开式为："
do i=1,n

  do j=1,i

     if(j==1.or.j==i)then
       a(i,j)=1
       sum = sum +a(i,j)
     else
       a(i,j)=a(i-1,j-1)+a(i-1,j)
       sum = sum +a(i,j)
     end if

    end do
  
 
  write(*,'(100i5)')(a(i,j),j=1,i)
    end do
write(*,"('杨辉三角的总和是:',i10)") sum

end 
