require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  # holiday_hash[:summer][:fourth_of_july][1]
  holiday_hash[:summer][:fourth_of_july][1]
end

#input season --> summer --> holiday --> fourth_of_july 
#output second supply of that holiday -->BBQ 

# method returns second (first index) supply of the holiday fourth of july of the season summer 

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # holiday_hash[:winter].each do |holiday, items|
  #   items << supply 
  # end 
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply 
  end 
end

#input new supply 
#output supply added to winter holiday 

#add new_supply to each winter holiday by iterating over the winter hash and shoveling the new_supply into previous supplies 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  # holiday_hash[:spring].each do |holiday, items|
  #   items << supply 
  # end 
  holiday_hash[:spring][:memorial_day] << supply
end

#input new supply
#outputs supply added to spring--> memorial_day

#add new_supply to memorial_day by iterating over the spring hash, then memorial_day hash and shoveling the new_supply into previous supplies 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

#inputs a new holiday, and its supplies 
#outputs all the holidays and the new holiday with its supplies 
#the new holiday will be in a season with a name and an array of supplies 

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # array = holiday_hash[:winter].map do |holiday, items|
  #   items
  # end 
  # array.flatten
  winter_holidays = []
  array = holiday_hash[:winter].map do |holiday, supplies|
    winter_holidays.concat(supplies)
  end 
  winter_holidays
end

#inputs supplies used in the winter season
#outputs array of the supples 

#iterate over each holiday in winter to compile a list of supplies into an array 

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, items|
      if items.include?("BBQ")
        holiday 
      end 
    end
  end.flatten.compact
end







