# https://www.codewars.com/kata/permutations
def permutations(string)
  #chars - seperates the string into an array of single characters
  #map - takes a object and returns it after the block is done
  #&:join - could be replaced with |i| i.join
  p string.chars.permutation.map(&:join).uniq
end

permutations('ab')
