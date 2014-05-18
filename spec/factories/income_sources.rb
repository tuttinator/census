# == Schema Information
#
# Table name: income_sources
#
#  id                        :integer          not null, primary key
#  meshblock_id              :integer
#  census_year_id            :integer
#  accident_insurer          :integer
#  dividends                 :integer
#  domestic_purposes_benefit :integer
#  invalids_benefit          :integer
#  no_source                 :integer
#  not_stated                :integer
#  other_government_benefits :integer
#  other_sources             :integer
#  other_super               :integer
#  self_employed             :integer
#  sickness_benefit          :integer
#  student_allowance         :integer
#  super_annuation           :integer
#  unemployment_benefit      :integer
#  wages                     :integer
#  total                     :integer
#  total_stated              :integer
#  created_at                :datetime
#  updated_at                :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :income_source do
    meshblock_id 1
    census_year_id 1
    accident_insurer 1
    dividends 1
    domestic_purposes_benefit 1
    invalids_benefit 1
    no_source 1
    not_stated 1
    other_government_benefits 1
    other_sources 1
    other_super 1
    self_employed 1
    sickness_benefit 1
    student_allowance 1
    super_annuation 1
    unemployment_benefit 1
    wages 1
    total 1
    total_stated 1
  end
end
