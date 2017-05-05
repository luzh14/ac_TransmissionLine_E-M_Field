function [B,Bx,By]=CalB(I,X,Y)
%permeability of vacuum
mu0=4*pi*1e-7;
%earth resistivity
rho=100;
%frequency
f=50;
%depth of mirrored line
d=660*sqrt(rho/f);

x=-40:0.5:40;
y=1.5;

AA=[(y-Y(1))./((x-X(1)).^2+(y-Y(1)).^2);
   (y-Y(2))./((x-X(2)).^2+(y-Y(2)).^2);
   (y-Y(3))./((x-X(3)).^2+(y-Y(3)).^2);
   (y-Y(4))./((x-X(4)).^2+(y-Y(4)).^2);
   (y-Y(5))./((x-X(5)).^2+(y-Y(5)).^2);
   (y-Y(6))./((x-X(6)).^2+(y-Y(6)).^2)];

BB=[(x-X(1))./((x-X(1)).^2+(y-Y(1)).^2);
   (x-X(2))./((x-X(2)).^2+(y-Y(2)).^2);
   (x-X(3))./((x-X(3)).^2+(y-Y(3)).^2);
   (x-X(4))./((x-X(4)).^2+(y-Y(4)).^2);
   (x-X(5))./((x-X(5)).^2+(y-Y(5)).^2);
   (x-X(6))./((x-X(6)).^2+(y-Y(6)).^2)];


Bx=abs(I*AA.*mu0./2./pi);
By=abs(I*BB.*mu0./2./pi);
B=sqrt(Bx.^2+By.^2);

