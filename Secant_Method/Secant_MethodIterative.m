function [result] = Secant_MethodIterative(x0,x1,iter)
    array=[];
    array(1)=x0;
    array(2)=x1;

    for n=2 :iter
        numerator=( array(n-1)*func(array(n)) ) -  ( array(n) * func(array(n-1)) ); 
        denominator=func(array(n)) - func(array(n-1));
        %numerator
        %denominator
        array(n+1) = numerator/denominator;
    end
       ind = ~isnan(array);
       array=array(ind);
       %array
        result=array;
       %result=array(length(array));
    
end