# == Schema Information
#
# Table name: anzsco_workplace_occupations
#
#  id                              :integer          not null, primary key
#  meshblock_id                    :integer
#  census_year_id                  :integer
#  clerical_and_admin              :integer
#  community_and_personal_service  :integer
#  labourers                       :integer
#  machinery_operators_and_drivers :integer
#  managers                        :integer
#  not_elsewhere_included          :integer
#  professionals                   :integer
#  sales                           :integer
#  technicians_and_trade_workers   :integer
#  total                           :integer
#  total_stated                    :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#

require 'spec_helper'

describe AnzscoWorkplaceOccupation do
  pending "add some examples to (or delete) #{__FILE__}"
end
