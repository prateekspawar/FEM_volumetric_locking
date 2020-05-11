clc
clear all
close all
E=2e11;
nu=0.499;
t=0.001;
r=[1; 2 ;19 ;20];
D3=zeros(3,3);
D3(1,1)=1; D3(1,2)=nu; D3(1,3)=0;
D3(2,1)=nu; D3(2,2)=1; D3(2,3)=0;
D3(3,1)=0; D3(3,2)=0; D3(3,3)=(1-nu)/2;
D3=D3*E/(1-nu*nu);
% D2=zeros(2,2);
% D2(1,1)=1; D2(1,2)=nu;
% D2(2,1)=nu; D2(2,2)=1;
% D2=D2*E/(1-nu*nu);

for i=1:1:3
    for j=1:1:3
        fprintf('i=%d and j=%d',i,j);
        A1=B3((1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        A2=B3((1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        A3=B3((-1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        A4=B3((-1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
       
%         b1=B2((1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
%         b2=B2((1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
%         b3=B2((-1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
%         b4=B2((-1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
%         
        jd1=JD((1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        jd2=JD((1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        jd3=JD((-1)/sqrt(3),(1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        jd4=JD((-1)/sqrt(3),(-1)/sqrt(3),i-1,j-1,i,j-1,i,j,i-1,j);
        
%         c=B2(0,0,i-1,j-1,i,j-1,i,j,i-1,j);
%         jdc=JD(0,0,i-1,j-1,i,j-1,i,j,i-1,j);
      
        k=(A1'*D3*A1)*t*jd1 ...
            +(A2'*D3*A2)*t*jd2 ...
            +(A3'*D3*A3)*t*jd3 ...
            +(A4'*D3*A4)*t*jd4;
             
        K(i,j,:,:)=k(:,:);
        
    end
end
k1(:,:)=K(1,1,:,:);k2(:,:)=K(2,1,:,:);k3(:,:)=K(3,1,:,:);k4(:,:)=K(1,2,:,:);
k5(:,:)=K(2,2,:,:);k6(:,:)=K(3,2,:,:);k7(:,:)=K(1,3,:,:);k8(:,:)=K(2,3,:,:);
k9(:,:)=K(3,3,:,:);
Kasse=zeros(32);
Kasse=KA(Kasse,k1,1,2,13,12);
Kasse=KA(Kasse,k2,2,3,14,13);
Kasse=KA(Kasse,k3,3,4,5,14);
Kasse=KA(Kasse,k4,12,13,16,11);
Kasse=KA(Kasse,k5,13,14,15,16);
Kasse=KA(Kasse,k6,14,5,6,15);
Kasse=KA(Kasse,k7,11,16,9,10);
Kasse=KA(Kasse,k8,16,15,8,9);
Kasse=KA(Kasse,k9,15,6,7,8);
Kasse;

Kasse=del(Kasse,r)

 F=zeros(32,1);
 F(7,1)=1.0;
 F(9,1)=2.0;
 F(11,1)=2.0;
 F(13,1)=1.0;
 F=fdel(F,r)
 
 u=zeros(28,1);
 u=Kasse\F;
 u
 function fnew=fdel(f,r)
 n=size(r);
 for i=1:1:n
     f(r(i)-i+1,:)=[];
  end
fnew=f;
 end
 function knew=del(k,r)
 n=size(r)
 for i=1:1:n
     k(r(i)-i+1,:)=[];
     k(:,r(i)-i+1)=[];
 end
knew=k;
 end
function ka=KA(Kasse,k,a,b,c,d)
v=[a b c d];
ka=zeros(32);
for i=1:1:4
    for j=1:1:4
        ka(2*v(i)-1:2*v(i),2*v(j)-1:2*v(j))=k(2*i-1:2*i,2*j-1:2*j);
    end
end
ka=ka+Kasse;
end    
function jd=JD(zi,it,x1,y1,x2,y2,x3,y3,x4,y4)
J=zeros(2,2);
J(1,1)=(1-it)/4*(x2-x1)+(1+it)/4*(x3-x4);
J(1,2)=(1-it)/4*(y2-y1)+(1+it)/4*(y3-y4);
J(2,1)=(1-zi)/4*(x4-x1)+(1+zi)/4*(x3-x2);
J(2,2)=(1-zi)/4*(y4-y1)+(1+zi)/4*(y3-y2);
jd=det(J);
end

function tb=B3(zi,it,x1,y1,x2,y2,x3,y3,x4,y4)
J=zeros(2,2);
J(1,1)=(1-it)/4*(x2-x1)+(1+it)/4*(x3-x4);
J(1,2)=(1-it)/4*(y2-y1)+(1+it)/4*(y3-y4);
J(2,1)=(1-zi)/4*(x4-x1)+(1+zi)/4*(x3-x2);
J(2,2)=(1-zi)/4*(y4-y1)+(1+zi)/4*(y3-y2);

jd=det(J);
b1=[1, 0, 0 ,0;0, 0, 0, 1;0, 1,1 ,0];
b2=zeros(4,4);
b2(1,1)=J(2,2)/jd;
b2(1,2)=(-1)*J(1,2)/jd;
b2(1,3)=0; b2(1,4)=0;
b2(2,1)=(-1)*J(2,1)/jd;
b2(2,2)=J(1,1)/jd;
b2(2,3)=0; b2(2,4)=0;

b2(3,3)=J(2,2)/jd;
b2(3,4)=(-1)*J(1,2)/jd;
b2(3,1)=0; b2(3,2)=0;
b2(4,3)=(-1)*J(2,1)/jd;
b2(4,4)=J(1,1)/jd;
b2(4,1)=0; b2(4,2)=0;

b3=zeros(4,8);
dzi=zeros(4,1);
dit=zeros(4,1);

dzi(1)=((-1)*(1-it)/4);
dzi(2)=((1-it)/4);
dzi(3)=((1+it)/4);
dzi(4)=((-1)*(1+it)/4);

dit(1)=((-1)*(1-zi)/4);
dit(2)=((-1)*(1+zi)/4);
dit(3)=((1+zi)/4);
dit(4)=((1-zi)/4);

b3(1,1:2:8)=dzi;
b3(2,1:2:8)=dit;
b3(3,2:2:8)=dzi;
b3(4,2:2:8)=dit;

tb=b1*b2*b3;
end
