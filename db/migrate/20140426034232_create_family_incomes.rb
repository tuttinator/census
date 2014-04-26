class CreateFamilyIncomes < ActiveRecord::Migration
  def change
    create_table :family_incomes do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :not_stated
      t.integer :twenty_thousand_or_less
      t.integer :twenty_to_thirty_thousand
      t.integer :thirty_to_fifty_thousand
      t.integer :fifty_to_seventy_thousand
      t.integer :seventy_to_one_hundred_thousand
      t.integer :one_hundred_thousand_or_more
      t.integer :median
      t.integer :total_stated
      t.integer :total

      t.timestamps
    end
  end
end
