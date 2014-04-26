# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :language do
    meshblock_id 1
    census_year_id 1
    english 1
    maori 1
    samoan 1
    sign 1
    too_young 1
    not_elsewhere_included 1
    other 1
    total 1
    total_stated 1
  end
end
