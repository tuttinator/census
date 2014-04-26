class CreateReligions < ActiveRecord::Migration
  def change
    create_table :religions do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :buddhist
      t.integer :christian
      t.integer :hindu
      t.integer :jewish
      t.integer :maori_christian
      t.integer :muslim
      t.integer :spiritual
      t.integer :other
      t.integer :no_religion
      t.integer :object
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
