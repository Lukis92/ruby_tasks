#https://www.codewars.com/kata/enumerable-magic-number-4-true-for-none/
def none? list, &block
  list.each do |l|
  	if block(l) == true
  	end
  end
end