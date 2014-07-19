require 'spec_helper'

describe CommunityBoardsController do

  let(:community_board) { create :community_board }

  context '#index' do

    it 'responds successfully' do
      get :index, format: :json
      expect(response).to be_successful
    end

  end

  context '#show' do

    it 'responds successfully' do
      get :show, id: community_board.id, format: :json
      expect(response).to be_successful
    end

  end

end
