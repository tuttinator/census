require Rails.root.join 'db', 'seeds', 'geographic_data'

[2001, 2006, 2013].each do |year|
  CensusYear.create(year: year)
end

Seeds::GeographicData.load!

# Work Hours
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'work_hours.csv'), headers: true) do |attrs|
  WorkHour.create(meshblock_id: attrs['meshblock_id'],
                  census_year_id: attrs['census_year_id'],
                  fifty_to_fiftynine: attrs['fifty_to_fiftynine'],
                  forty_to_fortynine: attrs['forty_to_fortynine'],
                  not_elsewhere_included: attrs['not_elsewhere_included'],
                  one_to_nine: attrs['one_to_nine'],
                  sixty_or_more: attrs['sixty_or_more'],
                  ten_to_nineteen: attrs['ten_to_nineteen'],
                  thirty_to_thirtynine: attrs['thirty_to_thirtynine'],
                  total: attrs['total'],
                  total_stated: attrs['total_stated'],
                  twenty_to_twentynine: attrs['twenty_to_twentynine'])
end

# Work Statuses
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
