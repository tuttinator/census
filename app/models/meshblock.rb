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
#  shape                                  :spatial          geometry, 0
#

class Meshblock < ActiveRecord::Base

  belongs_to :area_unit
  belongs_to :urban_area
  belongs_to :ward
  belongs_to :community_board

  validates :shape, presence: true

  def as_json(options = {})
    {
      id: id,
      area_unit: area_unit.name,
      area_unit_id: area_unit_id,
      urban_authority: urban_area.name,
      urban_authority_id: urban_area_id,
      ward: ward.name,
      ward_id: ward_id,
      community_board: community_board.name,
      community_board_id: community_board_id,
      shape: RGeo::GeoJSON.encode(shape)
    }
  end
end
