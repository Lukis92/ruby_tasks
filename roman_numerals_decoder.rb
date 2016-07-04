# https://www.codewars.com/kata/roman-numerals-decoder/
require './spec/spec_helper'
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
      'IV' => 4,
      'V' => 5,
      'IX' => 9,
      'X' => 10,
      'XL' => 40,
      'L' => 50,
      'XC' => 90,
      'C' => 100,
      'CD' => 400,
      'D' => 500,
      'CM' => 900,
      'M' => 1000
    }
  end

  def translate_values
    @roman.split('').map { |val| roman_values[val] }
  end

  def decode
    arr_values = translate_values.reverse
    # sum = 0
    # reversed.each_with_index do |val, index|
    #   next_
    # end
  end
end

describe RomanDecoder do
  specify { except(described_class.decode('XXI')).to eq 21}
  # specify { except(described_class.decode('XXI')).to eq 21}
  # specify { except(described_class.decode('XXI')).to eq 21}
  # specify { except(described_class.decode('XXI')).to eq 21}
  # specify { except(described_class.decode('XXI')).to eq 21}
end
