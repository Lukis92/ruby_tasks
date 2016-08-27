# https://www.codewars.com/kata/growth-of-a-population/
def nb_year(p0, percent, aug, p)
  i = 0
  while p0 < p
    p0 = p0 + (p0 * percent / 100) + aug
    i += 1
  end
  i
end

nb_year(1500, 5, 100, 5000)
nb_year(1_500_000, 2.5, 10_000, 2_000_000)
nb_year(1_500_000, 0.25, 1000, 2_000_000)
