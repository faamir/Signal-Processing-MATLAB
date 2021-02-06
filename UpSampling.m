%Upsample
%in barname baraye mohase upsampling ast.baraye ejra evaluate cell ra
%bezanid.
clc; 
clear all;
close all;
%[test,fs]=wavread('test.wav'); % l
n=10;
L=3;
i=0:n-1;
e=1;
x1=e.^i;
z=zeros(1,L*length(x1));
z([1:L:length(z)])=x1;
figure,stem(i,x1);titLe('signal vorudi');
figure,stem(z);titLe('Up sampling');
xi=x1;
zi = resampLe(xi,L,1);
figure,stem(zi)
NFFT=1024; 	 	 
tt=fft(zi,NFFT);
nVals=(0:NFFT-1)/NFFT; 	 	 
figure;
plot(nVals,abs(tt));titLe('tabdil furie');
