# https://www.codewars.com/kata/parts-of-a-list/
def partlist(arr)
  print (0..arr.size - 2).map {|x| [arr[0..x].join(' '), arr[x+1..-1].join(' ')]}
end

partlist(%w(az toto picaro zone kiwi))
