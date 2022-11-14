function [result] = Jacobi_Paramete(equations_array,leading_coeficient_array,toleranceRate,x1_0,x2_0,x3_0)



%{  
   
    This function solves that 
    the equations with one unknown given below with the leading coefficients 
    using the Jacobi method.

    8x1 + 2x2 + 3x3 =30
    x1  - 9x2 + 2x3 =1
    2x1 + 3x2 + 6x3 =31

    
%}
        
        i=1;
        k=1;
        j=1;
        arrayX1(1)=x1equation(equations_array(1),leading_coeficient_array(i));
        arrayX2(1)=x2_O;
        arrayX3(1)=x3_O;
    
       
      while true 
    
              arrayX1(k+1)=(30- 2*arrayX2(k) - 3*arrayX3(k) ) / 8;
              arrayX2(k+1)=(-1 + arrayX1(k) + 2*arrayX3(k) )  /  9;
              arrayX3(k+1)=(31 - 2*arrayX1(k) - 3*arrayX2(k) )  / 6;
    
              errorX1=abs(arrayX1(k+1) - arrayX1(k));
              errorX2=abs(arrayX2(k+1) - arrayX2(k));
              errorX3=abs(arrayX3(k+1) - arrayX3(k));
    
              if errorX1<=toleranceRate && errorX2<=toleranceRate && errorX3<=toleranceRate
                  break;
              else
                  k=k+1;
              end
      end
      
        %arrayX1
        %arrayX2
        %arrayX3
        %result=[arrayX1(k+1),arrayX2(k+1),arrayX3(k+1)];
        result=[arrayX1(k+1),arrayX2(k+1),arrayX3(k+1)];
end