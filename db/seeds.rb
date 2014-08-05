require Rails.root.join 'db', 'seeds', 'geographic_data'

[2001, 2006, 2013].each do |year|
  CensusYear.create(year: year)
end

Seeds::GeographicData.load!

if Anzic96Industry.count == 0
  # ANZIC 96 Industries
  puts 'Importing ANZIC 96 Industries...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'anzic96_industries.csv'), headers: true) do |attrs|
      Anzic96Industry.create(meshblock_id: attrs['meshblock_id'],
                             census_year_id: attrs['census_year_id'],
                             accommodation_cafes_and_restaurants: attrs['accommodation_cafes_and_restaurants'],
                             agriculture_forestry_and_fishing: attrs['agriculture_forestry_and_fishing'],
                             communication_services: attrs['communication_services'],
                             construction: attrs['construction'],
                             culture_and_recreational_services: attrs['culture_and_recreational_services'],
                             education: attrs['education'],
                             electricity_gas_and_water_supply: attrs['electricity_gas_and_water_supply'],
                             finance_and_insurance: attrs['finance_and_insurance'],
                             government_admin_and_defence: attrs['government_admin_and_defence'],
                             health_and_community_services: attrs['health_and_community_services'],
                             manufacturing: attrs['manufacturing'],
                             mining: attrs['mining'],
                             not_elsewhere_included: attrs['not_elsewhere_included'],
                             personal_and_other_services: attrs['personal_and_other_services'],
                             property_and_business_services: attrs['property_and_business_services'],
                             retail_trade: attrs['retail_trade'],
                             total: attrs['total'],
                             total_stated: attrs['total_stated'],
                             transport_and_storage: attrs['transport_and_storage'],
                             wholesale_trade: attrs['wholesale_trade'])
  end
end

if Anzic96WorkplaceIndustry.count == 0
  # ANZIC 96 Industries
  puts 'Importing ANZIC 96 Workplace Industries...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'anzic96_workplace_industries.csv'), headers: true) do |attrs|
    Anzic96WorkplaceIndustry.create(meshblock_id: attrs['meshblock_id'],
                                    census_year_id: attrs['census_year_id'],
                                    accommodation_cafes_and_restaurants: attrs['accommodation_cafes_and_restaurants'],
                                    agriculture_forestry_and_fishing: attrs['agriculture_forestry_and_fishing'],
                                    communication_services: attrs['communication_services'],
                                    construction: attrs['construction'],
                                    culture_and_recreational_services: attrs['culture_and_recreational_services'],
                                    education: attrs['education'],
                                    electricity_gas_and_water_supply: attrs['electricity_gas_and_water_supply'],
                                    finance_and_insurance: attrs['finance_and_insurance'],
                                    government_admin_and_defence: attrs['government_admin_and_defence'],
                                    health_and_community_services: attrs['health_and_community_services'],
                                    manufacturing: attrs['manufacturing'],
                                    mining: attrs['mining'],
                                    not_elsewhere_included: attrs['not_elsewhere_included'],
                                    personal_and_other_services: attrs['personal_and_other_services'],
                                    property_and_business_services: attrs['property_and_business_services'],
                                    retail_trade: attrs['retail_trade'],
                                    total: attrs['total'],
                                    total_stated: attrs['total_stated'],
                                    transport_and_storage: attrs['transport_and_storage'],
                                    wholesale_trade: attrs['wholesale_trade'])
  end
end

