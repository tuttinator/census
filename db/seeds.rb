require 'csv'

# Step 1
# check if /tmp/1_meshblock_geometries.csv exists
# if it does not then download https://s3-ap-southeast-2.amazonaws.com/censusnz/1_meshblock_geometries.csv
#

['area_units', 'urban_areas', 'territorial_authorities', 'wards', 'community_boards',
'territorial_authority_subdivisions', 'regional_councils', 'regional_council_constituencies',
'regional_council_maori_constituencies', 'land_types'].each do |data_type|

  # Turns a string like 'area_units' into a constant for a class like AreaUnit
  model = data_type.singularize.constantize

  # Can be run many times, will only parse the CSV is the model is empty
  if model.count == 0
    CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', "#{data_type}.csv"), headers: true) do |attrs|
      model.create(id: attrs['id'].to_i, name: attrs['name'])
    end
  end

end
