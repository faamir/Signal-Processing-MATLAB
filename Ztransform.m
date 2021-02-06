%Z-transform
%in barname baraye mohase Z-transform ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;
syms n;
%f = (1/4)^n + (-1/3)^n;
f = (1/4)^n;
%f=sin((3*pi*n)/4);
F = ztrans(f);
F
F2 = collect(F)
[n,d] = numden(F2);
T = 0.1;
H = tf(sym2poly(n),sym2poly(d),T)
pzmap(H)
