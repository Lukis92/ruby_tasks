# https://www.codewars.com/kata/count-the-characters/
def count_char(string, char)
  count = 0
  string.chars.each {|s| count += 1 if s.downcase == char.downcase }
  count
  # string.downcase.chars.count(char.downcase)
end
count_char('fizzbuzz', 'z')
