function y = nearOnes(a)
%returns true if a is within 10 of 100 or 1000 

if abs(a - 100) <= 10 || abs(a - 1000) <= 10
    y = true;
else
    y = false;
end


end

