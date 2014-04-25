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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weekly_rent do
    meshblock_id 1
    census_year_id 1
    median 1
    not_elsewhere_included 1
    one_fifty_to_one_ninety_nine 1
    one_hundred_to_one_forty_nine 1
    three_fifty_and_over 1
    three_hundred_to_three_forty_nine 1
    total 1
    total_stated 1
    two_fifty_to_two_ninety_nine 1
    two_hundred_to_two_forty_nine 1
    under_one_hundred 1
  end
end
