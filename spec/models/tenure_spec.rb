# == Schema Information
#
# Table name: tenures
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  do_not_own             :integer
#  not_elsewhere_included :integer
#  own_or_partly_own      :integer
#  total_people           :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe Tenure do
  pending "add some examples to (or delete) #{__FILE__}"
end
