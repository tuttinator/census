# == Schema Information
#
# Table name: night_populations
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  residents      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe NightPopulation do
  pending "add some examples to (or delete) #{__FILE__}"
end
