class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :married
      t.integer :never_married
      t.integer :not_elsewhere_included
      t.integer :separated
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
