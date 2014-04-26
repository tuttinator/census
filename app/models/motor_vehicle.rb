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

class MotorVehicle < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
