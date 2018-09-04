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
    holiday_hash[:winter].collect do |holiday_event, holiday_supply|
         holiday_supply << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #holiday_hash[:season].merge!(holiday_name: supply_array)
  holiday_hash[:season][:holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holidays_and_supply|
     puts season
    holidays_and_supply.each do |holiday, supply|
       puts "#{holiday} #{supply}"
     end
   end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   holiday_hash.collect do |key,value|
    if value.values.flatten.include?("BBQ")
      holiday_hash[key].keys.flatten
      binding.pry
    end
  end
end



# holiday_hash = {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }

# holiday_hash.each do |k, y|
#     puts y.keys
#     y.each do |key, value|
#       puts "#{key} #{value}"
#     end
#   end

# holiday_hash.each do |k, v|
#   v.each do |key, value|
#     puts "#{key}"
#   end

# holiday_hash.collect do |key,value|
#     if holiday_hash[key].values.include?("BBQ")
#     holiday_hash[key].keys
#     end
# end

# holiday_hash.collect do |key,value|
#     if holiday_hash[key].keys.any?{|key| key == :fourth_of_july || key == :memorial_day}
#       binding.pry
#     holiday_hash[key].keys
#     end
#   end