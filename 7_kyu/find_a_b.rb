# https://www.codewars.com/kata/coding-3min-a-star-b-equals-c
def find_a_b(numbers,c)
  arr = []
  numbers.combination(2).each do |a, b|
    if c == a * b
      arr << a
      arr << b
      break
    end
  end
  if arr.empty?
    nil
  else
    arr
  end
  # numbers.combination(2).find {|x| a*b==c}
end
find_a_b([1,2,3],3)
find_a_b([1,2,3,6],6)
