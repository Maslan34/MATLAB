function [power_result] = Mypower(base,power)
   
    power_result=1;

    while(power>0)
       power_result=base*power_result;
       power=power-1;
    end

    
end