# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :birthplace do
    meshblock_id 1
    census_year_id 1
    new_zealand 1
    overseas 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
