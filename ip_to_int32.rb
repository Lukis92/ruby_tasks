# https://www.codewars.com/kata/52ea928a1ef5cfec800003ee/
def ip_to_int32(ip)
  ip = ip.split('.')
  result = 0
  ip.reverse.each_with_index do |i, index|
    result += i.to_i*2**(8*(index))
  end
  return result
end
ip_to_int32("128.32.10.1")
