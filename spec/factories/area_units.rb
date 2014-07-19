# == Schema Information
#
# Table name: area_units
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :area_unit do
    name Faker::Address.city
  end
end
