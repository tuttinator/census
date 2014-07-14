class RegionalCouncilMaoriConstituenciesController < ApplicationController
  respond_to :json

  def index
    respond_with RegionalCouncilMaoriConstituency.includes(:meshblocks).all
  end

  def show
    respond_with RegionalCouncilMaoriConstituency.find(params[:id])
  end

end
