# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  n = nums.size
  prefix_product = Array.new(n, 1)
  nums.each_with_index do |num, idx|
    next if idx < 1
    prefix_product[idx] = prefix_product[idx - 1] * nums[idx - 1]
  end
  suffix_product = 1
  idx = n - 1
  nums.reverse_each do |num|
    prefix_product[idx] = prefix_product[idx] * suffix_product
    suffix_product = suffix_product * nums[idx]
    idx -= 1
  end

  prefix_product
end

# tc: O(n), sc: O(n)
# https://leetcode.com/problems/product-of-array-except-self/
