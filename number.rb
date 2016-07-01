module Number
  PI = 3.14
  def Number.plus(a, b)
    a+b
  end
end

module Lista
  PI = [3.14, 3.14].to_s
  def Lista.plus(a, b)
    (a+b).to_s
  end
end

# puts Number.plus(1.2,1.2) #2.4
# puts Lista.plus([1,2],[1,2]) #[3, 3]
# puts Number::PI
puts Lista::PI #"3.14, 3.14"
