# == Schema Information
#
# Table name: household_tenures
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  family_trust           :integer
#  not_owned              :integer
#  owned                  :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class HouseholdTenure < ActiveRecord::Base
end
