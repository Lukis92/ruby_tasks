# https://www.codewars.com/kata/mumbling/
def accum(s)
  arr = []
  s.chars.each_with_index do |z, index|
    i = 0
    while i <= index
      if i == 0
        arr << z.upcase
      else
        arr << z.downcase
      end
      i += 1
    end
    arr << '-' unless index == s.length - 1
  end
  puts arr.join

  #s.chars.each_with_index.map{|c, i| c.upcase + c.downcase * i}.join('-')
end
accum('HbideVbxncC')
# 1. Podzielić string na char i wyciągnąć znaki
# 2. wrzucić do
