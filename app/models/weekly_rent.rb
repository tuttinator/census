# == Schema Information
#
# Table name: weekly_rents
#
#  id                                :integer          not null, primary key
#  meshblock_id                      :integer
#  census_year_id                    :integer
#  median                            :integer
#  not_elsewhere_included            :integer
#  one_fifty_to_one_ninety_nine      :integer
#  one_hundred_to_one_forty_nine     :integer
#  three_fifty_and_over              :integer
#  three_hundred_to_three_forty_nine :integer
#  total                             :integer
#  total_stated                      :integer
#  two_fifty_to_two_ninety_nine      :integer
#  two_hundred_to_two_forty_nine     :integer
#  under_one_hundred                 :integer
#  created_at                        :datetime
#  updated_at                        :datetime
#

class WeeklyRent < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
