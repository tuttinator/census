# == Schema Information
#
# Table name: urban_areas
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :urban_area do
    name Faker::Address.city
  end
end
