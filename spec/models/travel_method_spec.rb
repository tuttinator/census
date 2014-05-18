# == Schema Information
#
# Table name: travel_methods
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

require 'spec_helper'

describe TravelMethod do
  pending "add some examples to (or delete) #{__FILE__}"
end
