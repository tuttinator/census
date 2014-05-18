class CreateUsualResidents < ActiveRecord::Migration
  def change
    create_table :usual_residents do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :one
      t.integer :two
      t.integer :three
      t.integer :four
      t.integer :five
      t.integer :six
      t.integer :seven
      t.integer :eight
      t.integer :mean
      t.integer :total

      t.timestamps
    end
  end
end
