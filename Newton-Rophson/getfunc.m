function [f] = getfunc()
    %This function for getting derivative,it is called inside of diff().
       syms x real
       f=power(x,2)-4;
    
end