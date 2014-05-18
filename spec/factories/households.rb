# == Schema Information
#
# Table name: households
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  households     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household, :class => 'Households' do
    meshblock_id 1
    census_year_id 1
    households 1
  end
end
