class CreateDescendants < ActiveRecord::Migration
  def change
    create_table :descendants do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :dont_know
      t.integer :maori
      t.integer :no_maori
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
