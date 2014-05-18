class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :non_partnered
      t.integer :not_stated
      t.integer :partnered
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
