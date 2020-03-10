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
holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|

      if key == :winter

         value.each do |attr, data|
            data << supply
         end
      end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key, value|


              if key == :spring
                 value.each do |attr, data|
                   data << supply
                 end
              end

  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
#:Martin Luther King Day    "music"   :thanksgiving => ["Turkey"]

         holiday_hash[season][holiday_name] = supply_array

end




def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  newarr=[]
   holiday_hash[:winter].each do |value|

        newarr <<  value
    end
    newarr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_supplies.each do |key,value|

      puts "#{key.capitalize}:"
#iteritor inside values ,change symbol to string for comapre and make cahnges
#
    value.each do |holiday, vestival|
      #check has"_" or not ,change "_" to " ",and split it to make each word capitalize ,collect them in. array and capitalize them then join them to string again
       if holiday.to_s.include? "_"
        puts"  #{holiday.to_s.gsub(/[_]/, " ").split.collect(&:capitalize).join(" ")}: #{vestival.join(', ')}"
       else
        puts"  #{holiday.capitalize}: #{vestival.join(', ')}"
       end

    end

  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr=[]
  holiday_supplies.each do |key,value|
    value.each do |holiday, vestival|
          if vestival.include? "BBQ"
             arr << holiday
          end
    end
  end
  return arr

end
