# == Schema Information
#
# Table name: languages
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  english                :integer
#  maori                  :integer
#  samoan                 :integer
#  sign                   :integer
#  too_young              :integer
#  not_elsewhere_included :integer
#  other                  :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :language do
    meshblock_id 1
    census_year_id 1
    english 1
    maori 1
    samoan 1
    sign 1
    too_young 1
    not_elsewhere_included 1
    other 1
    total 1
    total_stated 1
  end
end
