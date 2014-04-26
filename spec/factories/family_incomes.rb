# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family_income do
    meshblock_id 1
    census_year_id 1
    not_stated 1
    twenty_thousand_or_less 1
    twenty_to_thirty_thousand 1
    thirty_to_fifty_thousand 1
    fifty_to_seventy_thousand 1
    seventy_to_one_hundred_thousand 1
    one_hundred_thousand_or_more 1
    median 1
    total_stated 1
    total 1
  end
end
