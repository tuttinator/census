# == Schema Information
#
# Table name: work_statuses
#
#  id                      :integer          not null, primary key
#  meshblock_id            :integer
#  census_year_id          :integer
#  full_time               :integer
#  not_in_the_labour_force :integer
#  part_time               :integer
#  status_unidentifiable   :integer
#  total                   :integer
#  total_stated            :integer
#  unemployed              :integer
#  created_at              :datetime
#  updated_at              :datetime
#

require 'spec_helper'

describe WorkStatus do
  pending "add some examples to (or delete) #{__FILE__}"
end
