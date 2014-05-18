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
#  total_stated       :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class StudyParticipation < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
