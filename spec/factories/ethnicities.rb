# == Schema Information
#
# Table name: ethnicities
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  asians                 :integer
#  europeans              :integer
#  maoris                 :integer
#  melaas                 :integer
#  not_elsewhere_included :integer
#  pasifikas              :integer
#  others                 :integer
#  total_stated           :integer
#  total                  :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ethnicity do
    meshblock_id 1
    census_year_id 1
    asians 1
    europeans 1
    maoris 1
    melaas 1
    not_elsewhere_included 1
    pasifikas 1
    others 1
    total_stated 1
    total 1
  end
end
