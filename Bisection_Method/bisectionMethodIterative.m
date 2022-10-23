function [middle_point] = bisectionMethodIterative(firstValue,secondValue,iter)
    
     % x0-----middlepoint-----x1 < this is coordinate system we assumed
     
      if(func(firstValue) * func(secondValue) > 0)
             frpintf("In the given range, Bisection Method cannot be implemented to this function !")
             return;
      end
          
        %Comparison of values
        
          if (firstValue<secondValue)
                
                x0=firstValue;  
                x1=secondValue;

          end
          
           
          if (secondValue<firstValue)
                
                x0=secondValue;  
                x1=firstValue;

          end
           
          % if two value is same, it wont be a problem.
          
        % x0 assumed small value here 
      for i=1 :iter
          
          middle_point= ( x0 + x1 ) / 2;
          
          if func(middle_point) * (x1) < 0
              
              x0= middle_point; %coordinate system will shift to the right

          end
          if func(middle_point) * (x0) < 0
              x1= middle_point;  %coordinate system will shift to the left
          end
      end

      fprintf("Result : %d",middle_point);
end