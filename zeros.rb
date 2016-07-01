# https://www.codewars.com/kata/52f787eb172a8b4ae1000a34/
def zeros(n)
  count = 0
  while n > 0
    n /= 5
    count += n
  end
  count
end
zeros(12)
