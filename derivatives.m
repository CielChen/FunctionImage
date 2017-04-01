syms x y l h%定义符号变量
%l=100;
%h=150;
f=1- (1/(2*pi))*atan( ( (l+x)*h  ) / ( (y^2+(l+x)^2 )^0.5 *(y^2+h^2)^0.5 )  )  - (1/(2*pi))*atan( ( (l-x)*h  ) / ( (y^2+(l-x)^2 )^0.5 *(y^2+h^2)^0.5 )  ) ;

%对x求偏导
dx=diff(f,x);
dx

l=100;   %设置l和h的值
h=150;
z=1- (1/(2*pi))*atan( ( (l+x)*h  ) / ( (y^2+(l+x)^2 )^0.5 *(y^2+h^2)^0.5 )  )  - (1/(2*pi))*atan( ( (l-x)*h  ) / ( (y^2+(l-x)^2 )^0.5 *(y^2+h^2)^0.5 )  ) ;
dzx=diff(z,x);   %对x求偏导
dzx

%令y固定

subplot(1,2,1);
ezsurf(z);  %画图：z
subplot(1,2,2);
ezsurf(dzx);   %画图：对x求偏导