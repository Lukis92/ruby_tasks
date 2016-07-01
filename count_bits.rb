# https://www.codewars.com/kata/526571aae218b8ee490006f4/
def count_bits(n)
n = n.to_s(2).to_i
count = 0
while n > 0
  digit = n % 10
  n /= 10
  count += 1 if digit == 1
end
return count

# puts n.to_s(2).count "1"
end
count_bits(1234)
