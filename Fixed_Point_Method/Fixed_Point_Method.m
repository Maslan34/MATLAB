function [result] = Fixed_Point_Method(x0,iter)
    

    array=[];
    array(1)=x0;

    for i=1 : iter
        array(i+1)=func(array(i));
    end
    
    % you can find out the Fixed-Point Method by using the functions above.
    %Function -> Cosx
    %Fixed_Point_Method(3.14, 10)
    %Fixed_Point_Method(3.14, 20)
    %Fixed_Point_Method(3.14, 50)
    %Fixed_Point_Method(3.14, 100)
    plot(array);
    
    result=array;
    
end