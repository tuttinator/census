class CreateAnzsic06Industries < ActiveRecord::Migration
  def change
    create_table :anzsic06_industries do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :accomodation_and_food
      t.integer :admin_and_support
      t.integer :agriculture_forestry_and_fishing
      t.integer :arts_and_recreation
      t.integer :construction
      t.integer :education_and_training
      t.integer :electricity_gas_water_and_waster_services
      t.integer :financial_and_insurance
      t.integer :health_care_and_social_assistance
      t.integer :information_media_and_telecoms
      t.integer :manufacturing
      t.integer :mining
      t.integer :professional_scientific_and_technical
      t.integer :public_admin_and_safety
      t.integer :rental_hiring_and_real_estate
      t.integer :retail
      t.integer :transport_postal_and_warehousing
      t.integer :wholesale
      t.integer :other
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
