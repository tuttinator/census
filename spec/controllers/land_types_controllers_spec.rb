require 'spec_helper'

describe LandTypesController do

  let(:land_type) { create :land_type }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: land_type.id, format: :json
      expect(response).to be_successful
    end

  end

end
