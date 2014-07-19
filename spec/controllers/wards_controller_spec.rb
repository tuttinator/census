require 'spec_helper'

describe WardsController do

  let(:ward) { create :ward }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: ward.id, format: :json
      expect(response).to be_successful
    end

  end

end
