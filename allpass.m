%Allpass filter
%in barname baraye mohase filter Allpass ast.baraye 'allpass' ra dar mohite matlab vared konid.
function [b,a] = allpass()

Fc=1000;
Fs=2000;
Q=1;
g = tan(pi*(Fc/Fs));
d  = 1/Q;
K  = 1/(1 + d*g + g^2);
b0 = (1 - g*d + g^2) * K;
b1 = 2 * (g^2 - 1) * K;
b2 = 1;
a1 = b1;
a2 = b0;
b = [b0 b1 b2];
a = [1  a1 a2];
freqz(b,a,256,2000)

end