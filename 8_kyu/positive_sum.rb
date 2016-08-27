# https://www.codewars.com/kata/sum-of-positive/
def positive_sum(arr)
  sum = 0
  arr.each do |n|
    sum += n if n > 0
  end
  sum
  # arr.select{|x| x > 0}.reduce(0, :+)
end
positive_sum([1, 2, 3, 4, 5])
positive_sum([-1,2,3,4,-5])
