class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :households

      t.timestamps
    end
  end
end
