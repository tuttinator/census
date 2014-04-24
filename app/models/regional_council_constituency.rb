# == Schema Information
#
# Table name: regional_council_constituencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RegionalCouncilConstituency < ActiveRecord::Base
  validates_presence_of :name
end
