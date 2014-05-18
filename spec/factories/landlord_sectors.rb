# == Schema Information
#
# Table name: landlord_sectors
#
#  id                               :integer          not null, primary key
#  meshblock_id                     :integer
#  census_year_id                   :integer
#  housing_new_zealand              :integer
#  local_authority_or_city_council  :integer
#  private_person_trust_or_business :integer
#  stated_owned                     :integer
#  not_elsewhere_included           :integer
#  total                            :integer
#  total_stated                     :integer
#  created_at                       :datetime
#  updated_at                       :datetime
#

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
