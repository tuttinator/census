# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employment_status do
    meshblock_id 1
    census_year_id 1
    employer 1
    paid_employee 1
    self_employed_without_employee 1
    unpaid_family_worker 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
