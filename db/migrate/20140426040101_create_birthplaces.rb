class CreateBirthplaces < ActiveRecord::Migration
  def change
    create_table :birthplaces do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :new_zealand
      t.integer :overseas
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
