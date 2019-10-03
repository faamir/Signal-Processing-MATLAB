%Inverse Z-transform
%in barname baraye mohase Inverse Z-transform ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;
syms z;
%f = z/(z - 1/2) + z/(z + 1/3)
f = z/(z - 1/4)
F = iztrans(f);
F