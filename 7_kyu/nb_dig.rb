# https://www.codewars.com/kata/count-the-digit/
def nb_dig(n, d)
  count = 0
  (0..n).map do |i|
    square = i*i
    square.to_s.split('').map { |digit| count += 1 if digit.to_i == d}
  end
  count
  #(0..n).map {|k| k**2}.join.count d.to_s
end

nb_dig(10, 1)
nb_dig(25, 1)
