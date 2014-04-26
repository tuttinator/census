# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household_composition do
    meshblock_id 1
    census_year_id 1
    one_person 1
    one_family 1
    two_family 1
    three_family 1
    other_multi 1
    total 1
    total_stated 1
    unidentifiable 1
  end
end
