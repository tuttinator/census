class CreateWorkHours < ActiveRecord::Migration
  def change
    create_table :work_hours do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :one_to_nine
      t.integer :ten_to_nineteen
      t.integer :twenty_to_twenty_nine
      t.integer :thirty_to_thirty_nine
      t.integer :forty_to_forty_nine
      t.integer :fifty_to_fifty_nine
      t.integer :sixty_or_more
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
