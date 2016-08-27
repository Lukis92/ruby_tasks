# https://www.codewars.com/kata/surface-area-and-volume-of-a-box/
def get_size(w, h, d)
  surface = (w * h * 2) + (w * d * 2) + (h * d * 2)
  volume = w * h * d
  [surface, volume]
end

get_size(4, 2, 6)
get_size(1, 1, 1)
get_size(1, 2, 1)
