class CreateEmploymentStatuses < ActiveRecord::Migration
  def change
    create_table :employment_statuses do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :employer
      t.integer :paid_employee
      t.integer :self_employed_without_employee
      t.integer :unpaid_family_worker
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
