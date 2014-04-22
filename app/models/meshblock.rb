# == Schema Information
#
# Table name: meshblocks
#
#  id                                     :integer          not null, primary key
#  area_unit_id                           :integer
#  urban_authority_id                     :integer
#  territorial_authority_id               :integer
#  ward_id                                :integer
#  community_board_id                     :integer
#  territorial_authority_subdivision_id   :integer
#  regional_council_id                    :integer
#  regional_council_constituency_id       :integer
#  regional_council_maori_constituency_id :integer
#  land_type_id                           :integer
#  shape_length                           :decimal(, )
#  shape_area                             :decimal(, )
#  shape                                  :spatial          polygon, 0
#

class Meshblock < ActiveRecord::Base
end
