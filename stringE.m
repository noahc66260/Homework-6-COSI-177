function y = stringE(s) 
%Return true if the given string contains between 1 and 3 'e' chars. 

num_e = 0;

for i = 1:length(s)
    if s(i) == 'e'
        num_e = num_e + 1;
    end
end

if num_e <= 3 && num_e >= 1
    y = true;
else
    y = false;
end

end

