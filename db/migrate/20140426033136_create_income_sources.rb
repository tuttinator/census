class CreateIncomeSources < ActiveRecord::Migration
  def change
    create_table :income_sources do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :accident_insurer
      t.integer :dividends
      t.integer :domestic_purposes_benefit
      t.integer :invalids_benefit
      t.integer :no_source
      t.integer :not_stated
      t.integer :other_government_benefits
      t.integer :other_sources
      t.integer :other_super
      t.integer :self_employed
      t.integer :sickness_benefit
      t.integer :student_allowance
      t.integer :super_annuation
      t.integer :unemployment_benefit
      t.integer :wages
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
