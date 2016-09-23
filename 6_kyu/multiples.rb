# https://www.codewars.com/kata/multiples-of-3-and-5/
def solution(number)
  (1...number).select { |n| (n % 3).zero? || (n % 5).zero? }.inject(:+)
end

solution(10)
