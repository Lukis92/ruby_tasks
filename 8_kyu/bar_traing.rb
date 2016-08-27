# https://www.codewars.com/kata/localize-the-barycenter-of-a-triangle/
def bar_triang(p1,p2,p3)
  # round() - rounds float to a given precision in decimal digits
  x0 = (p1[0] + p2[0] + p3[0]) / 3.0
  y0 = (p1[1] + p2[1] + p3[1]) / 3.0
  puts [x0.round(4), y0.round(4)]
end
bar_triang([4, 6], [12, 4], [10, 10])
