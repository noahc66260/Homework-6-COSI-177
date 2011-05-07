function y = groupSum(start,nums,target)
%Given an array of ints, is it possible to choose a group of some of the
%ints, such that the group sums to the given target? 

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
            y = groupSum(0,[nums(start+1:end)], target - nums(i));
        else if i == length(nums)
            y = groupSum(0,[nums(start:end-1)], target - nums(i));
            else
                y = groupSum(0,[nums(start:i-1) nums(i+1:end)], target - nums(i));
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