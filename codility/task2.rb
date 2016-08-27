require 'pry'
def solution(a)
  i = 1
  arr = []
  max = 0
  while i < a.length - 2
    if a[i - 1] > a[i] && a[i] < a[i + 1]
      arr << a[i - 1]
      arr << a[i]
      arr << a[i + 1]
      max = arr.uniq.count if max < arr.uniq.count
      i += 2
    else
      arr = []
      i += 1
    end
  end
  puts max
end

solution([5, 0, -2, 6, 3, 4, 4, -3, 5])
