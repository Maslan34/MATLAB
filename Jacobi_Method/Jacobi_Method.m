

%{  
   
    This function solves that 
    the equations with one unknown given below with the leading coefficients 
    using the Jacobi method.

    8x1 + 2x2 + 3x3 =30
    x1  - 9x2 + 2x3 =1
    2x1 + 3x2 + 6x3 =31

    
%}



arrayX1=[];
arrayX2=[];
arrayX3=[];

arrayX1(1)=1.897;
arrayX2(1)=0.976;
arrayX3(1)=4.046;



for k=1 : 20 
    arrayX1(k+1)=(30- 2*arrayX2(k) - 3*arrayX3(k) ) / 8;
    arrayX2(k+1)=(-1 + arrayX1(k) + 2*arrayX3(k) )  /  9;
    arrayX3(k+1)=(31 - 2*arrayX1(k) - 3*arrayX2(k) )  / 6;
end

%arrayX1
%arrayX2
%arrayX3

disp("X1:")
arrayX1(k+1)
disp("X2:")
arrayX2(k+1)
disp("X3:")
arrayX3(k+1)


