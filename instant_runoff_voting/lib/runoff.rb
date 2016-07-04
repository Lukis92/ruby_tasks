# https://www.codewars.com/kata/52996b5c99fdcb5f20000004/
class Runoff
  def self.runoff(voters)
    votes = Hash.new
    voters.each do |row|
      if votes.key?(row[0])
        votes[row[0]] = votes[row[0]].values += 3
      else
        votes[row[0].to_sym = 3
      end
    end
    puts votes
  end
end

voters = [[:dem, :ind, :rep],
          [:rep, :ind, :dem],
          [:ind, :dem, :rep],
          [:ind, :rep, :dem]]
Runoff.runoff(voters)
