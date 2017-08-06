
def get_first_name_of_season_winner(data, season)
  data[season].each do |bachelor_hash|
    if bachelor_hash["status"] == "Winner"
      return bachelor_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |bachelor_hash|
      if bachelor_hash["occupation"] == occupation
        return bachelor_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |bachelor_hash|
      if bachelor_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |bachelor_hash|
      if bachelor_hash["hometown"] == hometown
        return bachelor_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = 0
  total_of_ages = 0
  data[season].each do |bachelor_hash|
    total_of_ages += (bachelor_hash["age"]).to_i
    contestants += 1
  end
  result = total_of_ages / contestants.to_f
  result.round(0)
end
