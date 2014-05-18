# == Schema Information
#
# Table name: household_income_sources
#
#  id                          :integer          not null, primary key
#  meshblock_id                :integer
#  census_year_id              :integer
#  domestic_purposes           :integer
#  interest                    :integer
#  invalids                    :integer
#  no_source                   :integer
#  not_stated                  :integer
#  nz_super                    :integer
#  other                       :integer
#  other_government_benefits   :integer
#  other_super                 :integer
#  self_employment_or_business :integer
#  sickness                    :integer
#  student_allowance           :integer
#  total                       :integer
#  total_households_stated     :integer
#  unemployment                :integer
#  wages                       :integer
#  work_accident_insurer       :integer
#  created_at                  :datetime
#  updated_at                  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household_income_source do
    meshblock_id 1
    census_year_id 1
    domestic_purposes 1
    interest 1
    invalids 1
    no_source 1
    not_stated 1
    nz_super 1
    other 1
    other_government_benefits 1
    other_super 1
    self_employment_or_business 1
    sickness 1
    student_allowance 1
    total 1
    total_households_stated 1
    unemployment 1
    wages 1
    work_accident_insurer 1
  end
end
