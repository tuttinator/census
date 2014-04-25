class CreateMeshblocks < ActiveRecord::Migration
  def change
    create_table :meshblocks do |t|
      t.integer :area_unit_id
      t.integer :urban_authority_id
      t.integer :territorial_authority_id
      t.integer :ward_id
      t.integer :community_board_id
      t.integer :territorial_authority_subdivision_id
      t.integer :regional_council_id
      t.integer :regional_council_constituency_id
      t.integer :regional_council_maori_constituency_id
      t.integer :land_type_id
      t.decimal :shape_length
      t.decimal :shape_area
      t.multi_polygon :shape, srid: 3857
    end
  end
end
