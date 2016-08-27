#https://www.codewars.com/kata/how-good-are-you-really/
def better_than_average(arr, points)
  average = arr.reduce(:+) / arr.size
  average < points ? true : false
end

better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75), true)
better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69), true)
