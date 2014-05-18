class CreateUnpaidActivities < ActiveRecord::Migration
  def change
    create_table :unpaid_activities do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :household
      t.integer :looking_after_child_not_own_household
      t.integer :looking_after_child_own_household
      t.integer :looking_after_not_own_household_member_who_is_ill_or_disable
      t.integer :looking_after_own_household_member_who_is_ill_or_disabled
      t.integer :none
      t.integer :not_elsewhere_included
      t.integer :voluntary
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
