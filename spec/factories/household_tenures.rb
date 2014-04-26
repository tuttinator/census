# == Schema Information
#
# Table name: household_tenures
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  family_trust           :integer
#  not_owned              :integer
#  owned                  :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household_tenure do
    meshblock_id 1
    census_year_id 1
    family_trust 1
    not_owned 1
    owned 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
