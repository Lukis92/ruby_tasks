# https://www.codewars.com/kata/sum-of-multiples
def sum_mul(n, m)
  return "INVALID" if m <= n
  multip = []
  try = n
  factor = 1
  while try < m
    multip << try
    factor += 1
    try = n * factor
  end
  multip.inject(0){|sum, x| sum + x}
end
sum_mul(2,9),20)
sum_mul(4,123),1860)
