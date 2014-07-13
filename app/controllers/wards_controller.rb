class WardsController < ApplicationController
  respond_to :json

  def index
    respond_with Ward.includes(:meshblocks).all
  end

  def show
    respond_with Ward.find(params[:id])
  end

end
