# https://www.codewars.com/kata/count-of-positives-slash-sum-of-negatives/
def count_positives_sum_negatives(lst)
  sum = 0
  count = 0
  if lst.nil? || lst.length.zero?
    return []
  else
    lst.each do |l|
      if l > 0
        count += 1
      elsif l < 0
        sum += l
      end
    end
  end

  [count, sum]
end
