# https://www.codewars.com/kata/fix-the-bugs-syntax-my-first-kata/
def my_first_kata(a, b)
  if a.is_a?(Integer) && b.is_a?(Integer)
    return a % b + b % a
  else
    return false
  end
end
