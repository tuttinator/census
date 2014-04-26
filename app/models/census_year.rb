# == Schema Information
#
# Table name: census_years
#
#  id         :integer          not null, primary key
#  year       :integer
#  created_at :datetime
#  updated_at :datetime
#

class CensusYear < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
