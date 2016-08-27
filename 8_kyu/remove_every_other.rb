# https://www.codewars.com/kata/removing-elements
def remove_every_other(arr)
  i = 0
  while i < arr.length
    arr.delete_at(i + 1)
    i += 1
  end
  return arr

  # arr.select.with_index {|e, index| index.even? }
end

remove_every_other(['Hello', 'Goodbye', 'Hello Again'])
