class CreateLandTypes < ActiveRecord::Migration
  def change
    create_table :land_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
