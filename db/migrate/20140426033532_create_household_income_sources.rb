class CreateHouseholdIncomeSources < ActiveRecord::Migration
  def change
    create_table :household_income_sources do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :domestic_purposes
      t.integer :interest
      t.integer :invalids
      t.integer :no_source
      t.integer :not_stated
      t.integer :nz_super
      t.integer :other
      t.integer :other_government_benefits
      t.integer :other_super
      t.integer :self_employment_or_business
      t.integer :sickness
      t.integer :student_allowance
      t.integer :total
      t.integer :total_households_stated
      t.integer :unemployment
      t.integer :wages
      t.integer :work_accident_insurer

      t.timestamps
    end
  end
end
