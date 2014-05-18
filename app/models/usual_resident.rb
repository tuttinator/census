# == Schema Information
#
# Table name: usual_residents
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  one            :integer
#  two            :integer
#  three          :integer
#  four           :integer
#  five           :integer
#  six            :integer
#  seven          :integer
#  eight          :integer
#  mean           :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class UsualResident < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
