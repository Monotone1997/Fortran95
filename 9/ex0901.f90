program ex0901
implicit none
integer::i,j,k,l
real::a(3,3)
real::b(3)=(/9,7,6/)
real::x(3)=(/0,0,0/)
real::y(3)=(/0,0,0/)
real::e=0.0000001
a=reshape((/10,-1,0,-1,10,-2,0,-4,10/),(/3,3/))
do k=1,500
  do i=1,3
     do j=1,3
        if(i/=j) then
        y(i)=y(i)-a(i,j)/a(i,i)*x(j)
        end if
     end do
    y(i)=y(i)+b(i)/a(i,i)
  end do
  write(*,*)k,y(1),y(2),y(3)
  if(max(abs(x(1)-y(1)),abs(y(2)-x(2)),abs(y(3)-x(3)))<e) stop
  x=y
  y=(/0,0,0/)
end do
end program