# == Schema Information
#
# Table name: community_boards
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class CommunityBoard < ActiveRecord::Base
end
