# == Schema Information
#
# Table name: area_units
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class AreaUnit < ActiveRecord::Base
  validates_presence_of :name
end
