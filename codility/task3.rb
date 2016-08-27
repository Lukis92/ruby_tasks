# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b)
  count = 0
  puts 0 if b < a || b < 0
  (a..b).each do |s|
    count += 1 if square?(s)
  end
  puts count
end

def square?(number)
  Math.sqrt(number.ceil) % 1 == 0
end

solution(4, 17)
