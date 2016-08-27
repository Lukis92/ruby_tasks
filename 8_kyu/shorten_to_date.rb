# https://www.codewars.com/kata/remove-the-time/
def shorten_to_date(long_date)
  # tr - returns a copy of strf with replaced character ',', to ''
  print long_date.split(' ')[0..2].join(' ').tr(',', '')

  # long_date.split(",").first
end
shorten_to_date("Monday February 2, 8pm")
