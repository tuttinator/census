class CreateRegionalCouncils < ActiveRecord::Migration
  def change
    create_table :regional_councils do |t|
      t.string :name

      t.timestamps
    end
  end
end
