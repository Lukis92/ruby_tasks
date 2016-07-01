# https://www.codewars.com/kata/51675d17e0c1bed195000001
def solution(digits)
  p digits.split('').each_cons(5).max.join.to_i
end

solution("234564634653")
