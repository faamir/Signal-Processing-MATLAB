%SNR
%in barname baraye ezafe kardane noise SNR ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;

sndb = @(s,n)( 10*log10(sum(s(:).^2)/sum((n(:)-s(:)).^2)) ); 
pd = @(x,w,nfft)(10*log10(abs(fft(x(:).'*diag(w(length(x))),nfft)).^2/length(x)) );
snr1 = 5;                            
sf = 5000;                         
st = 1/sf;                          
du = 15;                      
t = [ 0:st:du*1E-3 ];      
N = length( t );                 
nfft = 2^nextpow2( 2*N );           
fq = [ 0:nfft-1 ]/nfft*sf;        
am   = [    1 0.25 ];       
fqs  = [  300 2700 ];      
ag       = [ pi/3    0 ];       
C = length( fqs );               
s = sum( diag(am) * sin(2*pi*diag(fqs) * repmat(t,C,1) + repmat(ag(:),1,N)), 1 );  
noise = randn( size(s) ); 
ns = addnoise( s, noise, snr1 );
ps = pd( s, @hamming, nfft );
pn = pd( ns, @hamming, nfft );

figure; hold on;
plot( t, s, 'color', [1 1 1]*0.5 ); 
plot( t, ns, 'bo', 'MarkerSize', 3 );
set( gca, 'box', 'off' );
xlim( [ min(t) max(t) ] );
ylim( [ -2 2 ] );
