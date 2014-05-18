class CreateResidenceYears < ActiveRecord::Migration
  def change
    create_table :residence_years do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :thirty_years_or_more
      t.integer :fifteen_to_twenty_nine_years
      t.integer :five_to_nine_years
      t.integer :not_elsewhere_included
      t.integer :one_to_four_years
      t.integer :ten_to_fourteen_years
      t.integer :total
      t.integer :total_people
      t.integer :zero_years

      t.timestamps
    end
  end
end
