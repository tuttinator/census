# == Schema Information
#
# Table name: sexes
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  females        :integer
#  males          :integer
#  total          :integer
#  created_at     :datetime
#  updated_at     :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sex do
    meshblock_id 1
    census_year_id 1
    females 1
    males 1
    total 1
  end
end
