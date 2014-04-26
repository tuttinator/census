# == Schema Information
#
# Table name: birthplaces
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  new_zealand            :integer
#  overseas               :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Birthplace < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
