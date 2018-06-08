program ex1001
implicit none
integer::n=4,i,j,k
real(kind=8)::x(4),y(4),temp(4)
real(kind=8)::t(3),ty
x=(/30,45,60,90/)
y=(/0.866025404,0.707106781,0.5,0.0/)
t=(/47.0,53.0,79.0/)
write(*,*) "     degree  ","Lagrange                  ","built-in function" 
write(*,*) "----------------------------------------------------------"
do k=1,3
    ty=0.0
    do i=1,n
        temp(i)=y(i)
        do j=1,n
            if(j==i) cycle
            temp(i)=temp(i)*(t(k)-x(j))/(x(i)-x(j))
        end do
        ty=ty+temp(i)
    end do
    write(*,*) floor(t(k)),ty,cos(t(k)*3.1415926/180)
end do

end program ex1001
