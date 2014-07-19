Rails.application.routes.draw do

  root to: 'home#index'

  [:meshblocks, :area_units, :urban_areas, :territorial_authorities,
   :wards, :community_boards, :territorial_authority_subdivisions,
   :regional_councils, :regional_council_constituencies,
   :regional_council_maori_constituencies, :land_types].each do |unit|

     resources unit, only: [:index, :show], defaults: { format: :json }

   end

end
