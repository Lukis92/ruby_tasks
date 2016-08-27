# https://www.codewars.com/kata/52996b5c99fdcb5f20000004/
require 'pry'
class Runoff
  def self.runoff(voters)
    voters_list = {}
    while true
      voters.each do |row|
        f = row[0]
        voters_list[f] ||= 0
        voters_list[f] += 1
      end

      best = voters_list.select { |k, v| v == voters_list.values.max }
      return best.keys[0] if best.values[0] > voters_list.values.reduce(:+)/2

      least_votes = voters_list.select { |k, v| v == voters_list.values.min }
      least_votes.keys.each { |k| voters_list.delete(k) }
      voters.each { |row| least_votes.keys.each { |x| row.delete(x) } }
    end
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
Runoff.runoff(voters)
