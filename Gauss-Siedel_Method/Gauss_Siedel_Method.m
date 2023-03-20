function [] = Gauss_Siedel_Method(A,B,n)


% A -> coefficient matrix
% B -> result matrix
X = []; 

for k=1:n-1 % converting trigonous shape 
     for i=k:n-1 
        temp = A(i+1,k)/A(k,k); 
         for j=1:n 
             A(i+1,j) = A(i+1,j)+A(k,j)*temp; 
         end 
         B(i+1) = B(i+1)+B(k)*temp; 
     end 
end 

A 
B

for j=n:(-1):1 % finding values of X. 
        toplam = 0; 
        for i=j+1:n 
            toplam = toplam + A(j,i)*X(i); 
        end 
           X(j) = (B(j)-toplam)/A(j,j); 
end 
X % printing values of X. 