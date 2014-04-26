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