if AnzscoOccupation.count == 0
  # ANZSCO Occupation
  puts 'Importing Anzsco Occupations...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'anzsco_occupations.csv'), headers: true) do |attrs|
    AnzscoOccupation.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            clerical_and_admin: attrs['clerical_and_admin'],
                            community_and_personal_service: attrs['community_and_personal_service'],
                            labourers: attrs['labourers'],
                            machinery_operators_and_drivers: attrs['machinery_operators_and_drivers'],
                            managers: attrs['managers'],
                            not_elsewhere_included: attrs['not_elsewhere_included'],
                            professionals: attrs['professionals'],
                            sales: attrs['sales'],
                            technicians_and_trade_workers: attrs['technicians_and_trade_workers'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
  end
end

if AnzscoOccupation.count == 0
  # ANZSCO Workplace Occupation
  puts 'Importing Anzsco Workplace Occupations...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'anzsco_workplace_occupations.csv'), headers: true) do |attrs|
    AnzscoOccupation.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            clerical_and_admin: attrs['clerical_and_admin'],
                            community_and_personal_service: attrs['community_and_personal_service'],
                            labourers: attrs['labourers'],
                            machinery_operators_and_drivers: attrs['machinery_operators_and_drivers'],
                            managers: attrs['managers'],
                            not_elsewhere_included: attrs['not_elsewhere_included'],
                            professionals: attrs['professionals'],
                            sales: attrs['sales'],
                            technicians_and_trade_workers: attrs['technicians_and_trade_workers'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
  end
end

if Anzsic06Industry.count == 0
  # Anzsic06 Industries
  puts 'Importing Anzsic06 Industries...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'anzsic06_industries.csv'), headers: true) do |attrs|
    Anzsic06Industry.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            accomodation_and_food: attrs['accomodation_and_food'],
                            admin_and_support: attrs['admin_and_support'],
                            agriculture_forestry_and_fishing: attrs['agriculture_forestry_and_fishing'],
                            arts_and_recreation: attrs['arts_and_recreation'],
                            construction: attrs['construction'],
                            education_and_training: attrs['education_and_training'],
                            electricity_gas_water_and_waster_services: attrs['electricity_gas_water_and_waster_services'],
                            financial_and_insurance: attrs['financial_and_insurance'],
                            health_care_and_social_assistance: attrs['health_care_and_social_assistance'],
                            information_media_and_telecoms: attrs['information_media_and_telecoms'],
                            manufacturing: attrs['manufacturing'],
                            mining: attrs['mining'],
                            not_elsewhere_included: attrs['not_elsewhere_included'],
                            other: attrs['other'],
                            professional_scientific_and_technical: attrs['professional_scientific_and_technical'],
                            public_admin_and_safety: attrs['public_admin_and_safety'],
                            rental_hiring_and_real_estate: attrs['rental_hiring_and_real_estate'],
                            retail: attrs['retail'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'],
                            transport_postal_and_warehousing: attrs['transport_postal_and_warehousing'],
                            wholesale: attrs['wholesale'])
  end
end

if ArrivalYear.count == 0
  # Arrival Years
  puts 'Importing Arrival Years...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'arrival_years.csv'), headers: true) do |attrs|
    begin
      ArrivalYear.create(meshblock_id: attrs['meshblock_id'],
                         census_year_id: attrs['census_year_id'],
                         zero_to_nine_years: attrs['zero_to_nine_years'],
                         ten_to_nineteen_years: attrs['ten_to_nineteen_years'],
                         twenty_to_twenty_nine_years: attrs['twenty_to_twenty_nine_years'],
                         thirty_to_thirty_nine_years: attrs['thirty_to_thirty_nine_years'],
                         forty_to_forty_nine_years: attrs['forty_to_forty_nine_years'],
                         fifty_years_or_more: attrs['fifty_years_or_more'],
                         not_elsewhere_included: attrs['not_elsewhere_included'],
                         total: attrs['total'],
                         total_stated: attrs['total_stated'])
    rescue ActiveRecord::RecordInvalid
      puts attrs['meshblock_id']
    end
  end
end

if Birthplace.count == 0
  # Birthplaces
  puts 'Importing Birthplaces...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'birthplaces.csv'), headers: true) do |attrs|
    Birthplace.create(meshblock_id: attrs['meshblock_id'],
                      census_year_id: attrs['census_year_id'],
                      new_zealand: attrs['new_zealand'],
                      overseas: attrs['overseas'],
                      not_elsewhere_included: attrs['not_elsewhere_included'],
                      total: attrs['total'],
                      total_stated: attrs['total_stated'])
  end
end

if BroadAgeGroup.count == 0
  # BroadAgeGroups
  puts 'Importing BroadAgeGroups...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'broad_age_groups.csv'), headers: true) do |attrs|
    BroadAgeGroup.create(meshblock_id: attrs['meshblock_id'],
                         census_year_id: attrs['census_year_id'],
                         under_fifteen_years: attrs['under_fifteen_years'],
                         fifteen_to_sixtyfour_year_olds: attrs['fifteen_to_sixtyfour_year_olds'],
                         sixtyfive_years_and_older: attrs['sixtyfive_years_and_older'],
                         total_people: attrs['total_people'])
  end
end

if Children.count == 0
  # Children
  puts 'Importing Children...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'children.csv'), headers: true) do |attrs|
    Children.create(meshblock_id: attrs['meshblock_id'],
                    census_year_id: attrs['census_year_id'],
                    none: attrs['none'],
                    one: attrs['one'],
                    two: attrs['two'],
                    three: attrs['three'],
                    four: attrs['four'],
                    five: attrs['five'],
                    six_or_more: attrs['six_or_more'],
                    object: attrs['object'],
                    not_elsewhere_included: attrs['not_elsewhere_included'],
                    total: attrs['total'],
                    total_stated: attrs['total_stated'])
  end
end

if Descendant.count == 0
  # Descendants
  puts 'Importing Descendants...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'descendants.csv'), headers: true) do |attrs|
    Descendant.create(meshblock_id: attrs['meshblock_id'],
                      census_year_id: attrs['census_year_id'],
                      dont_know: attrs['dont_know'],
                      maori: attrs['maori'],
                      no_maori: attrs['no_maori'],
                      not_elsewhere_included: attrs['not_elsewhere_included'],
                      total: attrs['total'],
                      total_stated: attrs['total_stated'])
  end
end

if Dwelling.count == 0
  # Dwellings
  puts 'Importing Dwellings...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'dwellings.csv'), headers: true) do |attrs|
    Dwelling.create(meshblock_id: attrs['meshblock_id'],
                    census_year_id: attrs['census_year_id'],
                    separate_houses: attrs['separate_houses'],
                    two_or_more_flats: attrs['two_or_more_flats'],
                    not_further_defined: attrs['not_further_defined'],
                    other_types: attrs['other_types'],
                    total: attrs['total'])
  end
end

if EmploymentStatus.count == 0
  # EmploymentStatuses
  puts 'Importing EmploymentStatuses...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'employment_statuses.csv'), headers: true) do |attrs|
    EmploymentStatus.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            employer: attrs['employer'],
                            paid_employee: attrs['paid_employee'],
                            self_employed_without_employee: attrs['self_employed_without_employee'],
                            unpaid_family_worker: attrs['unpaid_family_worker'],
                            not_elsewhere_included: attrs['not_elsewhere_included'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
  end
end


if Ethnicity.count == 0
  # Ethnicities
  puts 'Importing Ethnicities...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'ethnicities.csv'), headers: true) do |attrs|
    Ethnicity.create(meshblock_id: attrs['meshblock_id'],
                     census_year_id: attrs['census_year_id'],
                     asians: attrs['asians'],
                     europeans: attrs['europeans'],
                     maoris: attrs['maoris'],
                     melaas: attrs['melaas'],
                     not_elsewhere_included: attrs['not_elsewhere_included'],
                     pasifikas: attrs['pasifikas'],
                     others: attrs['others'],
                     total_stated: attrs['total_stated'],
                     total: attrs['total'])
  end
end


if Family.count == 0
  # Families
  puts 'Importing Families...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'families.csv'), headers: true) do |attrs|
    Family.create(meshblock_id: attrs['meshblock_id'],
                  census_year_id: attrs['census_year_id'],
                  families: attrs['families'])
  end
end

if FamilyIncomeSource.count == 0
  # FamilyIncomeSources
  puts 'Importing FamilyIncomeSources...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'family_income_sources.csv'), headers: true) do |attrs|
    FamilyIncomeSource.create(meshblock_id: attrs['meshblock_id'],
                              census_year_id: attrs['census_year_id'],
                              domestic_purposes: attrs['domestic_purposes'],
                              interest: attrs['interest'],
                              invalids: attrs['invalids'],
                              nz_super: attrs['nz_super'],
                              other: attrs['other'],
                              other_government_benefits: attrs['other_government_benefits'],
                              other_super: attrs['other_super'],
                              self_employment_or_business: attrs['self_employment_or_business'],
                              sickness: attrs['sickness'],
                              student_allowance: attrs['student_allowance'],
                              unemployment: attrs['unemployment'],
                              wages: attrs['wages'],
                              work_accident_insurer: attrs['work_accident_insurer'],
                              no_source: attrs['no_source'],
                              not_stated: attrs['not_stated'],
                              total: attrs['total'],
                              total_stated: attrs['total_stated'])
  end
end

if FamilyIncome.count == 0
  # FamilyIncomes
  puts 'Importing FamilyIncomes...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'family_incomes.csv'), headers: true) do |attrs|
    FamilyIncome.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        not_stated: attrs['not_stated'],
                        twenty_thousand_or_less: attrs['twenty_thousand_or_less'],
                        twenty_to_thirty_thousand: attrs['twenty_to_thirty_thousand'],
                        thirty_to_fifty_thousand: attrs['thirty_to_fifty_thousand'],
                        fifty_to_seventy_thousand: attrs['fifty_to_seventy_thousand'],
                        seventy_to_one_hundred_thousand: attrs['seventy_to_one_hundred_thousand'],
                        one_hundred_thousand_or_more: attrs['one_hundred_thousand_or_more'],
                        median: attrs['median'],
                        total_stated: attrs['total_stated'],
                        total: attrs['total'])
  end
end



if FamilyType.count == 0
  # Family Types
  puts 'Importing Family Types...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'family_types.csv'), headers: true) do |attrs|
    FamilyType.create(meshblock_id: attrs['meshblock_id'],
                      census_year_id: attrs['census_year_id'],
                      couple_with_children: attrs['couple_with_children'],
                      couple_without_children: attrs['couple_without_children'],
                      one_parent: attrs['one_parent'],
                      total: attrs['total'])
  end
end


if FiveYearAgeGroups.count == 0
  # Five Year Age Group
  puts 'Importing Five Year Age Groups...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'five_year_age_groups.csv'), headers: true) do |attrs|
    FiveYearAgeGroups.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            zero_to_four_year_olds: attrs['zero_to_four_year_olds'],
                            five_to_nine_year_olds: attrs['five_to_nine_year_olds'],
                            ten_to_fourteen_year_olds: attrs['ten_to_fourteen_year_olds'],
                            fifteen_to_nineteen_year_olds: attrs['fifteen_to_nineteen_year_olds'],
                            twenty_to_twenty_four_year_olds: attrs['twenty_to_twenty_four_year_olds'],
                            twenty_five_to_twenty_nine_year_olds: attrs['twenty_five_to_twenty_nine_year_olds'],
                            thirty_to_thirty_four_year_olds: attrs['thirty_to_thirty_four_year_olds'],
                            thirty_five_to_thirty_nine_year_olds: attrs['thirty_five_to_thirty_nine_year_olds'],
                            forty_to_forty_four_year_olds: attrs['forty_to_forty_four_year_olds'],
                            forty_five_to_forty_nine_year_olds: attrs['forty_five_to_forty_nine_year_olds'],
                            fifty_to_fifty_four_year_olds: attrs['fifty_to_fifty_four_year_olds'],
                            fifty_five_to_fifty_nine_year_olds: attrs['fifty_five_to_fifty_nine_year_olds'],
                            sixty_to_sixty_four_year_olds: attrs['sixty_to_sixty_four_year_olds'],
                            sixty_five_years_and_older: attrs['sixty_five_years_and_older'],
                            median: attrs['median'],
                            total: attrs['total'])
  end
end

if FiveYearAgoResidence.count == 0
  # FiveYearAgoResidence
  puts 'Importing FiveYearAgoResidence...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'five_year_ago_residences.csv'), headers: true) do |attrs|
    FiveYearAgoResidence.create(meshblock_id: attrs['meshblock_id'],
                                census_year_id: attrs['census_year_id'],
                                not_elsewhere_included: attrs['not_elsewhere_included'],
                                no_abode: attrs['no_abode'],
                                not_born: attrs['not_born'],
                                not_elsewhere_included: attrs['not_elsewhere_included'],
                                overseas: attrs['overseas'],
                                same: attrs['same'],
                                total: attrs['total'],
                                total_stated: attrs['total_stated'])
  end
end

if HouseholdComposition.count == 0
  # HouseholdCompositions
  puts 'Importing HouseholdCompositions...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'household_compositions.csv'), headers: true) do |attrs|
    HouseholdComposition.create(meshblock_id: attrs['meshblock_id'],
                                census_year_id: attrs['census_year_id'],
                                one_person: attrs['one_person'],
                                one_family: attrs['one_family'],
                                two_family: attrs['two_family'],
                                three_family: attrs['three_family'],
                                other_multi: attrs['other_multi'],
                                total: attrs['total'],
                                total_stated: attrs['total_stated'],
                                unidentifiable: attrs['unidentifiable'])
  end
end

if HouseholdIncomeSource.count == 0
  # Household Income Sources
  puts 'Importing Household Income Sources...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'household_income_sources.csv'), headers: true) do |attrs|
    HouseholdIncomeSource.create(meshblock_id: attrs['meshblock_id'],
                                 census_year_id: attrs['census_year_id'],
                                 domestic_purposes: attrs['domestic_purposes'],
                                 interest: attrs['interest'],
                                 invalids: attrs['invalids'],
                                 no_source: attrs['no_source'],
                                 not_stated: attrs['not_stated'],
                                 nz_super: attrs['nz_super'],
                                 other: attrs['other'],
                                 other_government_benefits: attrs['other_government_benefits'],
                                 other_super: attrs['other_super'],
                                 self_employment_or_business: attrs['self_employment_or_business'],
                                 sickness: attrs['sickness'],
                                 student_allowance: attrs['student_allowance'],
                                 total: attrs['total'],
                                 total_households_stated: attrs['total_households_stated'],
                                 unemployment: attrs['unemployment'],
                                 wages: attrs['wages'],
                                 work_accident_insurer: attrs['work_accident_insurer'])
  end
end

if HouseholdIncomes.count == 0
  # Household Incomes
  puts 'Importing Household Incomes...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'household_incomes.csv'), headers: true) do |attrs|
    HouseholdIncomes.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            twenty_thousand_or_less: attrs['twenty_thousand_or_less'],
                            twenty_to_thirty_thousand: attrs['twenty_to_thirty_thousand'],
                            thirty_to_fifty_thousand: attrs['thirty_to_fifty_thousand'],
                            fifty_to_seventy_thousand: attrs['fifty_to_seventy_thousand'],
                            seventy_to_one_hundred_thousand: attrs['seventy_to_one_hundred_thousand'],
                            one_hundred_thousand_or_more: attrs['one_hundred_thousand_or_more'],
                            not_stated: attrs['not_stated'],
                            median: attrs['median'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
  end
end

if HouseholdTenure.count == 0
  # HouseholdTenure
  puts 'Importing HouseholdTenure...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'household_tenures.csv'), headers: true) do |attrs|
    HouseholdTenure.create(meshblock_id: attrs['meshblock_id'],
                           census_year_id: attrs['census_year_id'],
                           family_trust: attrs['family_trust'],
                           not_owned: attrs['not_owned'],
                           owned: attrs['owned'],
                           not_elsewhere_included: attrs['not_elsewhere_included'],
                           total: attrs['total'],
                           total_stated: attrs['total_stated'])
  end
end

if Households.count == 0
  # Households
  puts 'Importing Households...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'households.csv'), headers: true) do |attrs|
    Households.create(meshblock_id: attrs['meshblock_id'],
                      census_year_id: attrs['census_year_id'],
                      households: attrs['households'])
  end
end


if IncomeSource.count == 0
  # Income Source
  puts 'Importing Income Source...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'income_sources.csv'), headers: true) do |attrs|
    IncomeSource.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        accident_insurer: attrs['accident_insurer'],
                        dividends: attrs['dividends'],
                        domestic_purposes_benefit: attrs['domestic_purposes_benefit'],
                        invalids_benefit: attrs['invalids_benefit'],
                        no_source: attrs['no_source'],
                        not_stated: attrs['not_stated'],
                        other_government_benefits: attrs['other_government_benefits'],
                        other_sources: attrs['other_sources'],
                        other_super: attrs['other_super'],
                        self_employed: attrs['self_employed'],
                        sickness_benefit: attrs['sickness_benefit'],
                        student_allowance: attrs['student_allowance'],
                        super_annuation: attrs['super_annuation'],
                        unemployment_benefit: attrs['unemployment_benefit'],
                        wages: attrs['wages'],
                        total: attrs['total'],
                        total_stated: attrs['total_stated'])
  end
end

if LabourStatus.count == 0
  # Labour Status
  puts 'Importing Labour Status...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'labour_statuses.csv'), headers: true) do |attrs|
    LabourStatus.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        full_time: attrs['full_time'],
                        part_time: attrs['part_time'],
                        unemployed: attrs['unemployed'],
                        not_in_the_labour_force: attrs['not_in_the_labour_force'],
                        status_unidentifiable: attrs['status_unidentifiable'],
                        total: attrs['total'],
                        total_stated: attrs['total_stated'])
  end
