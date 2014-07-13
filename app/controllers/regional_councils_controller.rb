class RegionalCouncilsController < ApplicationController
  respond_to :json

  def index
    respond_with RegionalCouncil.includes(:meshblocks).all
  end

  def show
    respond_with RegionalCouncil.find(params[:id])
  end

end
