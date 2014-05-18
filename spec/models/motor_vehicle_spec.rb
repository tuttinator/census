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

require 'spec_helper'

describe MotorVehicle do
  pending "add some examples to (or delete) #{__FILE__}"
end
