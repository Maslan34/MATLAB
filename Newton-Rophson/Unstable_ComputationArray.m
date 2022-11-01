function Unstable_ComputationArray(iter)
   
    %This code shows us the error rate that can occur when a function goes to infinity, 
    % when we root it with the exponential or basic four mathematical operators.


   array=[];
   second_array=[];

   array(1)=1;
   array(2)=1/3;

   for i=2 : iter
       array(i+1)=abs( ( 13*array(i) ) -  4 * array(i-1) ) / 3; %basic math operators.
   end

   for j=1 : iter+2
        second_array(j)=power(1/3,j); %exponential
   end

   %you can check here the behaviours of these functions separately.

   %Unstable_ComputationArray(10)
    %Unstable_ComputationArray(100)
     %Unstable_ComputationArray(1000)
      %Unstable_ComputationArray(10000)
      
   
   plot(array)
   %plot(second_array)

end