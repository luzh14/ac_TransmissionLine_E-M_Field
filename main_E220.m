
Ua=220000/sqrt(3);
Ub=220000/sqrt(3)*exp(-2*pi*1i/3);
Uc=220000/sqrt(3)*exp(+2*pi*1i/3);

%different operating modes
U=[Ua Ub Uc Ua Ub Uc 0 0;
   Ua Ub Uc Ua Uc Ub 0 0;
   Ua Ub Uc Ub Ua Uc 0 0;
   Ua Ub Uc Ub Uc Ua 0 0;
   Ua Ub Uc Uc Ua Ub 0 0;
   Ua Ub Uc Uc Ub Ua 0 0];

x=-40:0.5:40;
for i=1:6
    [Q(i,:),X(i,:),Y(i,:)]=CalQ(U(i,:),20);
    [E(i,:),Ex(i,:),Ey(i,:)]=CalE(Q(i,:),X(i,:),Y(i,:));
    plot(x,E(i,:),'linewidth',2)
    hold on
end
grid on
xlabel('Position(m)','FontSize',18)
ylabel('E-field(V/m)','FontSize',18)
title('E-field of 220kV Transmisson Line @y=1.5m','FontSize',20)