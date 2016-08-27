#https://www.codewars.com/kata/number-of-people-in-the-bus/
def number(bus_stops)
  sum1 = 0
  sum2 = 0
  bus_stops.each do |numbers|
    sum1 += numbers[0].to_i
    sum2 += numbers[1].to_i
  end
  sum1 - sum2
end
#bus_stops.map {|(on, off) on - off}.reduce(:+)
number([[10, 0], [3, 5], [5, 8]])

20, 7, 6, 2
l = 20, 7 r = *6*, 2

20, 2, 7, 6
