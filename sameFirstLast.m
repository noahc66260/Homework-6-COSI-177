function y = sameFirstLast(array) 
%Given an array, returns 1 if the first and last value are equal, returns 0
%otherwise. 

if array(1) == array(end)
    y = 1;
else
    y = 0;


end

