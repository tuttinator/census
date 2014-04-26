class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :families

      t.timestamps
    end
  end
end
