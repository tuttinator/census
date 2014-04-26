# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nzsc_workplace_occupation do
    meshblock_id 1
    census_year_id 1
    agriculture_and_fishery_workers 1
    clerks 1
    elementary_occupations 1
    legislators_admins_and_managers 1
    plant_and_machine_operators 1
    professionals 1
    service_and_sales_workers 1
    technicians_and_associate_professionals 1
    total 1
    trades_workers 1
  end
end
