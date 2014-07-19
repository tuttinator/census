require 'spec_helper'

describe TerritorialAuthoritiesController do

  let(:territorial_authority) { create :territorial_authority }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: territorial_authority.id, format: :json
      expect(response).to be_successful
    end

  end

end
