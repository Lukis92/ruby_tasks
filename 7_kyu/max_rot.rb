# https://www.codewars.com/kata/rotate-for-a-max/
def max_rot(n)
  arr2 = []
  arr = n.to_s.split('')
  i = 0
  while i < n.to_s.length
    # 7 8 9 5 6
    arr.insert(-1, arr.delete_at(i))
    arr2 << arr.join('').to_i
    i += 1
  end
  arr2.max
end
max_rot(56_789)
max_rot(869_219_342)
