# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :household, :class => 'Households' do
    meshblock_id 1
    census_year_id 1
    households 1
  end
end
