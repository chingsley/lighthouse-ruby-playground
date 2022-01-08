def find(id)
  return @candidates.select { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
 return candidate[:years_of_experience] >= 2
end

def has_high_github_points?(candidate)
  return  candidate[:github_points] >= 100
end

def knows_ruby_or_python?(candidate)
  return  (candidate[:languages] & ["Ruby", "Python"]).any?
end

def applied_in_last_15_days?(candidate)
  return  Date.today - candidate[:date_applied]  <= 15;
end

def above_18?(candidate)
  return  candidate[:age]  >= 18;
end

def qualified_candidates(candidates)
  candidates.select { |c| experienced?(c) && has_high_github_points?(c) && knows_ruby_or_python?(c) && applied_in_last_15_days?(c) && above_18?(c) }
end

=begin
Takes in a collection of candidates
Instead of filtering on the candidates, returns them all back but reordered such that:
Candidates with the most experience are at the top
For Candidates that have the same years of experience, they are further sorted by their number of Github points (highest first)
=end
def ordered_by_qualifications(candidates)
  candidates.sort do |a, b|
    [b[:years_of_experience], b[:github_points]] <=> [a[:years_of_experience], a[:github_points]]
  end
end



# puts find(1)
# puts experienced?(@candidates[0])
# puts has_high_github_points?(@candidates[0])
# puts knows_ruby_or_python?(@candidates[0])
# puts applied_in_last_15_days?(@candidates[0])
# puts above_18?(@candidates[0])

# puts qualified_candidates(@candidates)
# puts ordered_by_qualifications(@candidates)

# puts Date.today - 16.day.ago.to_date
# puts Date.today - 16.day.ago.to_date <= 15;
