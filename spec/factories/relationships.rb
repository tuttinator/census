# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relationship do
    meshblock_id 1
    census_year_id 1
    married 1
    never_married 1
    not_elsewhere_included 1
    separated 1
    total 1
    total_stated 1
  end
end
