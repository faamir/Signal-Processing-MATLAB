function [ nsy, ns ] = addnoise( signal, ns, snr1 )

SNR = @(signal,nsy)( 20*log10(norm(signal)/norm(signal-nsy)) );
rr = @(n)( round(1+(n-1)*rand) );
t = length( signal );
N = length( ns );
if( t>N ), error( 'Error' ); end;
R = rr(1+N-t);
ns = ns(R:R+t-1);
ns = ns / norm(ns) * norm(signal) / 10.0^(0.05*snr1);
nsy = signal + ns;
assert( abs(SNR(signal,nsy)-snr1) < 1E10*eps(snr1) ); 

