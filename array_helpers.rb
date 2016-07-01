# https://www.codewars.com/kata/525d50d2037b7acd6e000534/
class Array
  def square
    # map { |num| num**2 }
    map { |x| x*x}
  end

  def cube
    map { |num| num**3 }
  end

  def average
    # if size > 0
    #   inject { |sum, num| sum + num }.to_i / size
    # else
    #   return 'NaN'
    # end
    sum / size
  end

  def sum
    # inject { |sum, num| sum + num}.to_i
    reduce(:+)
  end

  def even
    # select { |num| num.even?}
    select(&:even?)
  end

  def odd
    # select { |num| num.odd? }
    select(&:odd?)
  end
end

numbers = [1, 2, 3, 4, 5]
print numbers.square
print numbers.cube
print numbers.average
print numbers.even
print numbers.odd
