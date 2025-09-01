# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  ans  = nums[0]
  min = 1
  max = 1
  nums.each do |num|
    if num == 0
      min = 1
      max = 1
      ans = [ans, num].max
      next
    end
    tmp = min
    min = [num,[num * min, num * max].min].min
    max = [num,[num * tmp, num * max].max].max
    ans = [ans, max].max
  end
  return ans
end

# tc: O(n), sc: O(1)
# https://leetcode.com/problems/maximum-product-subarray/
