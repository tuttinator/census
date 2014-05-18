class CreateAnzscoOccupations < ActiveRecord::Migration
  def change
    create_table :anzsco_occupations do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :clerical_and_admin
      t.integer :community_and_personal_service
      t.integer :labourers
      t.integer :machinery_operators_and_drivers
      t.integer :managers
      t.integer :not_elsewhere_included
      t.integer :professionals
      t.integer :sales
      t.integer :technicians_and_trade_workers
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
