require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    if person["status"] == "Winner" 
      return person["name"].split[0]
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, person|
    data[season].each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, person|
    data[season].each do |person|
      loop do person["hometown"] == hometown
        counter =+ 1
      end
    end
  end
 return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, person|
    person.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