end

if LandlordSector.count == 0
  # Landlord Sectors
  puts 'Importing Landlord Sectors...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'landlord_sectors.csv'), headers: true) do |attrs|
    LandlordSector.create(meshblock_id: attrs['meshblock_id'],
                          census_year_id: attrs['census_year_id'],
                          housing_new_zealand: attrs['housing_new_zealand'],
                          local_authority_or_city_council: attrs['local_authority_or_city_council'],
                          private_person_trust_or_business: attrs['private_person_trust_or_business'],
                          stated_owned: attrs['stated_owned'],
                          not_elsewhere_included: attrs['not_elsewhere_included'],
                          total: attrs['total'],
                          total_stated: attrs['total_stated'])
  end
end
if Language.count == 0
  # Languages
  puts 'Importing Languages...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'languages.csv'), headers: true) do |attrs|
    Language.create(meshblock_id: attrs['meshblock_id'],
                    census_year_id: attrs['census_year_id'],
                    english: attrs['english'],
                    maori: attrs['maori'],
                    samoan: attrs['samoan'],
                    sign: attrs['sign'],
                    too_young: attrs['too_young'],
                    not_elsewhere_included: attrs['not_elsewhere_included'],
                    other: attrs['other'],
                    total: attrs['total'],
                    total_stated: attrs['total_stated'])
  end
