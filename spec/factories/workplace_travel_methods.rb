# == Schema Information
#
# Table name: workplace_travel_methods
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  bicycle                :integer
#  drove_company_car      :integer
#  drove_private_car      :integer
#  motor_cycle            :integer
#  passenger              :integer
#  public_bus             :integer
#  train                  :integer
#  walked_or_jogged       :integer
#  at_home                :integer
#  did_not_go             :integer
#  other                  :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :workplace_travel_method do
    meshblock_id 1
    census_year_id 1
    bicycle 1
    drove_company_car 1
    drove_private_car 1
    motor_cycle 1
    passenger 1
    public_bus 1
    train 1
    walked_or_jogged 1
    at_home 1
    did_not_go 1
    other 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
