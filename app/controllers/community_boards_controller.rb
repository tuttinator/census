class CommunityBoardsController < ApplicationController
  respond_to :json

  def index
    respond_with CommunityBoard.includes(:meshblocks).all
  end

  def show
    respond_with CommunityBoard.find(params[:id])
  end

end
