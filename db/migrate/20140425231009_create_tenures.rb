class CreateTenures < ActiveRecord::Migration
  def change
    create_table :tenures do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :do_not_own
      t.integer :not_elsewhere_included
      t.integer :own_or_partly_own
      t.integer :total_people
      t.integer :total_stated

      t.timestamps
    end
  end
end
