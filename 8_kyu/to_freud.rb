# https://www.codewars.com/kata/freudian-translator/
def to_freud(sentence)
  #S+ : match any non-white space character
  sentence.gsub(/\S+/, 'sex')
end
to_freud('This is a test')
