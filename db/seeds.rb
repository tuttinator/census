require Rails.root.join 'db', 'seeds', 'geographic_data'

[2001, 2006, 2013].each do |year|
  CensusYear.create(year: year)
end

Seeds::GeographicData.load!

# Travel Methods
puts 'Importing Travel Methods...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'travel_methods.csv'), headers: true) do |attrs|
  TravelMethod.create(meshblock_id: attrs['meshblock_id'],
                      census_year_id: attrs['census_year_id'],
                      bicycle: attrs['bicycle'],
                      drove_company_car: attrs['drove_company_car'],
                      drove_private_car: attrs['drove_private_car'],
                      motor_cycle: attrs['motor_cycle'],
                      passenger: attrs['passenger'],
                      public_bus: attrs['public_bus'],
                      train: attrs['train'],
                      walked_or_jogged: attrs['walked_or_jogged'],
                      at_home: attrs['at_home'],
                      did_not_go: attrs['did_not_go'],
                      other: attrs['other'],
                      not_elsewhere_included: attrs['not_elsewhere_included'],
                      total: attrs['total'],
                      total_stated: attrs['total_stated'])
end

# Unpaid Activities
puts 'Importing Unpaid Activities...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'unpaid_activities.csv'), headers: true) do |attrs|
  UnpaidActivity.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        household: attrs['household'],
                        looking_after_child_not_own_household: attrs['looking_after_child_not_own_household'],
                        looking_after_child_own_household: attrs['looking_after_child_own_household'],
                        looking_after_not_own_household_member_who_is_ill_or_disable: attrs['looking_after_not_own_household_member_who_is_ill_or_disable'],
                        looking_after_own_household_member_who_is_ill_or_disabled: attrs['looking_after_own_household_member_who_is_ill_or_disabled'],
                        none: attrs['none'],
                        not_elsewhere_included: attrs['not_elsewhere_included'],
                        voluntary: attrs['voluntary'],
                        total: attrs['total'],
                        total_stated: attrs['total_stated'])
end

# Usual Residents
puts 'Importing Usual Residents...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'usual_residents.csv'), headers: true) do |attrs|
  UsualResident.create(meshblock_id: attrs['meshblock_id'],
                       census_year_id: attrs['census_year_id'],
                       one: attrs['one'],
                       two: attrs['two'],
                       three: attrs['three'],
                       four: attrs['four'],
                       five: attrs['five'],
                       six: attrs['six'],
                       seven: attrs['seven'],
                       eight: attrs['eight'],
                       mean: attrs['mean'],
                       total: attrs['total'])
end

# Weekly Rents
puts 'Importing Weekly Rent data...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'work_hours.csv'), headers: true) do |attrs|
  WeeklyRent.create(meshblock_id: attrs['meshblock_id'],
                    census_year_id: attrs['census_year_id'],
                    median: attr['median'],
                    not_elsewhere_included: attr['not_elsewhere_included'],
                    one_fifty_to_one_ninety_nine: attr['one_fifty_to_one_ninety_nine'],
                    one_hundred_to_one_forty_nine: attr['one_hundred_to_one_forty_nine'],
                    three_fifty_and_over: attr['three_fifty_and_over'],
                    three_hundred_to_three_forty_nine: attr['three_hundred_to_three_forty_nine'],
                    total: attr['total'],
                    total_stated: attr['total_stated'],
                    two_fifty_to_two_ninety_nine: attr['two_fifty_to_two_ninety_nine'],
                    two_hundred_to_two_forty_nine: attr['two_hundred_to_two_forty_nine'],
                    under_one_hundred: attr['under_one_hundred']
                   )
end


# Work Hours
puts 'Importing Work Hours data...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'work_hours.csv'), headers: true) do |attrs|
  WorkHour.create(meshblock_id: attrs['meshblock_id'],
                  census_year_id: attrs['census_year_id'],
                  fifty_to_fifty_nine: attrs['fifty_to_fifty_nine'],
                  forty_to_forty_nine: attrs['forty_to_forty_nine'],
                  not_elsewhere_included: attrs['not_elsewhere_included'],
                  one_to_nine: attrs['one_to_nine'],
                  sixty_or_more: attrs['sixty_or_more'],
                  ten_to_nineteen: attrs['ten_to_nineteen'],
                  thirty_to_thirty_nine: attrs['thirty_to_thirty_nine'],
                  total: attrs['total'],
                  total_stated: attrs['total_stated'],
                  twenty_to_twenty_nine: attrs['twenty_to_twenty_nine'])
end

# Work Statuses
puts 'Importing Work Statuses data'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'work_statuses.csv'), headers: true) do |attrs|
  WorkStatus.create(meshblock_id: attr['meshblock_id'],
                    census_id: attr['census_id'],
                    full_time: attr['full_time'],
                    not_in_the_labour_force: attr['not_in_the_labour_force'],
                    part_time: attr['part_time'],
                    status_unidentifiable: attr['status_unidentifiable'],
                    total: attr['total'],
                    total_stated: attr['total_stated'],
                    unemployed: attr['unemployed'])
end

# Workplace Travel Methods
puts 'Importing Workplace Travel Methods...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'workplace_travel_methods.csv'), headers: true) do |attrs|
  WorkplaceTravelMethod.create(meshblock_id: attrs['meshblock_id'],
                               census_year_id: attrs['census_year_id'],
                               bicycle: attrs['bicycle'],
                               drove_company_car: attrs['drove_company_car'],
                               drove_private_car: attrs['drove_private_car'],
                               motor_cycle: attrs['motor_cycle'],
                               passenger: attrs['passenger'],
                               public_bus: attrs['public_bus'],
                               train: attrs['train'],
                               walked_or_jogged: attrs['walked_or_jogged'],
                               at_home: attrs['at_home'],
                               did_not_go: attrs['did_not_go'],
                               other: attrs['other'],
                               not_elsewhere_included: attrs['not_elsewhere_included'],
                               total: attrs['total'],
                               total_stated: attrs['total_stated'])
end

