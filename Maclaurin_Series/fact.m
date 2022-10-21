function [factorial_result] = fact(factorial)

    factorial_result=1;
    while(factorial>0)
        factorial_result=factorial_result*factorial;
        factorial=factorial-1;
    end

end