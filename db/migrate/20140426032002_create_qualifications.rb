class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :doctortates
      t.integer :level_five_or_six
      t.integer :level_four
      t.integer :level_one
      t.integer :level_seven
      t.integer :level_three
      t.integer :level_two
      t.integer :masters
      t.integer :no_qualification
      t.integer :not_elsewhere_included
      t.integer :overseas_secondary
      t.integer :postgraduate
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
