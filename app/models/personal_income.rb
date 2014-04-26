# == Schema Information
#
# Table name: personal_incomes
#
#  id                        :integer          not null, primary key
#  meshblock_id              :integer
#  census_year_id            :integer
#  five_thousand_or_less     :integer
#  five_to_ten_thousand      :integer
#  ten_to_twenty_thousand    :integer
#  twenty_to_thirty_thousand :integer
#  thirty_to_fifty_thousand  :integer
#  fifty_thousand_or_more    :integer
#  median                    :integer
#  not_stated                :integer
#  total                     :integer
#  total_stated              :integer
#  created_at                :datetime
#  updated_at                :datetime
#

class PersonalIncome < ActiveRecord::Base
end
