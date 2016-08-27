# https://www.codewars.com/kata/unicode-total/
def uni_total(string)
  # ord - returns the codepoint of the first character of the string
  puts string.chars.map(&:ord).reduce(0, :+)
end
uni_total("a")
uni_total("aaa")
