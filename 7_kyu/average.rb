# https://www.codewars.com/kata/average-scores/
def average(array)
  (array.reduce(:+) / array.size).ceil
end
