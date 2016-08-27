#https://www.codewars.com/kata/the-sum-and-the-rest-of-certain-pairs-of-numbers-have-to-be-perfect-squares/
require 'pry'
def closest_pair_tonum(s)
    m = s-1
    n = s-2
    x = 0
    y = 0
    while !perfect_square?(x + y) || !perfect_square?(x - y)
      m -= 1
      n -= 1

    end
    puts [m, n]
end

def perfect_square?(number)
  Math.sqrt(number) % 1 == 0
end

closest_pair_tonum(10)
