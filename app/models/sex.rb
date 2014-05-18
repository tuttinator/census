# == Schema Information
#
# Table name: sexes
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  females        :integer
#  males          :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Sex < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
