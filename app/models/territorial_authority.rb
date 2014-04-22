# == Schema Information
#
# Table name: territorial_authorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TerritorialAuthority < ActiveRecord::Base
end
