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

require 'spec_helper'

describe UnpaidActivity do
  pending "add some examples to (or delete) #{__FILE__}"
end
