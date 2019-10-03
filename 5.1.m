%down sampling
%in barname baraye mohase down sampling ast.baraye ejra evaluate cell ra
%bezanid.
clc; 
clear all;
close all;
x=wavread('test.wav');
[test,fs]=wavread('test.wav');
Y= test(1:1000:end,: );
figure(1);plot(x);title('signale vorudi');
figure(2);plot(Y);title('Down sampling');
NFFT=1024; 	 	 
z=fft(Y,NFFT);
nVals=(0:NFFT-1)/NFFT; 	 	 
figure(3);
plot(nVals,abs(z));title('tabdil furie');

