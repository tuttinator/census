# == Schema Information
#
# Table name: children
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  none                   :integer
#  one                    :integer
#  two                    :integer
#  three                  :integer
#  four                   :integer
#  five                   :integer
#  six_or_more            :integer
#  object                 :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :child, :class => 'Children' do
    meshblock_id 1
    census_year_id 1
    none 1
    one 1
    two 1
    three 1
    four 1
    five 1
    six_or_more 1
    object 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
