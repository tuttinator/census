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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :residence_year do
    meshblock_id 1
    census_year_id 1
    thirty_years_or_more 1
    fifteen_to_twenty_nine_years 1
    five_to_nine_years 1
    not_elsewhere_included 1
    one_to_four_years 1
    ten_to_fourteen_years 1
    total 1
    total_people 1
    zero_years 1
  end
end
