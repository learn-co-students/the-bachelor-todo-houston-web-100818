require 'pry'

def get_first_name_of_season_winner(data,season)
 data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end	 
  

def get_contestant_name(data, occupation)
    person = nil
  data.each do |hash_season, contestants_arr|
    contestants_arr.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
   counter = 0
  data.each do |season, contestants_arr|
    contestants_arr.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end 
  end
  counter
end	

def get_occupation(data, hometown)
    data.each do |season, contestants_arr|
    contestants_arr.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end	


def get_average_age_for_season(data, season)
 counter = 0
 counterAge = 0
  data[season].each do |contestants_arr|
    counter += 1
    counterAge += contestants_arr["age"].to_f
  end
  return (counterAge / counter).round
end	
 
