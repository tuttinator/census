# == Schema Information
#
# Table name: wards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Ward < ActiveRecord::Base
end
