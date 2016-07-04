# https://www.codewars.com/kata/simple-css-selector-comparison/
def compare(a, b)
  # http://ruby-doc.org/core-2.2.0/Regexp.html
  # http://stackoverflow.com/questions/2973436/regex-lookahead-lookbehind-and-atomic-groups
  # /./ - any character except a newline
  # /\w/ a word character [a-zA-Z0-9_]
  # + one or more times
  # \s a whitespace character
  # (?<=^) - positive lookbehind
  a_tags = [a.scan(/\#\w+/), a.scan(/\.\w+/), a.scan(/(?<=^|\s)\b(\w+)\b/)]
  b_tags = [b.scan(/\#\w+/), b.scan(/\.\w+/), b.scan(/(?<=^|\s)\b(\w+)\b/)]

  # better id result
  result_id = a_tags[0].count <=> b_tags[0].count
  result_class = a_tags[1].count <=> b_tags[1].count
  result_tagname = a_tags[2].count <=> b_tags[2].count
  return a if result_id == 1
  return a if result_id == 0 && result_class == 1
  return a if result_id == 0 && result_class == 0 && result_tagname == 1
  return a if result_id == 0 && result_class == 0 && result_tagname == 0 && a_tags.count > b_tags.count
  b
end

# compare 'body p', 'div'
# compare '.class', '#id'
compare 'div.big', '.small'
# compare '.big', '.small'
