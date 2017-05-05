Ia=220/sqrt(3);
Ib=220/sqrt(3)*exp(-2*pi*1i/3);
Ic=220/sqrt(3)*exp(+2*pi*1i/3);

%different operating modes
I=[Ia Ib Ic Ia Ib Ic;
   Ia Ib Ic Ia Ic Ib;
   Ia Ib Ic Ib Ia Ic;
   Ia Ib Ic Ib Ic Ia;
   Ia Ib Ic Ic Ia Ib;
   Ia Ib Ic Ic Ib Ia];

H=20;
x1=-3.5;y1=H+6+6-5;
x2=-4.6;y2=H+6-5;
x3=-4.1;y3=H-5;
x4=3.5;y4=H+6+6-5;
x5=4.6;y5=H+6-5;
x6=4.1;y6=H-5;


X=[x1 x2 x3 x4 x5 x6];
Y=[y1 y2 y3 y4 y5 y6];

x=-40:0.5:40;
for i=1:6
    [B,Bx,By]=CalB(I,X,Y);
    plot(x,B(i,:),'linewidth',2)
    hold on
end