end

if MotorVehicle.count == 0
  # Motor Vehicles
  puts 'Importing Motor Vehicles...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'motor_vehicles.csv'), headers: true) do |attrs|
    MotorVehicle.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        one: attrs['one'],
                        two: attrs['two'],
                        three_or_more: attrs['three_or_more'],
                        none: attrs['none'],
                        not_elsewhere_included: attrs['not_elsewhere_included'],
                        total: attrs['total'])
  end
end

if NightPopulation.count == 0
  # Night Populations
  puts 'Importing Night Populations...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'night_populations.csv'), headers: true) do |attrs|
    NightPopulation.create(meshblock_id: attrs['meshblock_id'],
                           census_year_id: attrs['census_year_id'],
                           residents: attrs['residents'])
  end
end

if NzscOccupation.count == 0
  # NzscOccupations
  puts 'Importing NzscOccupation...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'nzsc_occupations.csv'), headers: true) do |attrs|
    NzscOccupation.create(meshblock_id: attrs['meshblock_id'],
                          census_year_id: attrs['census_year_id'],
                          agriculture_and_fishery_workers: attrs['agriculture_and_fishery_workers'],
                          clerks: attrs['clerks'],
                          elementary_occupations: attrs['elementary_occupations'],
                          legislators_admins_and_managers: attrs['legislators_admins_and_managers'],
                          plant_and_machine_operators: attrs['plant_and_machine_operators'],
                          professionals: attrs['professionals'],
                          service_and_sales_workers: attrs['service_and_sales_workers'],
                          technicians_and_associate_professionals: attrs['technicians_and_associate_professionals'],
                          total: attrs['total'],
                          trades_workers: attrs['trades_workers'])
  end
