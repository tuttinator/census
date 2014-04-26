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

require 'spec_helper'

describe ResidenceYear do
  pending "add some examples to (or delete) #{__FILE__}"
end
