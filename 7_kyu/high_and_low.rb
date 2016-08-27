# https://www.codewars.com/kata/highest-and-lowest/
def high_and_low(numbers)
  "#{get_array(numbers).max} #{get_array(numbers).min}"
end

def get_array(string)
  string.split(' ').map(&:to_i)
end
high_and_low('4 5 29 54 4 0 -214 542 -64 1 -3 6 -6')
