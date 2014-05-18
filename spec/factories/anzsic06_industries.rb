# == Schema Information
#
# Table name: anzsic06_industries
#
#  id                                        :integer          not null, primary key
#  meshblock_id                              :integer
#  census_year_id                            :integer
#  accomodation_and_food                     :integer
#  admin_and_support                         :integer
#  agriculture_forestry_and_fishing          :integer
#  arts_and_recreation                       :integer
#  construction                              :integer
#  education_and_training                    :integer
#  electricity_gas_water_and_waster_services :integer
#  financial_and_insurance                   :integer
#  health_care_and_social_assistance         :integer
#  information_media_and_telecoms            :integer
#  manufacturing                             :integer
#  mining                                    :integer
#  professional_scientific_and_technical     :integer
#  public_admin_and_safety                   :integer
#  rental_hiring_and_real_estate             :integer
#  retail                                    :integer
#  transport_postal_and_warehousing          :integer
#  wholesale                                 :integer
#  other                                     :integer
#  not_elsewhere_included                    :integer
#  total                                     :integer
#  total_stated                              :integer
#  created_at                                :datetime
#  updated_at                                :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anzsic06_industry do
    meshblock_id 1
    census_year_id 1
    accomodation_and_food 1
    admin_and_support 1
    agriculture_forestry_and_fishing 1
    arts_and_recreation 1
    construction 1
    education_and_training 1
    electricity_gas_water_and_waster_services 1
    financial_and_insurance 1
    health_care_and_social_assistance 1
    information_media_and_telecoms 1
    manufacturing 1
    mining 1
    professional_scientific_and_technical 1
    public_admin_and_safety 1
    rental_hiring_and_real_estate 1
    retail 1
    transport_postal_and_warehousing 1
    wholesale 1
    other 1
    not_elsewhere_included 1
    total 1
    total_stated 1
  end
end
