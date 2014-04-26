class CreateArrivalYears < ActiveRecord::Migration
  def change
    create_table :arrival_years do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :zero_to_nine_years
      t.integer :ten_to_nineteen_years
      t.integer :twenty_to_twenty_nine_years
      t.integer :thirty_to_thirty_nine_years
      t.integer :forty_to_forty_nine_years
      t.integer :fifty_years_or_more
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
