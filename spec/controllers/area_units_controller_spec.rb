require 'spec_helper'

describe AreaUnitsController do

  let(:area_unit) { create :area_unit }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: area_unit.id, format: :json
      expect(response).to be_successful
    end

  end

end
