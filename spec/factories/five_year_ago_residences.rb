# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :five_year_ago_residence do
    meshblock_id 1
    census_year_id 1
    not_elsewhere_included 1
    no_abode 1
    not_born 1
    not_elsewhere_included 1
    overseas 1
    same 1
    total 1
    total_stated 1
  end
end
