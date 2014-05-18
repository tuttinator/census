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

require 'spec_helper'

describe ArrivalYear do
  pending "add some examples to (or delete) #{__FILE__}"
end
