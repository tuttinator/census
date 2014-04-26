# == Schema Information
#
# Table name: families
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  families       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :family do
    meshblock_id 1
    census_year_id 1
    families 1
  end
end
