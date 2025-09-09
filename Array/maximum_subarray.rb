# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max  = nums[0]
  sum = 0
  nums.each do |num|
    sum = 0 if sum < 0
    sum += num
    max = [max, sum].max
  end
  return max
end

# tc: O(n), sc: O(n)
# https://leetcode.com/problems/maximum-subarray/
