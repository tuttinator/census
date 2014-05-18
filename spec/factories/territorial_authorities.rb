# == Schema Information
#
# Table name: territorial_authorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :territorial_authority do
    name "MyString"
  end
end
