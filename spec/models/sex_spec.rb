# == Schema Information
#
# Table name: sexes
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  females        :integer
#  males          :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Sex do
  pending "add some examples to (or delete) #{__FILE__}"
end
