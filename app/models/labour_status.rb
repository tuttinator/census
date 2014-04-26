# == Schema Information
#
# Table name: labour_statuses
#
#  id                      :integer          not null, primary key
#  meshblock_id            :integer
#  census_year_id          :integer
#  full_time               :integer
#  part_time               :integer
#  unemployed              :integer
#  not_in_the_labour_force :integer
#  status_unidentifiable   :integer
#  total                   :integer
#  total_stated            :integer
#  created_at              :datetime
#  updated_at              :datetime
#

class LabourStatus < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
