%Cascade form
%%in barname baraye mohase cascade form ast.baraye ejra evaluate cell ra
%bezanid.
clc;
clear all;
close all;

b=[1 0 3 -2 12];
a=[1 2 2 3 6];
b0 = b(1); b = b/b0;
a0 = a(1); a = a/a0;
b0 = b0/a0;
j = length(b); l = length(a);
if l > j
	b = [b zeros(1,l-j)];
elseif j > l
	a = [a zeros(1,j-l)]; l = j;
else
	lj = 0;
end
f = floor(l/2); B = zeros(f,3); A = zeros(f,3);
if f*2 == l;
	b = [b 0];
	a = [a 0];
end
cb = cplxpair(roots(b));
ca = cplxpair(roots(a));
for i=1:2:2*f

	bb = cb(i:1:i+1,:);

	bb = real(poly(bb));

	B(fix((i+1)/2),:) = bb;

	aa = ca(i:1:i+1,:);

	aa = real(poly(aa));

	A(fix((i+1)/2),:) = aa;

end   
b0
B
A
