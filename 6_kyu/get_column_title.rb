# https://www.codewars.com/kata/get-the-excel-column-title/
require 'pry'
def get_column_title(n)
  columnName = ''

  raise IndexError if n < 1
  raise TypeError unless n.is_a? Integer
  while n > 0
    modulo = (n - 1) % 26
    columnName = (65 + modulo).chr + columnName
    n = (n - modulo).to_i / 26
  end
  puts columnName
end

get_column_title(1)
get_column_title(26)
