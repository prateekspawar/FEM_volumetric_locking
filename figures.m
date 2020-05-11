clc
clear all
close all
x=[0;1;2;3;3;3;3;2;1;0;0;0;1;2;2;1];
y=[0;0;0;0;1;2;3;3;3;3;2;1;1;1;2;2];
u0=[0;1+0.2602;2+0.4038;3+0.5057;3+0.4971;3+0.4971;3+0.5057;2+0.4038;1+0.2602;0;0+0.3534;0+0.3534;1+ 0.3426;2+0.4036;2+0.4036;1+0.3426];
v0=[0;0+0.0266;0+0.0544;0+0.0730;1+0.0234;2-0.0234;3-0.0730;3-0.0544;3-0.0266;3;2-0.0062;1+0.0062;1-0.0211;1+0.0154;2-0.0154;2+0.0211];
ur=[0;1+0.3199;2+0.4853;3+0.6034;3+0.5798;3+0.5798;3+0.6034;2+0.4853;1+0.3199;0;0+0.4082;0+0.4082;1+0.3894;2+0.4636;2+0.4636;1+ 0.3894];
vr=[0;0+0.0239;0+0.0631;0+0.0977;1+0.0328;2-0.0328;3-0.0977;3-0.0631;3-0.0239;3;2-0.0110;1+0.0110;1-0.0321;1+0.0196;2-0.0196;2+0.0321];   
ua=[0;1+0.8030;2+1.128;3+1.0844;3+1.0953;3+1.0423;3+1.0514;2+1.0949;1+0.8030;0;0+0.8375;0+0.8370;1+0.8252;2+1.1548;2+1.1248;1+0.8251];
va=[0;0+.06598;0+0.06414;0.0749;1+0.1075;2-0.1241;3-0.09568;3-0.0587;3-.01406;3;2+0.03106;1-.01948;1-.05951;1+0.0687;2-0.0399;2+0.04661]; 
       
