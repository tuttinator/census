require 'spec_helper'

describe MeshblocksController do

  let(:meshblock) { create :meshblock }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: meshblock.id, format: :json
      expect(response).to be_successful
    end

  end

end
