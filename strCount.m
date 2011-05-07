function sum = strCount(string,sub) 
%Given a string and a non-empty substring sub, compute recursively the
%number of times that sub appears in the string, without the sub strings 
%overlapping. 

sum = 0;

for i = 1:length(string) - length(sub) + 1
    if strcmp(string(i:i+length(sub)-1), sub)
        sum = 1 + strCount(string(i+length(sub):end),sub);
        break
    end
end


end

