class CreateWeeklyRents < ActiveRecord::Migration
  def change
    create_table :weekly_rents do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :median
      t.integer :not_elsewhere_included
      t.integer :under_one_hundred
      t.integer :one_hundred_to_one_forty_nine
      t.integer :one_fifty_to_one_ninety_nine
      t.integer :two_hundred_to_two_forty_nine
      t.integer :two_fifty_to_two_ninety_nine
      t.integer :three_hundred_to_three_forty_nine
      t.integer :three_fifty_and_over
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
