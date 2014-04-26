# == Schema Information
#
# Table name: family_types
#
#  id                      :integer          not null, primary key
#  meshblock_id            :integer
#  census_year_id          :integer
#  couple_with_children    :integer
#  couple_without_children :integer
#  one_parent              :integer
#  total                   :integer
#  created_at              :datetime
#  updated_at              :datetime
#

class FamilyType < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
