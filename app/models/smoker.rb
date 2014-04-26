# == Schema Information
#
# Table name: smokers
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  ex                     :integer
#  never                  :integer
#  not_elsewhere_included :integer
#  regular                :integer
#  total                  :integer
#  total_stated           :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class Smoker < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
