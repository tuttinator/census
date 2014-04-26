class CreateBroadAgeGroups < ActiveRecord::Migration
  def change
    create_table :broad_age_groups do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :under_fifteen_years
      t.integer :fifteen_to_sixtyfour_year_olds
      t.integer :sixtyfive_years_and_older
      t.integer :total_people

      t.timestamps
    end
  end
end
