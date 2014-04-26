class CreateFamilyTypes < ActiveRecord::Migration
  def change
    create_table :family_types do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :couple_with_children
      t.integer :couple_without_children
      t.integer :one_parent
      t.integer :total

      t.timestamps
    end
  end
end
