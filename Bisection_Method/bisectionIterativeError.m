function [middle_point] = bisectionIterativeError(firstValue,secondValue,error_rate)
    
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

     
         middle_point= ( x0 + x1 ) / 2;

    
          while(1)
                
               error=abs(middle_point-x0); % or x0-median would not be a problem 

               if(error_rate>error)
                   break;
               end

               check=func(middle_point);

               if( check > func(x0)) % assumed x0  is small value and going right
                   middle_point=check;
               end

               if( check < func(x1)) % assumed x1 is big value and going left
                   x1=middle_point;
               end
          end
                  
      fprintf("Result : %d",middle_point);
        

end