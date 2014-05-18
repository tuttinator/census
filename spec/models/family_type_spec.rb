# == Schema Information
#
# Table name: family_types
#
#  id                      :integer          not null, primary key
#  meshblock_id            :integer
#  census_year_id          :integer
#  couple_with_children    :integer
#  couple_without_children :integer
#  one_parent              :integer
#  total                   :integer
#  created_at              :datetime
#  updated_at              :datetime
#

require 'spec_helper'

describe FamilyType do
  pending "add some examples to (or delete) #{__FILE__}"
end
