# https://www.codewars.com/kata/56a5d994ac971f1ac500003e/
def longest_consec(strarr, k)
  return "" if strarr.empty? || k <= 0 || k > strarr.length
  return strarr
    .each_cons(k)
    .collect { |arr| arr.reduce(:+) }
    .group_by(&:size)
    .max
    .last
    .first
end

# longest_consec(%w(zone abigail theta form libe zas), 2)
# longest_consec(%w(ejjjjmmtthh zxxuueeg aanlljrrrxx dqqqaaabbb oocccffuucccjjjkkkjyyyeehh), 1)
 longest_consec([], 3)
# longest_consec(%w(itvayloxrp wkppqsztdkmvcuwvereiupccauycnjutlv vweqilsfytihvrzlaodfixoyxvyuyvgpck), 2)
longest_consec(%w(wlwsasphmxx owiaxujylentrklctozmymu wpgozvxxiu), 2)
# longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3)
