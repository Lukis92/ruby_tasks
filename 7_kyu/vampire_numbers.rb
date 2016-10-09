#https://www.codewars.com/kata/vampire-numbers-1/
def vampire_test(a, b)
  result = multiply(a, b)
  arr = getArrayOfNum(result)
  arr_a = getArrayOfNum(a.abs)
  arr_b = getArrayOfNum(b.abs)

  sum = arr_a + arr_b
  if arr.sort == sum.sort && double_negative?(a, b)
    return true
  else
    return false
  end
end

# checking if two numbers are negative
def double_negative?(a, b)
  return true unless a < 0 && b < 0
end

# returns result of multiply
def multiply(a, b)
  a * b
end

# split number into digits and puts to array
def getArrayOfNum(num)
  num.abs.to_s.chars.map(&:to_i)
end
#[2,4,9,5,9,0,2,5,8,1,7,8,0,3]
#[2,9,4,7,0,5,1]
#[8,4,6,9,1,5,3]
vampire_test(2947051, 8469153)

#Another soulution:
#(a.to_s + b.to_s).chars.sort == (a * b).to_s.chars.sort
