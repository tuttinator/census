class UrbanAreasController < ApplicationController
  respond_to :json

  def index
    respond_with UrbanArea.includes(:meshblocks).all
  end

  def show
    respond_with UrbanArea.find(params[:id])
  end

end
