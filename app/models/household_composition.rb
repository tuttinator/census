# == Schema Information
#
# Table name: household_compositions
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  one_person     :integer
#  one_family     :integer
#  two_family     :integer
#  three_family   :integer
#  other_multi    :integer
#  total          :integer
#  total_stated   :integer
#  unidentifiable :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class HouseholdComposition < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
