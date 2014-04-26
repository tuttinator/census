# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :partnership do
    meshblock_id 1
    census_year_id 1
    non_partnered 1
    not_stated 1
    partnered 1
    total 1
    total_stated 1
  end
end
