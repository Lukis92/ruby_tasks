# https://www.codewars.com/kata/printing-array-elements-with-comma-delimiters/
def printArray(array)
  #join : return a string created by converting each element of the array to
  # a string
  print array.join(",")
end
printArray([2,4,5,2])
