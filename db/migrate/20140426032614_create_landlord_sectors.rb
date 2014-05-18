class CreateLandlordSectors < ActiveRecord::Migration
  def change
    create_table :landlord_sectors do |t|
      t.integer :meshblock_id
      t.integer :census_year_id
      t.integer :housing_new_zealand
      t.integer :local_authority_or_city_council
      t.integer :private_person_trust_or_business
      t.integer :stated_owned
      t.integer :not_elsewhere_included
      t.integer :total
      t.integer :total_stated

      t.timestamps
    end
  end
end
