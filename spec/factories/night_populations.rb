# == Schema Information
#
# Table name: night_populations
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  residents      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :night_population do
    meshblock_id 1
    census_year_id 1
    residents "MyString"
  end
end
