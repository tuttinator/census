class CreateFiveYearAgeGroups < ActiveRecord::Migration
  def change
    create_table :five_year_age_groups do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :zero_to_four_year_olds
      t.integer :five_to_nine_year_olds
      t.integer :ten_to_fourteen_year_olds
      t.integer :fifteen_to_nineteen_year_olds
      t.integer :twenty_to_twenty_four_year_olds
      t.integer :twenty_five_to_twenty_nine_year_olds
      t.integer :thirty_to_thirty_four_year_olds
      t.integer :thirty_five_to_thirty_nine_year_olds
      t.integer :forty_to_forty_four_year_olds
      t.integer :forty_five_to_forty_nine_year_olds
      t.integer :fifty_to_fifty_four_year_olds
      t.integer :fifty_five_to_fifty_nine_year_olds
      t.integer :sixty_to_sixty_four_year_olds
      t.integer :sixty_five_years_and_older
      t.integer :median
      t.integer :total

      t.timestamps
    end
  end
end
