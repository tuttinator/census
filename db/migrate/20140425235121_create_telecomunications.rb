class CreateTelecomunications < ActiveRecord::Migration
  def change
    create_table :telecomunications do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :fax
      t.integer :internet
      t.integer :mobile
      t.integer :no_access
      t.integer :telephone
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
