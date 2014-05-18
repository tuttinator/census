# == Schema Information
#
# Table name: dwellings
#
#  id                  :integer          not null, primary key
#  meshblock_id        :integer
#  census_year_id      :integer
#  separate_houses     :integer
#  two_or_more_flats   :integer
#  not_further_defined :integer
#  other_types         :integer
#  total               :integer
#  created_at          :datetime
#  updated_at          :datetime
#

class Dwelling < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
