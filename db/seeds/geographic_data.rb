require 'csv'
require Rails.root.join 'lib', 'downloader'

module Seeds
  module GeographicData

    def self.load!
      ['area_units', 'urban_areas', 'territorial_authorities', 'wards', 'community_boards',
      'territorial_authority_subdivisions', 'regional_councils', 'regional_council_constituencies',
      'regional_council_maori_constituencies', 'land_types'].each do |data_type|

        # Turns a string like 'area_units' into a constant for a class like AreaUnit
        model = data_type.classify.constantize

        # Can be run many times, will only parse the CSV is the model is empty
        if model.count == 0
        puts "Importing #{data_type}..."

          CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', "#{data_type}.csv"), headers: true) do |attrs|
            model.create(id: attrs['id'].to_i, name: attrs['name'])
          end
        end

      end

      if Meshblock.count == 0

        # Make a tmp folder in the Rails root if it does not exist
        # tmp is ignored by the .gitignore file, so not checked in
        # to git
        meshblock_geojson_path = Rails.root.join 'vendor', 'assets', 'bower_components', 'nz_meshblock_geojson'


        fail 'Please run rake bower:install' unless Dir.exists? meshblock_geojson_path

        # Sample schema
        # features": [
        # { "type": "Feature", "properties": { "MB2014": "0000100", "AU2014": "500206", "AU2014_NAM": "North Cape", "UA2014": "502", "UA2014_NAM": "Rural (Incl.some Off Shore Islands)", "TA2014": "001", "TA2014_NAM": "Far North District", "WARD2014": "00101", "WARD2014_N": "Te Hiku Ward", "CB2014": "00101", "CB2014_NAM": "Te Hiku Community", "TASUB2014": "00101", "TASUB2014_": "North Cape Subdivision", "REGC2014": "01", "REGC2014_N": "Northland Region", "CON2014": "0101", "CON2014_NA": "Te Hiku Constituency", "MCON2014": "0199", "MCON2014_N": "Area Outside Maori Constituency", "GED2007": "034", "GED2007_NA": "Northland", "MED2007": "5", "MED2007_NA": "Te Tai Tokerau", "LAND2014": "12", "LAND20014_": "Mainland", "SHAPE_Leng": 85429.084216, "SHAPE_Area": 157404410.546000 }, "geometry": { "type": "MultiPolygon", "coordinates"


        Dir["#{meshblock_geojson_path}/*.geojson"].each do |file|
          attrs = JSON.parse(File.open(file).read)['features']['properties']
          Meshblock.create(id:                                      attrs['MB2014'].to_i,
                           area_unit_id:                            attrs['AU2014'].to_i,
                           urban_authority_id:                      attrs['UA2014'].to_i,
                           territorial_authority_id:                attrs['TA2014'].to_i,
                           ward_id:                                 attrs['WARD2014'].to_i,
                           community_board_id:                      attrs['CB2014'].to_i,
                           territorial_authority_subdivision_id:    attrs['TASUB2014'].to_i,
                           regional_council_id:                     attrs['REGC2014'].to_i,
                           regional_council_constituency_id:        attrs['CON2014'].to_i,
                           regional_council_maori_constituency_id:  attrs['MCON2014'].to_i,
                           shape_length:                            attrs['SHAPE_Leng'],
                           shape_area:                              attrs['SHAPE_Area'],
                           shape:                                   RGeo::GeoJSON.decode(attrs['geometry'], json_parser: :json))
        end
      end
    end
  end
end
