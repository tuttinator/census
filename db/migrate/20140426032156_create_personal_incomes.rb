class CreatePersonalIncomes < ActiveRecord::Migration
  def change
    create_table :personal_incomes do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :five_thousand_or_less
      t.integer :five_to_ten_thousand
      t.integer :ten_to_twenty_thousand
      t.integer :twenty_to_thirty_thousand
      t.integer :thirty_to_fifty_thousand
      t.integer :fifty_thousand_or_more
      t.integer :median
      t.integer :not_stated
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
