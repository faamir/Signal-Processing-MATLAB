%Direct form
%in barname baraye mohase direct form ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;
T=50;
syms z H
b=[1 0 3 -2 12];
a=[1 2 2 3 6];
H=tf(b,a,T);
H2=dfilt.df1(b,a);
H3=dfilt.df2(b,a);
Ht=dfilt.df2t(b,a);
H1=dfilt.cascade(Ht);
H1
H2
H3
H