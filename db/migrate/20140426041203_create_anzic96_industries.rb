class CreateAnzic96Industries < ActiveRecord::Migration
  def change
    create_table :anzic96_industries do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :accommodation_cafes_and_restaurants
      t.integer :agriculture_forestry_and_fishing
      t.integer :communication_services
      t.integer :construction
      t.integer :culture_and_recreational_services
      t.integer :education
      t.integer :electricity_gas_and_water_supply
      t.integer :finance_and_insurance
      t.integer :government_admin_and_defence
      t.integer :health_and_community_services
      t.integer :manufacturing
      t.integer :mining
      t.integer :not_elsewhere_included
      t.integer :personal_and_other_services
      t.integer :property_and_business_services
      t.integer :retail_trade
      t.integer :total
      t.integer :total_stated
      t.integer :transport_and_storage
      t.integer :wholesale_trade

      t.timestamps
    end
  end
end
