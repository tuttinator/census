# == Schema Information
#
# Table name: broad_age_groups
#
#  id                             :integer          not null, primary key
#  meshblock_id                   :integer
#  census_year_id                 :integer
#  under_fifteen_years            :integer
#  fifteen_to_sixtyfour_year_olds :integer
#  sixtyfive_years_and_older      :integer
#  total_people                   :integer
#  created_at                     :datetime
#  updated_at                     :datetime
#

class BroadAgeGroup < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
