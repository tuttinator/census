# == Schema Information
#
# Table name: residence_years
#
#  id                           :integer          not null, primary key
#  meshblock_id                 :integer
#  census_year_id               :integer
#  thirty_years_or_more         :integer
#  fifteen_to_twenty_nine_years :integer
#  five_to_nine_years           :integer
#  not_elsewhere_included       :integer
#  one_to_four_years            :integer
#  ten_to_fourteen_years        :integer
#  total                        :integer
#  total_people                 :integer
#  zero_years                   :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#

class ResidenceYear < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
