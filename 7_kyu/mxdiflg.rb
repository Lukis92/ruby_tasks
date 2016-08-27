# https://www.codewars.com/kata/maximum-length-difference/
def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  max = 0
  a1.each do |a|
    a2.each do |b|
      max = (a.length - b.length).abs if max < (a.length - b.length).abs
    end
  end
  max
end

s1 = %w(hoqq bbllkw oox ejjuyyy plmiis xxxzgpsssa xxwwkktt znnnnfqknaz qqquuhii dvvvwz)
s2 = %w(cccooommaaqqoxii gggqaffhhh tttoowwwmmww)
mxdiflg(s1, s2)
