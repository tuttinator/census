class CreateCensusYears < ActiveRecord::Migration
  def change
    create_table :census_years do |t|
      t.integer :year

      t.timestamps
    end
  end
end
