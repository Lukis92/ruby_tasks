# https://www.codewars.com/kata/delete-occurrences-of-an-element-if-it-occurs-more-than-n-times/
def delete_nth(order, max_e)
  counts = Hash.new 0
  arr = []
  order.each_with_index do |o, i|
    if counts[o] < max_e
      counts[o] += 1
      arr << order.at(i)
    end
  end
  arr.select { |a| a }

  # occurrences = Hash.new(0)
  # order.reject { |item| (occurrences[item] += 1) > max_e }
end
delete_nth([20, 37, 20, 21], 1)
# delete_nth([1, 1, 3, 3, 7, 2, 2, 2, 2], 3)

# delete_nth([1, 2, 3, 3, 1, 1, 2, 2, 3, 3, 6, 4, 5], 3)
