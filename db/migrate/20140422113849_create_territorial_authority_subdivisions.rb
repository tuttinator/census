class CreateTerritorialAuthoritySubdivisions < ActiveRecord::Migration
  def change
    create_table :territorial_authority_subdivisions do |t|
      t.string :name

      t.timestamps
    end
  end
end
