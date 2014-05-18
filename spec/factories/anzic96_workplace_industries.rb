# == Schema Information
#
# Table name: anzic96_workplace_industries
#
#  id                                  :integer          not null, primary key
#  meshblock_id                        :integer
#  census_year_id                      :integer
#  accommodation_cafes_and_restaurants :integer
#  agriculture_forestry_and_fishing    :integer
#  communication_services              :integer
#  construction                        :integer
#  culture_and_recreational_services   :integer
#  education                           :integer
#  electricity_gas_and_water_supply    :integer
#  finance_and_insurance               :integer
#  government_admin_and_defence        :integer
#  health_and_community_services       :integer
#  manufacturing                       :integer
#  mining                              :integer
#  not_elsewhere_included              :integer
#  personal_and_other_services         :integer
#  property_and_business_services      :integer
#  retail_trade                        :integer
#  total                               :integer
#  total_stated                        :integer
#  transport_and_storage               :integer
#  wholesale_trade                     :integer
#  created_at                          :datetime
#  updated_at                          :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anzic96_workplace_industry do
    meshblock_id 1
    census_year_id 1
    accommodation_cafes_and_restaurants 1
    agriculture_forestry_and_fishing 1
    communication_services 1
    construction 1
    culture_and_recreational_services 1
    education 1
    electricity_gas_and_water_supply 1
    finance_and_insurance 1
    government_admin_and_defence 1
    health_and_community_services 1
    manufacturing 1
    mining 1
    not_elsewhere_included 1
    personal_and_other_services 1
    property_and_business_services 1
    retail_trade 1
    total 1
    total_stated 1
    transport_and_storage 1
    wholesale_trade 1
  end
end
