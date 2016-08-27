# https://www.codewars.com/kata/what-is-my-name-score-number-1/
def name_score(name)
  create_hash(name, sum_values(get_values(name))).tap(&method(:print))
end

def score_value
  {
    'ABCDE' => 1,
    'FGHIJ' => 2,
    'KLMNO' => 3,
    'PQRST' => 4,
    'UVWXY' => 5
  }
end

def get_values(name)
  arr = []
  name.split('').each do |n|
    score_value.each do |k, v|
      arr << v if k.include?(n.upcase)
    end
  end
  arr
end

def sum_values(arr)
  arr.inject(0, :+)
end

def create_hash(key, value)
  { key => value }
end
name_score('Mary Jane')
name_score('Luke Skywalker')
