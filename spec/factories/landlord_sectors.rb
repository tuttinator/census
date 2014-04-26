# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :landlord_sector do
    meshblock_id 1
    census_year_id 1
    housing_new_zealand 1
    local_authority_or_city_council 1
    private_person_trust_or_business 1
    stated_owned 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
