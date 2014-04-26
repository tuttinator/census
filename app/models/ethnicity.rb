# == Schema Information
#
# Table name: ethnicities
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  asians                 :integer
#  europeans              :integer
#  maoris                 :integer
#  melaas                 :integer
#  not_elsewhere_included :integer
#  pasifikas              :integer
#  others                 :integer
#  total_stated           :integer
#  total                  :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Ethnicity < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
