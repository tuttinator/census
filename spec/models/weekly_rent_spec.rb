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

require 'spec_helper'

describe WeeklyRent do
  pending "add some examples to (or delete) #{__FILE__}"
end
