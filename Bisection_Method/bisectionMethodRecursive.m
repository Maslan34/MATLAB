function middle_point = bisectionMethodRecursive(firstValue,secondValue,iter)
    
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
     


      middle_point= (x0 + x1) / 2;
      
      if(iter == 0 )
          fprintf("Result : %d",middle_point)
          return;
      end
      
      if func(middle_point) * (x1) < 0
          middle_point=bisectionMethodRecursive(middle_point,x1,iter-1);
      end
      
      if func(middle_point) * (x0) < 0
           middle_point=bisectionMethodRecursive(x0,middle_point,iter-1);
      end
    
       
end

