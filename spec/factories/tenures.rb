# == Schema Information
#
# Table name: tenures
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  do_not_own             :integer
#  not_elsewhere_included :integer
#  own_or_partly_own      :integer
#  total_people           :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tenure do
    meshblock_id 1
    census_year_id 1
    do_not_own 1
    not_elsewhere_included 1
    own_or_partly_own 1
    total_people 1
    total_stated 1
  end
end
