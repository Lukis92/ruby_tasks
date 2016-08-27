# https://www.codewars.com/kata/printer-errors/
require 'pry'
def printer_error(s)
  error_count = 0
  s.chars.each do |sc|
    error_count += 1 unless ('a'..'m').include?(sc)
  end
  puts "#{error_count}/#{s.length}"
end
# "#{s.count('n-z')}/#{s.length}"
s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
printer_error(s)