end
if NzscWorkplaceOccupation.count == 0
  # NzscWorkplaceOccupations
  puts 'Importing NzscWorkplaceOccupations...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'nzsc_workplace_occupations.csv'), headers: true) do |attrs|
    NzscWorkplaceOccupation.create(meshblock_id: attrs['meshblock_id'],
                                   census_year_id: attrs['census_year_id'],
                                   agriculture_and_fishery_workers: attrs['agriculture_and_fishery_workers'],
                                   clerks: attrs['clerks'],
                                   elementary_occupations: attrs['elementary_occupations'],
                                   legislators_admins_and_managers: attrs['legislators_admins_and_managers'],
                                   plant_and_machine_operators: attrs['plant_and_machine_operators'],
                                   professionals: attrs['professionals'],
                                   service_and_sales_workers: attrs['service_and_sales_workers'],
                                   technicians_and_associate_professionals: attrs['technicians_and_associate_professionals'],
                                   total: attrs['total'],
                                   trades_workers: attrs['trades_workers'])
  end
end

if Partnership.count == 0
  # Partnerships
  puts 'Importing Partnerships...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'partnerships.csv'), headers: true) do |attrs|
    Partnership.create(meshblock_id: attrs['meshblock_id'],
                       census_year_id: attrs['census_year_id'],
                       non_partnered: attrs['non_partnered'],
                       not_stated: attrs['not_stated'],
                       partnered: attrs['partnered'],
                       total: attrs['total'],
                       total_stated: attrs['total_stated'])
  end
