def animals(heads, legs)
  chickens = 0
  cows = 0
  result = [0, 0]


  return 'No solutions' if ( heads <= 0 || legs <= 0)

  while legs % 4 >= 0 && heads >= 0
    cows+= 1
    legs = legs /4
    heads -= 1
  end
  #puts result if (heads == 0 && legs == 0)
  puts cows
end
animals(72, 200)
