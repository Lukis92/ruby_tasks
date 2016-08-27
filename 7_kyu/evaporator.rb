# https://www.codewars.com/kata/deodorant-evaporator/
require 'pry'
def evaporator(content, evap_per_day, threshold)
  day = 0
  threshold = content * (threshold / 100.0)
  while content >= threshold
    content -= content * (evap_per_day / 100.0)
    day += 1
    # binding.pry
  end
  print day
end

evaporator(10, 10, 10)
