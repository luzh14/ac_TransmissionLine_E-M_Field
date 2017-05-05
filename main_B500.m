Ia=500/sqrt(3);
Ib=500/sqrt(3)*exp(-2*pi*1i/3);
Ic=500/sqrt(3)*exp(+2*pi*1i/3);

%different operating modes
I=[Ia Ib Ic];
I=[I 0 0 0];
H=20;
x1=0;y1=H-4;
x2=-3.6;y2=H+7.2*sqrt(3)/2-4;
x3=3.6;y3=H+7.2*sqrt(3)/2-4;
x4=-5.51;y4=H+7.2*sqrt(3)/2+10-10/3;
x5=5.51;y5=H+7.2*sqrt(3)/2+10-10/3;

X=[x1 x2 x3 x4 x5];
Y=[y1 y2 y3 y4 y5];


x=-40:0.5:40;
    [B,Bx,By]=CalB(I,X,Y);
    plot(x,B*10.^6,'linewidth',2)
    hold on
grid on
xlabel('Position(m)','FontSize',18)
ylabel('Magnetic-field(uT)','FontSize',18)
title('Magnetic-field of 500kV Transmisson Line @y=1.5m','FontSize',20)


