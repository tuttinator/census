require 'spec_helper'

describe RegionalCouncilConstituenciesController do

  let(:regional_council_constituency) { create :regional_council_constituency }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: regional_council_constituency.id, format: :json
      expect(response).to be_successful
    end

  end

end