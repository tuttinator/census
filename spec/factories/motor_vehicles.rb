# == Schema Information
#
# Table name: motor_vehicles
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  one                    :integer
#  two                    :integer
#  three_or_more          :integer
#  none                   :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :motor_vehicle do
    meshblock_id 1
    census_year_id 1
    one 1
    two 1
    three_or_more 1
    none 1
    not_elsewhere_included 1
    total 1
  end
end
