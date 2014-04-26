# == Schema Information
#
# Table name: households
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  households     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Households do
  pending "add some examples to (or delete) #{__FILE__}"
end
