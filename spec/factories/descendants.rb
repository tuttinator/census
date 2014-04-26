# == Schema Information
#
# Table name: descendants
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  dont_know              :integer
#  maori                  :integer
#  no_maori               :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :descendant do
    meshblock_id 1
    census_year_id 1
    dont_know 1
    maori 1
    no_maori 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
