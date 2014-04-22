# == Schema Information
#
# Table name: land_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class LandType < ActiveRecord::Base
end
