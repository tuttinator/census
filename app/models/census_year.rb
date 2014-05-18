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
  validates :year, presence: true
end
