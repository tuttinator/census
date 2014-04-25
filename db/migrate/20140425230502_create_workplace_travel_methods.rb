class CreateWorkplaceTravelMethods < ActiveRecord::Migration
  def change
    create_table :workplace_travel_methods do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :bicycle
      t.integer :drove_company_car
      t.integer :drove_private_car
      t.integer :motor_cycle
      t.integer :passenger
      t.integer :public_bus
      t.integer :train
      t.integer :walked_or_jogged
      t.integer :at_home
      t.integer :did_not_go
      t.integer :other
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
