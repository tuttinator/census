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
