class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :none
      t.integer :one
      t.integer :two
      t.integer :three
      t.integer :four
      t.integer :five
      t.integer :six_or_more
      t.integer :object
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