end
if PersonalIncome.count == 0
  # Personal Incomes
  puts 'Importing Personal Incomes...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'personal_incomes.csv'), headers: true) do |attrs|
    PersonalIncome.create(meshblock_id: attrs['meshblock_id'],
                          census_year_id: attrs['census_year_id'],
                          five_thousand_or_less: attrs['five_thousand_or_less'],
                          five_to_ten_thousand: attrs['five_to_ten_thousand'],
                          ten_to_twenty_thousand: attrs['ten_to_twenty_thousand'],
                          twenty_to_thirty_thousand: attrs['twenty_to_thirty_thousand'],
                          thirty_to_fifty_thousand: attrs['thirty_to_fifty_thousand'],
                          fifty_thousand_or_more: attrs['fifty_thousand_or_more'],
                          median: attrs['median'],
                          not_stated: attrs['not_stated'],
                          total: attrs['total'],
                          total_stated: attrs['total_stated'])
  end
end

if Qualification.count == 0
  # Qualifications
  puts 'Importing Qualifications...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'qualifications.csv'), headers: true) do |attrs|
    Qualification.create(meshblock_id: attrs['meshblock_id'],
                         census_year_id: attrs['census_year_id'],
                         doctortates: attrs['doctortates'],
                         level_five_or_six: attrs['level_five_or_six'],
                         level_four: attrs['level_four'],
                         level_one: attrs['level_one'],
                         level_seven: attrs['level_seven'],
                         level_three: attrs['level_three'],
                         level_two: attrs['level_two'],
                         masters: attrs['masters'],
                         no_qualification: attrs['no_qualification'],
                         not_elsewhere_included: attrs['not_elsewhere_included'],
                         overseas_secondary: attrs['overseas_secondary'],
                         postgraduate: attrs['postgraduate'],
                         total: attrs['total'],
                         total_stated: attrs['total_stated'])
  end
