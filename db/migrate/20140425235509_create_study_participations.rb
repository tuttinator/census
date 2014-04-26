class CreateStudyParticipations < ActiveRecord::Migration
  def change
    create_table :study_participations do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :full_and_part_time
      t.integer :full_time
      t.integer :not_stated
      t.integer :not_studying
      t.integer :part_time
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
