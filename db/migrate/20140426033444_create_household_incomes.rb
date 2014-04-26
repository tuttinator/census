class CreateHouseholdIncomes < ActiveRecord::Migration
  def change
    create_table :household_incomes do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :twenty_thousand_or_less
      t.integer :twenty_to_thirty_thousand
      t.integer :thirty_to_fifty_thousand
      t.integer :fifty_to_seventy_thousand
      t.integer :seventy_to_one_hundred_thousand
      t.integer :one_hundred_thousand_or_more
      t.integer :not_stated
      t.integer :median
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
