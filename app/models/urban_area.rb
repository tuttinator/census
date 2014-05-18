# == Schema Information
#
# Table name: urban_areas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class UrbanArea < ActiveRecord::Base
  validates_presence_of :name
end
