%定义x和y的取值范围
xx=linspace(-50,.1,50);
yy=linspace(-50,.1,50);
[x,y]=meshgrid(xx,yy);

%定义常量
l=1000;
h=100;

%注意：矩阵的乘法，幂数，除法，开方等，一定要在符号前面加“.”！！！
z=1- (1/(2*pi))*atan( ( (l+x).*h  ) ./ ( (y.^2+(l+x).^2 ).^0.5 .*(y.^2+h^2).^0.5 )  )  - (1/(2*pi))*atan( ( (l-x).*h  ) ./ ( (y.^2+(l-x).^2 ).^0.5 .*(y.^2+h^2).^0.5 )  ) ;

%画二元函数图
mesh(x,y,z);
title('F(x,y)');
x1=xlabel('X轴');        
x2=ylabel('Y轴');       
x3=zlabel('F(x,y)');        
set(x1,'Rotation',30);   
set(x2,'Rotation',-30);   



%y固定，画F(x).看x变化时，函数如何变化
y=30;
f=1- (1/(2*pi))*atan( ( (l+x).*h  ) ./ ( (y.^2+(l+x).^2 ).^0.5 .*(y.^2+h^2).^0.5 )  )  - (1/(2*pi))*atan( ( (l-x).*h  ) ./ ( (y.^2+(l-x).^2 ).^0.5 .*(y.^2+h^2).^0.5 )  ) ;
plot(x,f,'x');
xlable('X轴');
ylable('Y不变，F值');



