# == Schema Information
#
# Table name: household_compositions
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  one_person     :integer
#  one_family     :integer
#  two_family     :integer
#  three_family   :integer
#  other_multi    :integer
#  total          :integer
#  total_stated   :integer
#  unidentifiable :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household_composition do
    meshblock_id 1
    census_year_id 1
    one_person 1
    one_family 1
    two_family 1
    three_family 1
    other_multi 1
    total 1
    total_stated 1
    unidentifiable 1
  end
end
