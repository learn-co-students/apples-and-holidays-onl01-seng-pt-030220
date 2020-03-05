require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][2] = "supply"
  holiday_hash[:winter][:christmas][3] = "Balloons"

  holiday_hash[:winter][:new_years][1] = "supply"
  holiday_hash[:winter][:new_years][2] = "Balloons"



end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr =[]
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, supplyarray|
        arr.push(supplyarray)
      end
    end
  end
  arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  arr =[]
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supply|
      str_holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")
       puts "  #{str_holiday}: #{supply.join(", ")}"
    end

  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  h = []
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      if(supplies.include?("BBQ"))
        h.push(holiday)
      end
    end
  end
  h
end
