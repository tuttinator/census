class CreateAreaUnits < ActiveRecord::Migration
  def change
    create_table :area_units do |t|
      t.string :name

      t.timestamps
    end
  end
end