end

if Relationship.count == 0
  # Relationships
  puts 'Importing Relationships...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'relationships.csv'), headers: true) do |attrs|
    Relationship.create(meshblock_id: attrs['meshblock_id'],
                        census_year_id: attrs['census_year_id'],
                        married: attrs['married'],
                        never_married: attrs['never_married'],
                        not_elsewhere_included: attrs['not_elsewhere_included'],
                        separated: attrs['separated'],
                        total: attrs['total'],
                        total_stated: attrs['total_stated'])
  end
end

if Religion.count == 0
  # Religions
  puts 'Importing Religions...'
  CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'religions.csv'), headers: true) do |attrs|
    Religion.create(meshblock_id: attrs['meshblock_id'],
                    census_year_id: attrs['census_year_id'],
                    buddhist: attrs['buddhist'],
                    christian: attrs['christian'],
                    hindu: attrs['hindu'],
                    jewish: attrs['jewish'],
                    maori_christian: attrs['maori_christian'],
                    muslim: attrs['muslim'],
                    spiritual: attrs['spiritual'],
                    other: attrs['other'],
                    no_religion: attrs['no_religion'],
                    object: attrs['object'],
                    not_elsewhere_included: attrs['not_elsewhere_included'],
                    total: attrs['total'],
                    total_stated: attrs['total_stated'])
  end
