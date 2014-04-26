# == Schema Information
#
# Table name: ethnicities
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  asians                 :integer
#  europeans              :integer
#  maoris                 :integer
#  melaas                 :integer
#  not_elsewhere_included :integer
#  pasifikas              :integer
#  others                 :integer
#  total_stated           :integer
#  total                  :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe Ethnicity do
  pending "add some examples to (or delete) #{__FILE__}"
end
