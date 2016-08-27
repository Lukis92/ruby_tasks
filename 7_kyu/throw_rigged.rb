# https://www.codewars.com/kata/rigged-dice/
def throw_rigged
  random = rand(1..100)
  return 6 if random <= 22
  return rand(1..5) if random > 22
  #rand : random number between 0.00 and 1.00 e.g. 0.53
  #  rand < 0.22 ? return 6 : return rand(1..5)
end

throw_rigged
