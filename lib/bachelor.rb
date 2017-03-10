def get_first_name_of_season_winner(data, season)
  # code here
  #data[:"season 30"][0][:name]
  data.each do |key, value|
    if key == season
      #puts value[0]["name"]
      winner = value[0]["name"].split(" ")[0]
      return winner
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do|key, season|
    season.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |key, season|
    season.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do|key, season|
    season.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  data.each do |key, value|
    if key == season
      value.each do |contestant|
        age += contestant["age"].to_i
        count += 1
      end
    end
  end
  (age.to_f/count).round
end
