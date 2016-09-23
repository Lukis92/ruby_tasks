# https://www.codewars.com/kata/fruit-string-calculator/
require 'pry'
def calculate(string)
  operator = '-' if string.split(' ').include? 'loses'
  operator = '+' if string.split(' ').include? 'gains'
  sum = 0
  count = 0
  n1 = 0
  n2 = 0
  string.split(' ').map do |s|
    if s.to_i != 0 && s.to_i.is_a?(Numeric)
      if count == 0
        n1 = s.to_i
        count += 1
      else
        n2 = s.to_i
      end
    end
  end
  n1.method(operator).(n2)
end
calculate("Panda has 48 apples and loses 4")
