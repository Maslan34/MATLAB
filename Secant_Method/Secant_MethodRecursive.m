function [rValue] = Secant_MethodRecursive(x0,x1,iter)
               
            if (iter == 0 )
        
                rValue=x0;
              
                return;
            else
                
                numerator=( x0 * func(x1) ) -  ( x1 * func(x0) );
                denominator=func(x1) - func(x0);
                result=numerator/denominator;

                     if(isnan(result))
                        rValue=x1;
                        return;
                     end
                 
      
                Secant_MethodRecursive(x1,result,iter-1);
            end


    
end