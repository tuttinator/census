class CreateTerritorialAuthorities < ActiveRecord::Migration
  def change
    create_table :territorial_authorities do |t|
      t.string :name

      t.timestamps
    end
  end
end
