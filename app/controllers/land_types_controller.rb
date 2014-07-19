class LandTypesController < ApplicationController
  respond_to :json

  def index
    respond_with LandType.includes(:meshblocks).all
  end

  def show
    respond_with LandType.find(params[:id])
  end

end
