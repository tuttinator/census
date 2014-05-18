# == Schema Information
#
# Table name: dwellings
#
#  id                  :integer          not null, primary key
#  meshblock_id        :integer
#  census_year_id      :integer
#  separate_houses     :integer
#  two_or_more_flats   :integer
#  not_further_defined :integer
#  other_types         :integer
#  total               :integer
#  created_at          :datetime
#  updated_at          :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dwelling do
    meshblock_id 1
    census_year_id 1
    separate_houses 1
    two_or_more_flats 1
    not_further_defined 1
    other_types 1
    total 1
  end
end
