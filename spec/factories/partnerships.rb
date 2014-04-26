# == Schema Information
#
# Table name: partnerships
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  non_partnered  :integer
#  not_stated     :integer
#  partnered      :integer
#  total          :integer
#  total_stated   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :partnership do
    meshblock_id 1
    census_year_id 1
    non_partnered 1
    not_stated 1
    partnered 1
    total 1
    total_stated 1
  end
end
