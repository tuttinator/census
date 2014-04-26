class CreateHouseholdCompositions < ActiveRecord::Migration
  def change
    create_table :household_compositions do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :one_person
      t.integer :one_family
      t.integer :two_family
      t.integer :three_family
      t.integer :other_multi
      t.integer :total
      t.integer :total_stated
      t.integer :unidentifiable

      t.timestamps
    end
  end
end
