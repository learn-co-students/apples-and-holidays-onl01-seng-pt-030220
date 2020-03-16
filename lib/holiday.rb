require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  #  holiday_hash:
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
  
 holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:summer][:fourth_of_july][1]

 holiday_hash.map do |key, element|
 if key==:winter || key==:fall
 
   holiday_hash[key].each {|k, element|
   holiday_hash[key][k] << "Balloons" }

 end
end
holiday_hash
   end
   
   
 
 




def add_supply_to_memorial_day(holiday_hash, supply)


 holiday_hash.map do |key, element|
 if key==:spring
 
   holiday_hash[:spring][:memorial_day] << supply
 end
end
holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array) #
holiday_hash[season][holiday_name] = []
holiday_hash[season][holiday_name] += supply_array
holiday_hash

end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_holiday_supplies = []
  holiday_hash[:winter].each do |key, element|
  all_winter_holiday_supplies << element
  
end
holiday_hash[:fall].each do |key, element|
  all_winter_holiday_supplies << element
  
end
all_winter_holiday_supplies.flatten
    
  

end

def all_supplies_in_holidays(holiday_hash)
 
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end


  

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







