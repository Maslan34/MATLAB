
% approximate=0;
% f=1.01;
% m=11;
% long=50;
% 
% 
% for k=0:m
%     
%     approximate=approximate+ ( (Mypower (f,k)) / fact (k) );
% end
% 
% 
% 
% 
% % real=power(e,f);
% 
% e=2.7182;
% result=1;
% 
% if(i>0) % may be no need
%      for  i = long :-1:0
%         result = 1 + result * f * log(e) / i; % for power of 1.01 used taylor series
%     end
% end
% 
% % real=power(e,f);
% 
% real=result;
% 
% abs_error=abs(real-approximate);
% 
% display(abs_error)





approximate=0;
f=1.01;
m=11;
e=2.7182;
result=1;


for iter = 1: 50

    if (iter<12)

       approximate=approximate+ ( (Mypower (f,iter)) / fact (iter) );
        
    end

   
        result = 1 + result * f * log(e) / iter;   % for power of 1.01 by using taylor series
  
 
end

real=result;

abs_error=abs(real-approximate);

display(abs_error)











