# == Schema Information
#
# Table name: smokers
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  ex                     :integer
#  never                  :integer
#  not_elsewhere_included :integer
#  regular                :integer
#  total                  :integer
#  total_stated           :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :smoker do
    meshblock_id 1
    census_year_id 1
    ex 1
    never 1
    not_elsewhere_included 1
    regular 1
    total 1
    total_stated "MyString"
  end
end
