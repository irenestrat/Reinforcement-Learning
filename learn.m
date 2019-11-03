clc;
clear all;
a=['u';'d';'r';'l'] ;
s=1:21; 
g=.8;
eps=0.01;
v0=rand(21,1);
v=v0;
for i=1:10000
   i;
vdot=v;

for j=1:21
sum1=0;
sum2=0;
sum3=0;
sum4=0;    
for i=1:21
 sum1=sum1+g*trans(s(i),s(j),a(1))*v(i);
 sum2=sum2+g*trans(s(i),s(j),a(2))*v(i);
 sum3=sum3+g*trans(s(i),s(j),a(3))*v(i);
 sum4=sum4+g*trans(s(i),s(j),a(4))*v(i);
end
  aa=[reward(s(j))+sum1 reward(s(j))+sum2 reward(s(j))+sum3 ...
      reward(s(j))+sum4];  
 v(j)=max(aa);       
end
 if(norm(v-vdot,2)<=eps)
   break;
 end
end
%now the best policy
for j=1:21
sum1=0;
sum2=0;
sum3=0;
sum4=0;    
for i=1:21
 sum1=sum1+g*trans(s(i),s(j),a(1))*v(i);
 sum2=sum2+g*trans(s(i),s(j),a(2))*v(i);
 sum3=sum3+g*trans(s(i),s(j),a(3))*v(i);
 sum4=sum4+g*trans(s(i),s(j),a(4))*v(i);
end
  aa=[reward(s(j))+sum1 reward(s(j))+sum2 reward(s(j))+sum3 ...
      reward(s(j))+sum4];  
 bb(j)=find(aa==max(aa));       
 if(bb(j)==1)
     c(j)='u';
 elseif(bb(j)==2)
     c(j)='d';
 elseif(bb(j)==3)
     c(j)='r';
 else
     c(j)='l';
 end
end
 

