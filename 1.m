%Moving Average Filter
%in barname baraye mohase moving average ast.baraye ejra evaluate cell ra
%bezanid.
%signal sin noisy shode
t=-10:0.1:10;
x=sin(t)+randn(1,201)*0.05;
%M1 va M2
M1=16;
M2=16;
%Tarsime signale noisy
subplot (2,1,1);plot(x);title('signal e noisy');
%Size vorudi
[r c f]=size(x); 
%Size khoruji barabar ba vorudi
y=0*x;     

%Moving average
for n=1:f           
    for i=1:r         
        xa=x(i,:,n);    
            xp=zeros(1,length(xa)+M1+M2);    
            ya=zeros(1,length(xa)); 
            xp(M1+1:end-M2)=xa; 
                for j=M1+1:length(xp)-M2
                      ya(j-M1)=sum(xp(j-M1:j+M2));
                end
            ya=ya/(M1+M2+1);
            y(i,:,n)=ya;    
    end
end
%Tarsime signal filter shode
subplot (2,1,2);plot(y);title('signal filter shode ba Moving average');