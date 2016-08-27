# https://www.codewars.com/kata/smallest-unused-id/
def next_id(arr)
  i = 0
  loop do
    return i unless arr.include?(i)
    i += 1
  end
end
next_id([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
next_id([5, 4, 3, 2, 1])
next_id([0, 1, 2, 3, 5])
