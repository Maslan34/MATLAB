%n ->step
% a -> first element, b -> last element. 
x=[0.1:0.1:0.9]; 

f = x.*x;  
a = 1; b=length(x); 
n = 4; 
h = (b-a)/n; 
hh = (x(b)-x(a))/n; 
sum = f(a) + f(b); 
for i=a+h:h:b-h 
 sum = sum + 2*f(i); 
end 
sum = sum * (hh/2); 