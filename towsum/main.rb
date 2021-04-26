nums = [2,7,11,15]
target = 9

def two_sum(nums, target)
	nums.each_with_index do |n, i|
		for k in i + 1 .. nums.length-1 do
            if nums[i] + nums[k] == target
              return i, k
            end
        end
	end
end

puts two_sum(nums, target)

