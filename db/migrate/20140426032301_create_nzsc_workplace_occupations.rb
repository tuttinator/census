class CreateNzscWorkplaceOccupations < ActiveRecord::Migration
  def change
    create_table :nzsc_workplace_occupations do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :agriculture_and_fishery_workers
      t.integer :clerks
      t.integer :elementary_occupations
      t.integer :legislators_admins_and_managers
      t.integer :plant_and_machine_operators
      t.integer :professionals
      t.integer :service_and_sales_workers
      t.integer :technicians_and_associate_professionals
      t.integer :total
      t.integer :trades_workers

      t.timestamps
    end
  end
end
