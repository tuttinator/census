class CreateDwellings < ActiveRecord::Migration
  def change
    create_table :dwellings do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :separate_houses
      t.integer :two_or_more_flats
      t.integer :not_further_defined
      t.integer :other_types
      t.integer :total

      t.timestamps
    end
  end
end
