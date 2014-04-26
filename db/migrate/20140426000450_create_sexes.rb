class CreateSexes < ActiveRecord::Migration
  def change
    create_table :sexes do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :females
      t.integer :males
      t.integer :total

      t.timestamps
    end
  end
end
