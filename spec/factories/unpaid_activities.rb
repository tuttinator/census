# == Schema Information
#
# Table name: unpaid_activities
#
#  id                                                           :integer          not null, primary key
#  meshblock_id                                                 :integer
#  census_year_id                                               :integer
#  household                                                    :integer
#  looking_after_child_not_own_household                        :integer
#  looking_after_child_own_household                            :integer
#  looking_after_not_own_household_member_who_is_ill_or_disable :integer
#  looking_after_own_household_member_who_is_ill_or_disabled    :integer
#  none                                                         :integer
#  not_elsewhere_included                                       :integer
#  voluntary                                                    :integer
#  total                                                        :integer
#  total_stated                                                 :integer
#  created_at                                                   :datetime
#  updated_at                                                   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :unpaid_activity do
    meshblock_id 1
    census_year_id 1
    household 1
    looking_after_child_not_own_household 1
    looking_after_child_own_household 1
    looking_after_not_own_household_member_who_is_ill_or_disable 1
    looking_after_own_household_member_who_is_ill_or_disabled 1
    none 1
    not_elsewhere_included 1
    voluntary 1
    total 1
    total_stated 1
  end
end
