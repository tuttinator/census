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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family_type do
    meshblock_id 1
    census_year_id 1
    couple_with_children 1
    couple_without_children 1
    one_parent 1
    total 1
  end
end
