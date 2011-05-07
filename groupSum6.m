function y = groupSum6(nums,target)
%Given an array of ints, is it possible to choose a group of some of the
%ints, beginning at the start index, such that the group sums to the given 
%target? However, with the additional constraint that all 6's must be 
%chosen. (No loops needed.) 

start = 1;
y = false;

% We will save time if we recognize that it's impossible to sum to our
% target beforehand
if sum(nums) < target
    return
end

% We must count all six's
for i = start:length(nums)
    if nums(i) == 6
        target = target - 6;
        nums(i) = 0;
    end
end

% Let's deal with the case of a target of 0
if target == 0
    y = true;
    return
end

% Let's deal with the case of the sixes being summed to something larger
% than the target
if target < 0
    y = false;
    return
end

for i = start:length(nums)
    if nums(i) < target || nums(i)
        if i == 1
            y = groupSum6([nums(2:end)], target - nums(i));
        else if i == length(nums)
            y = groupSum6([nums(1:end-1)], target - nums(i));
            else
                y = groupSum6([nums(1:i-1) nums(i+1:end)], target - nums(i));
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

