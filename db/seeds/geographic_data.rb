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
        FileUtils.mkdir_p Rails.root.join 'tmp'

        meshblock_csv_path = Rails.root.join 'tmp', 'meshblock_geometries.csv'

        unless File.exists? meshblock_csv_path
          print 'Are you sure you want to download the meshblock geometries CSV (453mb)? (y/n) '
          answer = STDIN.gets
          exit 1 unless answer[0].downcase == 'y'

          Downloader.fetch('http://s3-ap-southeast-2.amazonaws.com/censusnz/1_meshblock_geometries.csv', to: meshblock_csv_path)

          puts 'Download complete'
        end

        puts 'Importing meshblocks (this may take some time)...'

        CSV.foreach(meshblock_csv_path, headers: true) do |attrs|
          Meshblock.create(id:                                      attrs['id'],
                           area_unit_id:                            attrs['area_unit_id'],
                           urban_authority_id:                      attrs['urban_authority_id'],
                           territorial_authority_id:                attrs['territorial_authority_id'],
                           ward_id:                                 attrs['ward_id'],
                           community_board_id:                      attrs['community_board_id'],
                           territorial_authority_subdivision_id:    attrs['territorial_authority_subdivision_id'],
                           regional_council_id:                     attrs['regional_council_id'],
                           regional_council_constituency_id:        attrs['regional_council_constituency_id'],
                           regional_council_maori_constituency_id:  attrs['regional_council_maori_constituency_id'],
                           land_type_id:                            attrs['land_type_id'],
                           shape_length:                            attrs['shape_length'],
                           shape_area:                              attrs['shape_area'],
                           shape:                                   attrs['shape'])
        end
      end
    end
  end
end
