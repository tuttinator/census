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
  validates_presence_of :name
  has_many :meshblocks

  def as_json(options = {})
    {
      id: id,
      name: name,
      meshblock_ids: meshblock_ids
    }
  end
end
