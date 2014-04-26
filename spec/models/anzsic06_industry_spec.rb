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

require 'spec_helper'

describe Anzsic06Industry do
  pending "add some examples to (or delete) #{__FILE__}"
end
