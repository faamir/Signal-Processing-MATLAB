%Correlation
%in barname baraye mohase correlation ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;

x=[1 1 1];
h=[1 1 1];
n=length(x);
c=zeros(2*n-1,1);
for i=1:2*n-1
    if(i>n)
        p=1;
        q=2*n-i;
        r=i-n+1;
        s=n;
    else
        p=n-i+1;
        q=n;
        r=1;
        s=i;
    end
    c(i)=sum(conj(x(p:q)).*h(r:s));
end
c=flipud(c);
c
stem(c);xlabel('n');
