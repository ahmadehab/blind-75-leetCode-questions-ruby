# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, indx|
        comp = target - num
        if hash.has_key?(comp)
            return [hash[comp], indx]
        else
            hash[num] = indx
        end
    end
    []
end

# tc = o(n), space comp = o(n)
# https://leetcode.com/problems/two-sum/description/
