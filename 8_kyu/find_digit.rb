# https://www.codewars.com/kata/find-nth-digit-of-a-number/
def find_digit(num, nth)
  num = num.abs
  return -1 if nth < 1
  nth <= num.to_s.length ? num.to_s.chars[num.to_s.length - nth].to_i : 0
end
find_digit(5673, 4)
find_digit(-456, 4)
