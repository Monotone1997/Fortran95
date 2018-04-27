## 考试内容：
1.输入若干单精度浮点数
2.按ES格式，将浮点数按递增顺序逐行显示
3.最后输出平均值和总体方差

```
program ex1001
implicit none
integer::n
real(kind=4)::input(100)=0
integer::i,j,k,s
real(kind=4)::avg,fc,temp,sumn=0
write(*,*) "please input number:"
read(*,*) n
write(*,*) "please input data:"
do k=1,n
    read(*,*) input(k)
end do

!计算平均数
avg=sum(input)/n 

!计算均方差
do k=1,n 
    sumn=sumn+(input(k)-avg)**2
end do
fc=sumn/n

!排序
do i=1,n-1
    do j=i+1,n 
        if(input(i)>input(j)) then
            temp=input(i)
            input(i)=input(j)
            input(j)=temp
        end if
    end do
end do

!格式化输出
do s=1,n 
    write(*,101) input(s)
end do

write(*,*) "avg="
write(*,101) avg

write(*,*) "fc="
write(*,101) fc

101 format(ES8.2)

end program ex1001
```
