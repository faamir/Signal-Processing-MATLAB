%Circular Convolution 
%in barname baraye mohase circular convolution ast.baraye ejra evaluate cell ra
%bezanid.
clc; 
clear all; 
close all; 

x=[2 1 1];
subplot(3,1,1); 
t1=length(x); 
stem(x); 
title('x[n]'); 
h=[1 2 1]; 
subplot(3,1,2); 
t2=length(h); 
stem(h); 
title('h[n]'); 

if t1>t2 
t3=t1-t2; 
h=[h,zeros(1,t3)]; 
elseif t2>t1 
t3=t2-t1; 
x=[x,zeros(1,t3)]; 
end 
f=cconv(x,h); 
disp(f); 
subplot(3,1,3); 
stem(f); 
title('Circular Convolution'); 