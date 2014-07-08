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
        puts "Importing #{model}..."

          CSV.foreach(Rails.root.join('db', 'seeds', 'meshblocks', "#{data_type}.csv"), headers: true) do |attrs|
            model.create(id: attrs['id'].to_i, name: attrs['name'])
          end
        end

      end

      if Meshblock.count.zero?

        # Make a tmp folder in the Rails root if it does not exist
        # tmp is ignored by the .gitignore file, so not checked in
        # to git
        meshblock_geojson_path = Rails.root.join 'vendor', 'assets', 'bower_components', 'nz_meshblock_geojson', 'geojson'


        fail 'Please run rake bower:install' unless Dir.exists? meshblock_geojson_path


        Dir["#{meshblock_geojson_path}/*.geojson"].each do |file|

          geojson = File.read(file)
          feature = JSON.parse(geojson)['features'].first
          attrs = feature['properties']
          shape = feature['geometry']

          puts "Processing Meshblock #{attrs['MB2014']}..."
          begin
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
                             shape:                                   RGeo::GeoJSON.decode(shape, json_parser: :json))
          rescue Exception => e
            puts "Encountered an Exception with #{attrs['MB2014']}"
            puts e
          end
        end
      end
    end
  end
end
