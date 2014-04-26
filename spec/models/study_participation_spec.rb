# == Schema Information
#
# Table name: study_participations
#
#  id                 :integer          not null, primary key
#  meshblock_id       :integer
#  census_year_id     :integer
#  full_and_part_time :integer
#  full_time          :integer
#  not_stated         :integer
#  not_studying       :integer
#  part_time          :integer
#  total              :integer
#  total_stated       :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

require 'spec_helper'

describe StudyParticipation do
  pending "add some examples to (or delete) #{__FILE__}"
end
