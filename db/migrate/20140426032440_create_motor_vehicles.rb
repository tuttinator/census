class CreateMotorVehicles < ActiveRecord::Migration
  def change
    create_table :motor_vehicles do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :one
      t.integer :two
      t.integer :three_or_more
      t.integer :none
      t.integer :not_elsewhere_included
      t.integer :total

      t.timestamps
    end
  end
end
