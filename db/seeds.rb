# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# Step 1
# check if /tmp/1_meshblock_geometries.csv exists
# if it does not then download https://s3-ap-southeast-2.amazonaws.com/censusnz/1_meshblock_geometries.csv
#

puts "Creating Area Units"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '2_area_units.csv'), headers: true) do |attrs|
  AreaUnit.create(id: attrs["id"].to_i, name: attrs["name"])
end


puts "Creating Urban Areas"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '3_urban_areas.csv'), headers: true) do |attrs|
  UrbanArea.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Territorial Authorities"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '4_territorial_authorities.csv'), headers: true) do |attrs|
  TerritorialAuthority.create(id: attrs["id"].to_i, name: attrs["name"])
end


puts "Creating Wards"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '5_wards.csv'), headers: true) do |attrs|
  Ward.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Community Boards"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '6_community_boards.csv'), headers: true) do |attrs|
  CommunityBoard.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Territorial Authority Subdivisions"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '7_territorial_authority_subdivisions.csv'), headers: true) do |attrs|
  TerritorialAuthoritySubdivision.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Regional Councils"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '8_regional_councils.csv'), headers: true) do |attrs|
  RegionalCouncil.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Regional Council Constituencies"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '9_regional_council_constituencies.csv'), headers: true) do |attrs|
  RegionalCouncilConstituency.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Regional Council Maori Constituencies"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '10_regional_council_maori_constituencies.csv'), headers: true) do |attrs|
  RegionalCouncilMaoriConstituency.create(id: attrs["id"].to_i, name: attrs["name"])
end

puts "Creating Land Types"

CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', '11_land_types.csv'), headers: true) do |attrs|
  LandType.create(id: attrs["id"].to_i, name: attrs["name"])
end


