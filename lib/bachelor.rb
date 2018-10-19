require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |s, con|
    if s == season 
      con.each do |contestant, v|
        if contestant.values.include?("Winner")
          return contestant["name"].split.first
        end 
      end
    end 
  end 
  binding.pry
end

def get_contestant_name(data, occupation)
  data.each do |k, v|
    v.each do |k2, v2|
      if k2.values.include?(occupation)
        return k2["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  
  data.each do |k, v|
    v.each do |k2, v2|
      if k2.values.include?(hometown)
        count += 1 
      end 
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |k,v|
    v.each do |k2,v2| 
      if k2.values.include?(hometown)
        return k2["occupation"]
      end 
    end 
  end
end

def get_average_age_for_season(data, season)
  sum = 0
  length = 0.0
  data.each do |k,v|
    if k == season
      length = v.count
      v.each do |k2, v2| 
        sum += k2["age"].to_i
      end 
    end
  end
  (sum.to_f / length).round
end
