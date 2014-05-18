class CreateHouseholdTenures < ActiveRecord::Migration
  def change
    create_table :household_tenures do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :family_trust
      t.integer :not_owned
      t.integer :owned
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
