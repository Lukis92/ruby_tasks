# https://www.codewars.com/kata/a-rule-of-divisibility-by-7/
require 'pry'
def seven(m)
  arr = m.to_s.split('').map {|digit| digit.to_i}
  temp = arr
  result = temp.join.to_i
  i = 0

  while result.to_s.length > 2 do
    #get and delete last digit
    deleted = temp.delete_at(temp.rindex(temp.last))
    #rest digits
    result = temp.join.to_i - (2*deleted)
    #getting array of digits from current result
    temp = result.to_s.chars.map(&:to_i)
    i += 1
  end
  print [result, i]
end
seven(371)
seven(372)
seven(1603)
seven(483)
