
Ua=500000/sqrt(3);
Ub=500000/sqrt(3)*exp(-2*pi*1i/3);
Uc=500000/sqrt(3)*exp(+2*pi*1i/3);

%different operating modes
U=[Ua Ub Uc 0 0];

x=-40:0.5:40;
    [Q,X,Y,alpha]=CalQ(U,20);
    [E,Ex,Ey]=CalE(Q,X,Y);
    plot(x,E,'linewidth',2)
grid on
xlabel('Position(m)','FontSize',18)
ylabel('E-field(V/m)','FontSize',18)
title('E-field of 500kV Transmisson Line @y=1.5m','FontSize',20)