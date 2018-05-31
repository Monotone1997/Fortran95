function f(x)
implicit none
real::f,x
f=x**3+2*x**2+10*x-20
end function
function g(x)
implicit none
real::g,x
g=3*x**2+4*x+10
end function
program ex0902
implicit none
real::x1,x2,f,e,g
integer::n
e=0.0000001
x1=1d0
do n=1,500
  x2=x1-f(x1)/g(x1)
  write(*,*)n,x2
  if((abs(x2-x1))<e) exit
  x1=x2
end do
end program