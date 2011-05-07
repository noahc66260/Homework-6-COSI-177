function y = groupNoAdj(start,nums,target) 
%Given an array of ints, is it possible to choose a group of some of the
%ints, such that the group sums to the given target with this additional 
%constraint: If a value in the array is chosen to be in the group, the 
%value immediately following it in the array must not be chosen. (No loops 
%needed.) 

y = false;

% Let's deal with the case of a target of 0
if target == 0
    y = true;
    return
end

% In MATLAB, there is no index 0
if start == 0
    start = 1;
end

% We will save time if we recognize that it's impossible to sum to our
% target beforehand
if sum(nums) < target
    return
end

for i = start:length(nums)
    if nums(i) < target
        if i == start
            y = groupNoAdj(0,[nums(start+2:end)], target - nums(i));
        else if i < length(nums)
                y = groupNoAdj(i+2,nums, target - nums(i));
            end
        end
    end
    
    if nums(i) == target
        y = true;
        break
    end
    
    if y == true
        break
    end

end


end

