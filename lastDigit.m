function y = lastDigit(a, b)
%Given two non-negative int values, return true if they have the same last
%digit, such as with 27 and 57.

if mod(a,10) == mod(b,10)
    y = true;
else
    y = false;


end

