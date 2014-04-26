# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :broad_age_group do
    meshblock_id 1
    census_year_id 1
    under_fifteen_years 1
    fifteen_to_sixtyfour_year_olds 1
    sixtyfive_years_and_older 1
    total_people 1
  end
end
