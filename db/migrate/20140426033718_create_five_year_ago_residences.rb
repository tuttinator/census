class CreateFiveYearAgoResidences < ActiveRecord::Migration
  def change
    create_table :five_year_ago_residences do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :not_elsewhere_included
      t.integer :no_abode
      t.integer :not_born
      t.integer :not_elsewhere_included
      t.integer :overseas
      t.integer :same
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
