class CreateLabourStatuses < ActiveRecord::Migration
  def change
    create_table :labour_statuses do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :full_time
      t.integer :part_time
      t.integer :unemployed
      t.integer :not_in_the_labour_force
      t.integer :status_unidentifiable
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
