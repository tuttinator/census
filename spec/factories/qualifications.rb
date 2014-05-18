# == Schema Information
#
# Table name: qualifications
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  doctortates            :integer
#  level_five_or_six      :integer
#  level_four             :integer
#  level_one              :integer
#  level_seven            :integer
#  level_three            :integer
#  level_two              :integer
#  masters                :integer
#  no_qualification       :integer
#  not_elsewhere_included :integer
#  overseas_secondary     :integer
#  postgraduate           :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :qualification do
    meshblock_id 1
    census_year_id 1
    doctortates 1
    level_five_or_six 1
    level_four 1
    level_one 1
    level_seven 1
    level_three 1
    level_two 1
    masters 1
    no_qualification 1
    not_elsewhere_included 1
    overseas_secondary 1
    postgraduate 1
    total 1
    total_stated 1
  end
end
