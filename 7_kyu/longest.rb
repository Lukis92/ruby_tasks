# https://www.codewars.com/kata/two-to-one/
def longest(a1, a2)
  puts (a1 + a2).chars.sort.uniq.join
end

longest("aretheyhere", "yestheyarehere")
longest("loopingisfunbutdangerous", "lessdangerousthancoding")
longest("inmanylanguages", "theresapairoffunctions")
