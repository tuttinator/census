# == Schema Information
#
# Table name: usual_residents
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  one            :integer
#  two            :integer
#  three          :integer
#  four           :integer
#  five           :integer
#  six            :integer
#  seven          :integer
#  eight          :integer
#  mean           :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usual_resident do
    meshblock_id 1
    census_year_id 1
    one 1
    two 1
    three 1
    four 1
    five 1
    six 1
    seven 1
    eight 1
    mean 1
    total 1
  end
end
