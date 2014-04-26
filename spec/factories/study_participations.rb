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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :study_participation do
    meshblock_id 1
    census_year_id 1
    full_and_part_time 1
    full_time 1
    not_stated 1
    not_studying 1
    part_time 1
    total 1
    total_stated "MyString"
  end
end
