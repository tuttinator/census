# == Schema Information
#
# Table name: five_year_ago_residences
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  not_elsewhere_included :integer
#  no_abode               :integer
#  not_born               :integer
#  overseas               :integer
#  same                   :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe FiveYearAgoResidence do
  pending "add some examples to (or delete) #{__FILE__}"
end