figure('Name','Nodes');
m=[x(1) x(2)];
n=[y(1) y(2)];
plot(m,n,'k-o');
hold on
m=[x(2) x(3)];
n=[y(2) y(3)];
plot(m,n,'k-o');
hold on
m=[x(3) x(4)];
n=[y(3) y(4)];
plot(m,n,'k-o');
hold on
m=[x(4) x(5)];
n=[y(4) y(5)];
plot(m,n,'k-o');
hold on
m=[x(5) x(6)];
n=[y(5) y(6)];
plot(m,n,'k-o');
hold on
m=[x(6) x(7)];
n=[y(6) y(7)];
plot(m,n,'k-o');
hold on
m=[x(7) x(8)];
n=[y(7) y(8)];
plot(m,n,'k-o');
hold on
m=[x(8) x(9)];
n=[y(8) y(9)];
plot(m,n,'k-o');
hold on
m=[x(9) x(10)];
n=[y(9) y(10)];
plot(m,n,'k-o');
hold on
m=[x(10) x(11)];
n=[y(10) y(11)];
plot(m,n,'k-o');
hold on
m=[x(11) x(12)];
n=[y(11) y(12)];
plot(m,n,'k-o');
hold on
m=[x(12) x(1)];
n=[y(12) y(1)];
plot(m,n,'k-o');
hold on
m=[x(12) x(13)];
n=[y(12) y(13)];
plot(m,n,'k-o');
hold on
m=[x(13) x(14)];
n=[y(13) y(14)];
plot(m,n,'k-o');
hold on
m=[x(14) x(5)];
n=[y(14) y(5)];
plot(m,n,'k-o');
hold on
m=[x(13) x(16)];
n=[y(13) y(16)];
plot(m,n,'k-o');
hold on
m=[x(14) x(15)];
n=[y(14) y(15)];
plot(m,n,'k-o');
hold on
m=[x(11) x(16)];
n=[y(11) y(16)];
plot(m,n,'k-o');
hold on
m=[x(16) x(15)];
n=[y(16) y(15)];
plot(m,n,'k-o');
hold on
m=[x(15) x(6)];
n=[y(15) y(6)];
plot(m,n,'k-o');
hold on
m=[x(16) x(9)];
n=[y(16) y(9)];
plot(m,n,'k-o');
hold on
m=[x(15) x(8)];
n=[y(15) y(8)];
plot(m,n,'k-o');
hold on
m=[x(2) x(13)];
n=[y(2) y(13)];
plot(m,n,'k-o');
hold on
m=[x(3) x(14)];
n=[y(3) y(14)];
plot(m,n,'k-o');
hold on
%original displacements
m=[u0(1) u0(2)];
n=[v0(1) v0(2)];
plot(m,n,'g-o');
hold on
m=[u0(2) u0(3)];
n=[v0(2) v0(3)];
plot(m,n,'g-o');
hold on
m=[u0(3) u0(4)];
n=[v0(3) v0(4)];
plot(m,n,'g-o');
hold on
m=[u0(4) u0(5)];
n=[v0(4) v0(5)];
plot(m,n,'g-o');
hold on
m=[u0(5) u0(6)];
n=[v0(5) v0(6)];
plot(m,n,'g-o');
hold on
m=[u0(6) u0(7)];
n=[v0(6) v0(7)];
plot(m,n,'g-o');
hold on
m=[u0(7) u0(8)];
n=[v0(7) v0(8)];
plot(m,n,'g-o');
hold on
m=[u0(8) u0(9)];
n=[v0(8) v0(9)];
plot(m,n,'g-o');
hold on
m=[u0(9) u0(10)];
n=[v0(9) v0(10)];
plot(m,n,'g-o');
hold on
m=[u0(10) u0(11)];
n=[v0(10) v0(11)];
plot(m,n,'g-o');
hold on
m=[u0(11) u0(12)];
n=[v0(11) v0(12)];
plot(m,n,'g-o');
hold on
m=[u0(12) u0(1)];
n=[v0(12) v0(1)];
plot(m,n,'g-o');
hold on
m=[u0(12) u0(13)];
n=[v0(12) v0(13)];
plot(m,n,'g-o');
hold on
m=[u0(13) u0(14)];
n=[v0(13) v0(14)];
plot(m,n,'g-o');
hold on
m=[u0(14) u0(5)];
n=[v0(14) v0(5)];
plot(m,n,'g-o');
hold on
m=[u0(13) u0(16)];
n=[v0(13) v0(16)];
plot(m,n,'g-o');
hold on
m=[u0(14) u0(15)];
n=[v0(14) v0(15)];
plot(m,n,'g-o');
hold on
m=[u0(11) u0(16)];
n=[v0(11) v0(16)];
plot(m,n,'g-o');
hold on
m=[u0(16) u0(15)];
n=[v0(16) v0(15)];
plot(m,n,'g-o');
hold on
m=[u0(15) u0(6)];
n=[v0(15) v0(6)];
plot(m,n,'g-o');
hold on
m=[u0(16) u0(9)];
n=[v0(16) v0(9)];
plot(m,n,'g-o');
hold on
m=[u0(15) u0(8)];
n=[v0(15) v0(8)];
plot(m,n,'g-o');
hold on
m=[u0(2) u0(13)];
n=[v0(2) v0(13)];
plot(m,n,'g-o');
hold on
m=[u0(3) u0(14)];
n=[v0(3) v0(14)];
plot(m,n,'g-o');
hold on

