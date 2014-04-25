class CreateWorkHours < ActiveRecord::Migration
  def change
    create_table :work_hours do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :fifty_to_fiftynine
      t.integer :forty_to_fortynine
      t.integer :not_elsewhere_included
      t.integer :one_to_nine
      t.integer :sixty_or_more
      t.integer :ten_to_nineteen
      t.integer :thirty_to_thirtynine
      t.integer :total
      t.integer :total_stated
      t.string :twenty_to_twentynine

      t.timestamps
    end
  end
end
