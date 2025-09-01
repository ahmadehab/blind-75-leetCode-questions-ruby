# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each_with_index do |num, idx|
      return true if hash.has_key?(num)
      hash[num] = idx
  end
  false
end

# tc: o(n), sc: o(n)
# https://leetcode.com/problems/contains-duplicate/
