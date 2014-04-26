# == Schema Information
#
# Table name: arrival_years
#
#  id                          :integer          not null, primary key
#  meshblock_id                :integer
#  census_year_id              :integer
#  zero_to_nine_years          :integer
#  ten_to_nineteen_years       :integer
#  twenty_to_twenty_nine_years :integer
#  thirty_to_thirty_nine_years :integer
#  forty_to_forty_nine_years   :integer
#  fifty_years_or_more         :integer
#  not_elsewhere_included      :integer
#  total                       :integer
#  total_stated                :integer
#  created_at                  :datetime
#  updated_at                  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :arrival_year do
    meshblock_id 1
    census_year_id 1
    zero_to_nine_years 1
    ten_to_nineteen_years 1
    twenty_to_twenty_nine_years 1
    thirty_to_thirty_nine_years 1
    forty_to_forty_nine_years 1
    fifty_years_or_more 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