%reduced displacements
m=[ur(1) ur(2)];
n=[vr(1) vr(2)];
plot(m,n,'b-o');
hold on
m=[ur(2) ur(3)];
n=[vr(2) vr(3)];
plot(m,n,'b-o');
hold on
m=[ur(3) ur(4)];
n=[vr(3) vr(4)];
plot(m,n,'b-o');
hold on
m=[ur(4) ur(5)];
n=[vr(4) vr(5)];
plot(m,n,'b-o');
hold on
m=[ur(5) ur(6)];
n=[vr(5) vr(6)];
plot(m,n,'b-o');
hold on
m=[ur(6) ur(7)];
n=[vr(6) vr(7)];
plot(m,n,'b-o');
hold on
m=[ur(7) ur(8)];
n=[vr(7) vr(8)];
plot(m,n,'b-o');
hold on
m=[ur(8) ur(9)];
n=[vr(8) vr(9)];
plot(m,n,'b-o');
hold on
m=[ur(9) ur(10)];
n=[vr(9) vr(10)];
plot(m,n,'b-o');
hold on
m=[ur(10) ur(11)];
n=[vr(10) vr(11)];
plot(m,n,'b-o');
hold on
m=[ur(11) ur(12)];
n=[vr(11) vr(12)];
plot(m,n,'b-o');
hold on
m=[ur(12) ur(1)];
n=[vr(12) vr(1)];
plot(m,n,'b-o');
hold on
m=[ur(12) ur(13)];
n=[vr(12) vr(13)];
plot(m,n,'b-o');
hold on
m=[ur(13) ur(14)];
n=[vr(13) vr(14)];
plot(m,n,'b-o');
hold on
m=[ur(14) ur(5)];
n=[vr(14) vr(5)];
plot(m,n,'b-o');
hold on
m=[ur(13) ur(16)];
n=[vr(13) vr(16)];
plot(m,n,'b-o');
hold on
m=[ur(14) ur(15)];
n=[vr(14) vr(15)];
plot(m,n,'b-o');
hold on
m=[ur(11) ur(16)];
n=[vr(11) vr(16)];
plot(m,n,'b-o');
hold on
m=[ur(16) ur(15)];
n=[vr(16) vr(15)];
plot(m,n,'b-o');
hold on
m=[ur(15) ur(6)];
n=[vr(15) vr(6)];
plot(m,n,'b-o');
hold on
m=[ur(16) ur(9)];
n=[vr(16) vr(9)];
plot(m,n,'b-o');
hold on
m=[ur(15) ur(8)];
n=[vr(15) vr(8)];
plot(m,n,'b-o');
hold on
m=[ur(2) ur(13)];
n=[vr(2) vr(13)];
plot(m,n,'b-o');
hold on
m=[ur(3) ur(14)];
n=[vr(3) vr(14)];
plot(m,n,'b-o');
hold on

%analytical displacements

m=[ua(1) ua(2)];
n=[va(1) va(2)];
plot(m,n,'r-o');
hold on
m=[ua(2) ua(3)];
n=[va(2) va(3)];
plot(m,n,'r-o');
hold on
m=[ua(3) ua(4)];
n=[va(3) va(4)];
plot(m,n,'r-o');
hold on
m=[ua(4) ua(5)];
n=[va(4) va(5)];
plot(m,n,'r-o');
hold on
m=[ua(5) ua(6)];
n=[va(5) va(6)];
plot(m,n,'r-o');
hold on
m=[ua(6) ua(7)];
n=[va(6) va(7)];
plot(m,n,'r-o');
hold on
m=[ua(7) ua(8)];
n=[va(7) va(8)];
plot(m,n,'r-o');
hold on
m=[ua(8) ua(9)];
n=[va(8) va(9)];
plot(m,n,'r-o');
hold on
m=[ua(9) ua(10)];
n=[va(9) va(10)];
plot(m,n,'r-o');
hold on
m=[ua(10) ua(11)];
n=[va(10) va(11)];
plot(m,n,'r-o');
hold on
m=[ua(11) ua(12)];
n=[va(11) va(12)];
plot(m,n,'r-o');
hold on
m=[ua(12) ua(1)];
n=[va(12) va(1)];
plot(m,n,'r-o');
hold on
m=[ua(12) ua(13)];
n=[va(12) va(13)];
plot(m,n,'r-o');
hold on
m=[ua(13) ua(14)];
n=[va(13) va(14)];
plot(m,n,'r-o');
hold on
m=[ua(14) ua(5)];
n=[va(14) va(5)];
plot(m,n,'r-o');
hold on
m=[ua(13) ua(16)];
n=[va(13) va(16)];
plot(m,n,'r-o');
hold on
m=[ua(14) ua(15)];
n=[va(14) va(15)];
plot(m,n,'r-o');
hold on
m=[ua(11) ua(16)];
n=[va(11) va(16)];
plot(m,n,'r-o');
hold on
m=[ua(16) ua(15)];
n=[va(16) va(15)];
plot(m,n,'r-o');
hold on
m=[ua(15) ua(6)];
n=[va(15) va(6)];
plot(m,n,'r-o');
hold on
m=[ua(16) ua(9)];
n=[va(16) va(9)];
plot(m,n,'r-o');
hold on
m=[ua(15) ua(8)];
n=[va(15) va(8)];
plot(m,n,'r-o');
hold on
m=[ua(2) ua(13)];
n=[va(2) va(13)];
plot(m,n,'r-o');
hold on
m=[ua(3) ua(14)];
n=[va(3) va(14)];
plot(m,n,'r-o');
hold on