# == Schema Information
#
# Table name: regional_council_maori_constituencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :regional_council_maori_constituency do
    name Faker::Address.city
  end
end
