# == Schema Information
#
# Table name: broad_age_groups
#
#  id                             :integer          not null, primary key
#  meshblock_id                   :integer
#  census_year_id                 :integer
#  under_fifteen_years            :integer
#  fifteen_to_sixtyfour_year_olds :integer
#  sixtyfive_years_and_older      :integer
#  total_people                   :integer
#  created_at                     :datetime
#  updated_at                     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :broad_age_group do
    meshblock_id 1
    census_year_id 1
    under_fifteen_years 1
    fifteen_to_sixtyfour_year_olds 1
    sixtyfive_years_and_older 1
    total_people 1
  end
end
