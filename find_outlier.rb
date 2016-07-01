def find_outlier(integers)
  numbers_e = []
  numbers_o = []
  integers.each_with_index do |x, i|
    if x.to_i.even?
      numbers_e << x.to_i
    else
      numbers_o << x.to_i
    end
  end
  if numbers_e.size == 1
    return numbers_e[0]
  else
    return numbers_o[0]
  end
end

find_outlier([0,1,2])
