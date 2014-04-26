# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :personal_income do
    meshblock_id 1
    census_year_id 1
    five_thousand_or_less 1
    five_to_ten_thousand 1
    ten_to_twenty_thousand 1
    twenty_to_thirty_thousand 1
    thirty_to_fifty_thousand 1
    fifty_thousand_or_more 1
    median 1
    not_stated 1
    total 1
    total_stated 1
  end
end
