# https://www.codewars.com/kata/what-dominates-your-array/
require 'pry'
def dominator(arr)
  half = arr.length / 2
  max = get_max(count_elements(arr))
  if max[1] > half
    print max[0]
  else
    print -1
  end
end

def count_elements(arr)
  counts = Hash.new(0)
  arr.each { |name| counts[name] += 1 }
  return counts
end

def get_max(hash)
  return hash.max_by { |k, v| v }
end

dominator([3,4,3,2,3,1,3,3])
