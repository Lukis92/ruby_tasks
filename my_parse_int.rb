def my_parse_int(string)
  # your code here, return the string "NaN" when the input is not an integer value
  string = string.gsub(/\s+/, '')
  chars = string.split('')
  number = ''
  chars.each_with_index do |c, index|
    if c.to_i.to_s == c
      number += c
    else
      puts 'NaN'
      break
    end
    if index == chars.size - 1 && !number.nil?
      puts number.to_i
    end
  end
end

my_parse_int('1')
my_parse_int('10')
my_parse_int(' 1')
my_parse_int('08')
my_parse_int('5 friends')
my_parse_int('16.0')
