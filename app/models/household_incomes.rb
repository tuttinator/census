# == Schema Information
#
# Table name: household_incomes
#
#  id                              :integer          not null, primary key
#  meshblock_id                    :integer
#  census_year_id                  :integer
#  twenty_thousand_or_less         :integer
#  twenty_to_thirty_thousand       :integer
#  thirty_to_fifty_thousand        :integer
#  fifty_to_seventy_thousand       :integer
#  seventy_to_one_hundred_thousand :integer
#  one_hundred_thousand_or_more    :integer
#  not_stated                      :integer
#  median                          :integer
#  total                           :integer
#  total_stated                    :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#

class HouseholdIncomes < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
