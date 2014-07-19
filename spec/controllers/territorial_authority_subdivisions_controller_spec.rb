require 'spec_helper'

describe TerritorialAuthoritySubdivisionsController do

  let(:territorial_authority_subdivision) { create :territorial_authority_subdivision }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: territorial_authority_subdivision.id, format: :json
      expect(response).to be_successful
    end

  end

end
