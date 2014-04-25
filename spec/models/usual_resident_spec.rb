# == Schema Information
#
# Table name: usual_residents
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  one            :integer
#  two            :integer
#  three          :integer
#  four           :integer
#  five           :integer
#  six            :integer
#  seven          :integer
#  eight          :integer
#  mean           :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe UsualResident do
  pending "add some examples to (or delete) #{__FILE__}"
end
