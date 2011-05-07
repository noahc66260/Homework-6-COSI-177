function y = lessBy10(a,b,c)
%Given three ints, a b c, return true if one of them is 10 or more less
%than one of the others.

if abs(a - b) >= 10 || abs(a - c) >= 10 || abs(c - b) >= 10
    y = true;
else
    y = false;


end

