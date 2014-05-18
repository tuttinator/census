class CreateSmokers < ActiveRecord::Migration
  def change
    create_table :smokers do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :ex
      t.integer :never
      t.integer :not_elsewhere_included
      t.integer :regular
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
