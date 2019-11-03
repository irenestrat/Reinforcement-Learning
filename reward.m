function [r] = reward(s)
if(s==5|s==6|s==8)    
   r=-1;
elseif(s==14)
   r=1;
else
   r=-.04; 
end
return