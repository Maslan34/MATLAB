function Newton_RophsonToleranceRecursive(x0,iter)
       
        
        if iter == 0
            disp("Root is : ");
            disp(x0);
            return;
        else      
          
            r=func(x0) /  (2*x0);
          
            x0= (x0 -   r   );
        
            Newton_RophsonToleranceRecursive(x0,iter-1)
        end
end