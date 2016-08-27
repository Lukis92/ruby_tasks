# https://www.codewars.com/kata/squeaky-window/
def sliding(nums, k)
  return [] if nums.empty?
  # each_cons : iterates the given block for each array of consecutive <n>
  # elements
  nums.each_cons(k).map(&:max)
end
sliding([1, 3, -1, -3, 5, 3, 6, 7], 3)
