%Allpass filter
%in barname baraye mohase Allpass filter ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;
x=[1 1 1];
T=10;
syms z H
b=[x  1];
a=[1 x(1) x(2) x(3)];
H=tf(b,a,T);
figure(1);grpdelay(b,a);title('groupdelay');
figure(2);freqz(b,a,256,2000)
figure(3);bode(b,a)
