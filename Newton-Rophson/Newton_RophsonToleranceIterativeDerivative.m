function [x1] = Newton_RophsonToleranceIterativeDerivative(x0,tolerance_rate)
    %x=3;
    %f=diff(getfunc()) derivative of our function is 2*x so we we will get 6 here 
    %subs(f)

    %This function was written to calculate  root of a function by using derivative.

    %References:https://byjus.com/maths/newton-raphson-method/
    
    error=tolerance_rate+0.1; % because do while not exist in matlab
    while error>tolerance_rate
        x=x0; % x varible is in getfunc !
        f=subs(diff(getfunc()));
        
       
        x1=x0-(func(x0)/f);
        %x1

        error=abs(x1-x0);
        x0=x1;
       
       
    end
    disp("Root is: ");
    disp(x1);
    x1=int8(x1);
end
    