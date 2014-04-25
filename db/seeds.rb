require Rails.root.join 'db', 'seeds', 'geographic_data'

Seeds::GeographicData.load!
