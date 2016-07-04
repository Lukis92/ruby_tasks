# https://semaphoreci.com/community/tutorials/getting-started-with-rspec
# https://www.codewars.com/kata/51b6249c4612257ac0000005/
require 'pry'
def solution(roman)
  RomanDecoder.decode(roman)
end
class RomanDecoder
  def self.decode(roman)
    new(roman).decode
  end

  def initialize(roman)
    @roman = roman
  end

  def roman_values
    {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
  end

  def translate_values
    @roman.split('').map { |val| roman_values[val] }
  end

  def decode
    arr_values = translate_values.reverse
    sum = 0
    arr_values.each_with_index do |val, index|
      next_value = arr_values[index + 1].to_i
      if next_value < val
        sum += (val - next_value)
        #delete the element in arr_values given by an index
        arr_values.slice!(index + 1)
      else
        sum += val
      end
    end
    sum
  end
end
