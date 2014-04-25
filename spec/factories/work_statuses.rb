# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_status do
    meshblock_id 1
    census_year_id 1
    full_time 1
    not_in_the_labour_force 1
    part_time 1
    status_unidentifiable 1
    total 1
    total_stated 1
    unemployed 1
  end
end
