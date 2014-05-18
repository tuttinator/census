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

require 'spec_helper'

describe LandlordSector do
  pending "add some examples to (or delete) #{__FILE__}"
end
