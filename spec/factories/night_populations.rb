# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :night_population do
    meshblock_id 1
    census_year_id 1
    residents "MyString"
  end
end
