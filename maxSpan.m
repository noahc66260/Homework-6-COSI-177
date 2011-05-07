function span = maxSpan(nums) 
%Consider the leftmost and righmost appearances of some value in an array.
%We'll say that the "span" is the number of elements between the two 
%inclusive. A single value has a span of 1. Returns the largest span found 
%in the given array. (Efficiency is not a priority.). 

% Let's deal with the case of an empty array input
if isempty(nums)
    span = 0;
    return
end

y = 1;
span = 1;
for i = 1:length(nums)
    for j = 1:length(nums) - i
        if nums(i) == nums(end - j + 1)
            if length(nums) - j + 2 - i > span
                span = length(nums) - j + 2 - i;
                break;
            end
        end
    end
end

    

end

