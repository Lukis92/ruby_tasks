# https://www.codewars.com/kata/53907ac3cd51b69f790006c5/
def triangle_type(a, b, c)
  if a + b <= c || a + c <= b || b + c <= a
    return 0
  elsif (a * a + b * b > c * c) && (b * b + c * c > a * a) && (c * c + a * a > b * b)
    return 1
  elsif (a * a + b * b == c * c) || (a * a + c * c == b * b) || (b * b + c * c == a * a)
    return 2
  elsif (a * a > b * b + c * c) || (b * b > a * a + c * c) || (c * c > a * a + b * b)
    return 3
  end
end

triangle_type(7, 3, 2)
triangle_type(2, 4, 6)
triangle_type(8, 5, 7)
triangle_type(3, 4, 5)
triangle_type(7, 12, 8)
