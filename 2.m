%Convolution
%in barname baraye mohase convolution ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all; 

x=[1 1 1];
h=[1 1 1];
l=length(x); 
t=length(h); 
X=[x,zeros(1,t)]; 
H=[h,zeros(1,l)]; 
for n=1:t+l-1 
Y(n)=0; 
for m=1:l 
    if(n-m+1>0) 
    Y(n)=Y(n)+X(m)*H(n-m+1); 
    end 
end 
end 
Y 
stem(Y);xlabel('n'); title('Convolution');