# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household_tenure do
    meshblock_id 1
    census_year_id 1
    family_trust 1
    not_owned 1
    owned 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