end

# Residence Years
puts 'Importing Residence Years...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'residence_years.csv'), headers: true) do |attrs|
  ResidenceYear.create(meshblock_id: attrs['meshblock_id'],
                       census_year_id: attrs['census_year_id'],
                       thirty_years_or_more: attrs['thirty_years_or_more'],
                       fifteen_to_twenty_nine_years: attrs['fifteen_to_twenty_nine_years'],
                       five_to_nine_years: attrs['five_to_nine_years'],
                       not_elsewhere_included: attrs['not_elsewhere_included'],
                       one_to_four_years: attrs['one_to_four_years'],
                       ten_to_fourteen_years: attrs['ten_to_fourteen_years'],
                       total: attrs['total'],
                       total_people: attrs['total_people'],
                       zero_years: attrs['zero_years'])
end


# Sexes
puts 'Importing Sexes...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'sexes.csv'), headers: true) do |attrs|
  Sex.create(meshblock_id: attrs['meshblock_id'],
             census_year_id: attrs['census_year_id'],
             females: attrs['females'],
             males: attrs['males'],
             total: attrs['total'])
end


# Smokers
puts 'Importing Smokers...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'smokers.csv'), headers: true) do |attrs|
  Smoker.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            ex: attrs['ex'],
                            never: attrs['never'],
                            not_elsewhere_included: attrs['not_elsewhere_included'],
                            regular: attrs['regular'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
end


# Study Participation
puts 'Importing Study Participation...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'study_participations.csv'), headers: true) do |attrs|
  StudyParticipation.create(meshblock_id: attrs['meshblock_id'],
                            census_year_id: attrs['census_year_id'],
                            full_and_part_time: attrs['full_and_part_time'],
                            full_time: attrs['full_time'],
                            not_stated: attrs['not_stated'],
                            not_studying: attrs['not_studying'],
                            part_time: attrs['part_time'],
                            total: attrs['total'],
                            total_stated: attrs['total_stated'])
end


# Telecommunications
puts 'Importing Telecommunications...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'telecommunications.csv'), headers: true) do |attrs|
  Telecommunication.create(meshblock_id: attrs['meshblock_id'],
                           census_year_id: attrs['census_year_id'],
                           fax: attrs['fax'],
                           internet: attrs['internet'],
                           mobile: attrs['mobile'],
                           no_access: attrs['no_access'],
                           not_elsewhere_included: attrs['not_elsewhere_included'],
                           telephone: attrs['telephone'],
                           total: attrs['total'],
                           total_stated: attrs['total_stated'])
end


# Tenures
puts 'Importing Tenure...'
CSV.foreach(Rails.root.join('db', 'seeds', 'census_data', 'tenures.csv'), headers: true) do |attrs|
  Tenure.create(meshblock_id: attrs['meshblock_id'],
                census_year_id: attrs['census_year_id'],
                do_not_own: attrs['do_not_own'],
                not_elsewhere_included: attrs['not_elsewhere_included'],
                own_or_partly_own: attrs['own_or_partly_own'],
                total_people: attrs['total_people'],
                total_stated: attrs['total_stated'])
end


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

