function [result] = Fixed_Point_Method_ToleranceRate(x0,tolerance)
    
    %func=> x^2 - x  -1 =0
    array=[];
    i=1;
    array(1)=x0;
    error=tolerance+0.1;

   while error>tolerance
       array(i+1)=1+(1/array(i));

       error=abs(array(i+1)-array(i));
       
       i=i+1;
   end
    % you can find out the Fixed-Point Method by using the functions above.
    %Function -> Cosx
    %Fixed_Point_Method(1, 0.001)
    %Fixed_Point_Method(1, 0.00001)
    plot(array);
    
    result=array;
    
end