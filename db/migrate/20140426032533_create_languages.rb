class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :english
      t.integer :maori
      t.integer :samoan
      t.integer :sign
      t.integer :too_young
      t.integer :not_elsewhere_included
      t.integer :other
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
