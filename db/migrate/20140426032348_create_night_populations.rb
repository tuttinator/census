class CreateNightPopulations < ActiveRecord::Migration
  def change
    create_table :night_populations do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :residents

      t.timestamps
    end
  end
end
