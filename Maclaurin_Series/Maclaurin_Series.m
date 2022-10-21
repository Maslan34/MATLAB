

approximate=0;

f=1.01;
m=11;
for k=0:m
    approximate=approximate+ ( (Mypower (f,k)) / fact (k) );
end

e=2.7182;

real=power(e,f);

abs_error=abs(real-approximate);

display(abs_error)



