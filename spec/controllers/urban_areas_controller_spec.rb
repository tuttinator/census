require 'spec_helper'

describe UrbanAreasController do

  let(:urban_area) { create :urban_area }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: urban_area.id, format: :json
      expect(response).to be_successful
    end

  end

end
