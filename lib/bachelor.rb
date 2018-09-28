require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |data_season, contestants|
    if data_season == season
      contestants.each do |bachelorettes|
        bachelorettes.each do |key, value|
          if value == "Winner"
            return bachelorettes["name"].split[0]
          end        
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |data_season, contestants|
    contestants.each do |bachelorettes|
      bachelorettes.each do |key, value|
        if key == "occupation"
          if value == occupation
            return bachelorettes["name"]
          end
        end
      end      
    end
  end
end

def count_contestants_by_hometown(data, hometown)

  hometown_count = 0

  data.each do |data_season, contestants|
    contestants.each do |bachelorettes|
      bachelorettes.each do |key, value|
        if value == hometown
          hometown_count += 1
        end
      end
    end
  end  
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |data_season, contestants|
    contestants.each do |bachelorettes|
      bachelorettes.each do |key, value|
        if value == hometown
          return bachelorettes["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  num_of_contestants = 0

  data.each do |data_season, contestants|
    if data_season == season
      contestants.each do |bachelorettes|
        bachelorettes.each do |key, value|
          if key == "age"
            age_sum += value.to_f
            num_of_contestants += 1
          end
        end
      end
    end
  end  
#  binding.pry
  (age_sum / num_of_contestants).round
end
