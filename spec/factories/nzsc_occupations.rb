# == Schema Information
#
# Table name: nzsc_occupations
#
#  id                                      :integer          not null, primary key
#  meshblock_id                            :integer
#  census_year_id                          :integer
#  agriculture_and_fishery_workers         :integer
#  clerks                                  :integer
#  elementary_occupations                  :integer
#  legislators_admins_and_managers         :integer
#  plant_and_machine_operators             :integer
#  professionals                           :integer
#  service_and_sales_workers               :integer
#  technicians_and_associate_professionals :integer
#  total                                   :integer
#  trades_workers                          :integer
#  created_at                              :datetime
#  updated_at                              :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :nzsc_occupation do
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
