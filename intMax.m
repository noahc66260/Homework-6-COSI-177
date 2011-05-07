function max = intMax( a,b,c )
%Given three int values, A B C, return the largest. 

if c <= a && c <= b
    if a <= b
        max = b;
    else
        max = a;
    end
else
    if a <= b
        if c >= b
            max = c;
        else
            max = b;
        end
    else
        if c >= a
            max = c;
        else
            max = a;
        end
    end
end



end

