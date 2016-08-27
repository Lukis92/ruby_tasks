#https://www.codewars.com/kata/name-on-billboard/
def billboard(name,price = 30)
  total = 0
  name.length.times { total += price }
  total
end
