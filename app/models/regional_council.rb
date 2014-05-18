# == Schema Information
#
# Table name: regional_councils
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RegionalCouncil < ActiveRecord::Base
  validates_presence_of :name
end
