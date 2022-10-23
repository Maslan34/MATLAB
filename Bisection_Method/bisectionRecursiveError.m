
%global error_rate;

function bisectionRecursiveError(firstValue,secondValue,error_rate)
    
         % x0-----middlepoint-----x1 < this is coordinate system we assumed

             if(func(firstValue) * func(secondValue) > 0)
                 frpintf("In the given range Bisection Method cannot be implemented to this function!")
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
           
           middle_point= ( x0 + x1 ) / 2;
           
      
          
        % x0 assumed small value here 

             error=abs(middle_point-x0); % or (x0-middle_point) would not be a problem 

             if(error_rate>error)
                 return;
             end

             check=func(middle_point);

             if( check > func(x0)) % assumed first value is small value and going right
                bisectionIterativeError(check,x1,error_rate);
             end

              if( check < func(x1)) % assumed first value is small value and going right
                bisectionIterativeError(x0,check,error_rate);
             end

                         
              fprintf("Result : %d",middle_point);
        

end