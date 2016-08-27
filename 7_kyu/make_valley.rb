# https://www.codewars.com/kata/how-green-is-my-valley/
def make_valley(arr)
  # ceil - round up numbers
  bottom arr[(arr.length / 2).ceil]
end
make_valley([79, 35, 54, 19, 35, 25])
make_valley([67, 93, 100, -16, 65, 97, 92])

#[79, 35, 54, 19, 35, 25]
79..
    .. 54
35..  35..
    25..
  19..
