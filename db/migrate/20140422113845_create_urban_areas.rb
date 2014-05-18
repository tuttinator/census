class CreateUrbanAreas < ActiveRecord::Migration
  def change
    create_table :urban_areas do |t|
      t.string :name

      t.timestamps
    end
  end
end
