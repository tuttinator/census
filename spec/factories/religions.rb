# == Schema Information
#
# Table name: religions
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  buddhist               :integer
#  christian              :integer
#  hindu                  :integer
#  jewish                 :integer
#  maori_christian        :integer
#  muslim                 :integer
#  spiritual              :integer
#  other                  :integer
#  no_religion            :integer
#  object                 :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :religion do
    meshblock_id 1
    census_year_id 1
    buddhist 1
    christian 1
    hindu 1
    jewish 1
    maori_christian 1
    muslim 1
    spiritual 1
    other 1
    no_religion 1
    object 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
