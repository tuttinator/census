class CreateEthnicities < ActiveRecord::Migration
  def change
    create_table :ethnicities do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :asians
      t.integer :europeans
      t.integer :maoris
      t.integer :melaas
      t.integer :not_elsewhere_included
      t.integer :pasifikas
      t.integer :others
      t.integer :total_stated
      t.integer :total

      t.timestamps
    end
  end
end
