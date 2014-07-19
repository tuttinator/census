require 'spec_helper'

describe RegionalCouncilsController do

  let(:regional_council) { create :regional_council }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: regional_council.id, format: :json
      expect(response).to be_successful
    end

  end

end
