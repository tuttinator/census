class CreateRegionalCouncilConstituencies < ActiveRecord::Migration
  def change
    create_table :regional_council_constituencies do |t|
      t.string :name

      t.timestamps
    end
  end
end