function [Q, X, Y,alpha]=CalQ(U,H)
epsilon=8.85*10^(-12);
r0=22.40*10^(-3)/2;
L=0.375;
R=L;
Req=R*(6*r0/R).^(1/6);
r1=15.75*10^(-3)/2;


%{
x1=-3.5;y1=H+6+6-5;
x2=-4.6;y2=H+6-5;
x3=-4.1;y3=H-5;
x4=3.5;y4=H+6+6-5;
x5=4.6;y5=H+6-5;
x6=4.1;y6=H-5;
x7=-2.8;y7=H+9-10/3;
x8=2.8;y8=H+9-10/3;
%}

x1=0;y1=H-4;
x2=-3.6;y2=H+7.2*sqrt(3)/2-4;
x3=3.6;y3=H+7.2*sqrt(3)/2-4;
x4=-5.51;y4=H+7.2*sqrt(3)/2+10-10/3;
x5=5.51;y5=H+7.2*sqrt(3)/2+10-10/3;

X=[x1 x2 x3 x4 x5];
Y=[y1 y2 y3 y4 y5];


alpha=zeros(5,5);
for i=1:3
    alpha(i,i)=log(2*Y(i)/Req);
end
for i=4:5
    alpha(i,i)=log(2*Y(i)/r1);
end
for i=1:5
    for j=1:5
        if(i==j)
            continue;
        end
        alpha(i,j)=-log(distance(X(i),Y(i),X(j),Y(j)))+log(distance(X(i),Y(i),X(j),-Y(j)));
    end
end

alpha=1/2/pi/epsilon.*alpha;
Q=U/alpha;
X=[X X];
Y=[Y -Y];
Q=[Q -Q];

